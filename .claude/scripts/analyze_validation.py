#!/usr/bin/env python3
"""
Analyze FHIR validation results from validation.json
Usage: python3 analyze_validation.py <validation.json> [previous_validation.json]
"""
import json
import sys
import os
import re
from collections import defaultdict

# Expected errors to filter out (not actionable)
EXPECTED_PATTERNS = [
    # LA codes not in LOINC - we use MII-controlled terminology
    r"Unknown code 'LA\d+(-\d+)?' in the CodeSystem 'http://loinc.org'",
    # German language code validation issues
    r"The System URI could not be determined for the code 'de'",
    r"The value provided \('de'\) was not found in the value set 'All Languages'",
]

def is_expected_error(message):
    """Check if an error matches expected patterns that should be filtered."""
    for pattern in EXPECTED_PATTERNS:
        if re.search(pattern, message):
            return True
    return False

# Mapping of official validator message-id codes to our categories
MESSAGE_ID_TO_CATEGORY = {
    # UUID validation
    'Type_Specific_Checks_DT_UUID_Valid': 'UUID_INVALID',

    # Display name issues
    'Terminology_TX_Confirm_4a': 'WRONG_DISPLAY',
    'Display_Name_for__should_be_one_of__instead_of': 'WRONG_DISPLAY',

    # Slicing issues
    'SLICING_CANNOT_BE_EVALUATED': 'SLICING_DISCRIMINATOR',

    # Required fields / cardinality
    'Validation_VAL_Profile_Minimum': 'REQUIRED_FIELD',
    'Validation_VAL_Profile_Minimum_SLICE': 'REQUIRED_FIELD',

    # Unknown/invalid codes
    'Terminology_TX_NoValid_1': 'UNKNOWN_CODE',
    'Terminology_TX_NoValid_1_CC': 'UNKNOWN_CODE',
    'UNABLE_TO_INFER_CODESYSTEM': 'UNKNOWN_CODE',

    # Specific constraint failures
    'http://hl7.org/fhir/StructureDefinition/CarePlan#cpl-3': 'CPL3_CONSTRAINT',
    'https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure#proc-mii-1': 'PROC_MII_1',
    'http://hl7.org/fhir/StructureDefinition/Quantity#qty-3': 'OTHER_CONSTRAINT',
    'http://hl7.org/fhir/StructureDefinition/Group#grp-1': 'OTHER_CONSTRAINT',
    'http://hl7.org/fhir/StructureDefinition/Organization#org-1': 'OTHER_CONSTRAINT',
    'http://hl7.org/fhir/StructureDefinition/Element#ele-1': 'OTHER_CONSTRAINT',

    # Profile matching
    'Reference_REF_CantMatchChoice': 'PROFILE_MISMATCH',

    # ValueSet validation
    'Terminology_TX_NoValid_16': 'VALUESET_INVALID',

    # Extension issues
    'Extension_EXTP_Context_Wrong_VER': 'EXTENSION_NOT_ALLOWED',
    'Extension_EXT_Url_NotFound': 'EXTENSION_NOT_ALLOWED',
    'Extension_EXT_Type': 'EXTENSION_NOT_ALLOWED',

    # Reference target issues
    'Reference_REF_BadTargetType': 'INVALID_TARGET_TYPE',

    # Profile issues
    'Validation_VAL_Profile_NotAllowed': 'UNRECOGNIZED_PROPERTY',
    'Validation_VAL_Profile_NoSnapshot': 'UNCATEGORIZED',
    'ERROR_GENERATING_SNAPSHOT': 'UNCATEGORIZED',
    'Type_Specific_Checks_DT_URL_Resolve': 'UNCATEGORIZED',
    '_DT_Fixed_Wrong': 'UNCATEGORIZED',
    'Type_Specific_Checks_DT_Primitive_NotEmpty': 'UNCATEGORIZED',
    'Validation_VAL_Profile_Maximum': 'UNCATEGORIZED',
}

def extract_message_id(issue):
    """Extract the validator's message-id from issue extensions."""
    for ext in issue.get('extension', []):
        if ext.get('url', '').endswith('operationoutcome-message-id'):
            return ext.get('valueCode')
    return None

def categorize_error(issue):
    """Categorize error using official message-id codes, fallback to message text."""
    message_id = extract_message_id(issue)

    # Try official message-id first
    if message_id and message_id in MESSAGE_ID_TO_CATEGORY:
        return MESSAGE_ID_TO_CATEGORY[message_id]

    # Fallback to message text parsing for errors without message-id
    message = issue.get('details', {}).get('text', issue.get('diagnostics', ''))
    if not message:
        return 'UNCATEGORIZED'

    # Priority order matters - check most specific patterns first
    if 'UUIDs must be valid and lowercase' in message or ('UUID' in message and 'does not match' in message):
        return 'UUID_INVALID'
    elif 'Wrong Display Name' in message:
        return 'WRONG_DISPLAY'
    elif 'Slicing cannot be evaluated' in message or 'Could not match discriminator' in message:
        return 'SLICING_DISCRIMINATOR'
    elif 'required' in message.lower() or 'minimum cardinality' in message.lower() or 'minimum required' in message.lower():
        return 'REQUIRED_FIELD'
    elif 'Unknown code' in message:
        return 'UNKNOWN_CODE'
    elif 'cpl-3' in message.lower():
        return 'CPL3_CONSTRAINT'
    elif 'proc-mii-1' in message.lower():
        return 'PROC_MII_1'
    elif 'Unable to find a profile match' in message or 'does not match any of the specified profiles' in message.lower():
        return 'PROFILE_MISMATCH'
    elif 'not in the value set' in message.lower() or 'not in the valueset' in message.lower():
        return 'VALUESET_INVALID'
    elif 'extension' in message.lower() and 'not allowed' in message.lower():
        return 'EXTENSION_NOT_ALLOWED'
    elif 'matches more than one slice' in message.lower():
        return 'MULTI_SLICE_MATCH'
    elif 'unrecognized property' in message.lower():
        return 'UNRECOGNIZED_PROPERTY'
    elif 'invalid' in message.lower() and 'target' in message.lower():
        return 'INVALID_TARGET_TYPE'
    elif 'constraint failed' in message.lower():
        return 'OTHER_CONSTRAINT'
    else:
        return 'UNCATEGORIZED'

def extract_errors(filepath, filter_expected=True):
    """Extract all errors from validation.json Bundle."""
    with open(filepath) as f:
        data = json.load(f)

    errors = []
    filtered_count = 0

    for i, entry in enumerate(data.get('entry', [])):
        resource = entry.get('resource', {})

        # Skip non-OperationOutcome entries
        if resource.get('resourceType') != 'OperationOutcome':
            continue

        # Extract filename from operationoutcome-file extension
        current_filename = 'unknown'
        for ext in resource.get('extension', []):
            if ext.get('url', '').endswith('operationoutcome-file'):
                filepath_value = ext.get('valueString', '')
                current_filename = os.path.basename(filepath_value)
                break

        # Process OperationOutcome
        for issue in resource.get('issue', []):
            if issue.get('severity') != 'error':
                continue

            location = issue.get('location', [''])[0] if issue.get('location') else ''
            # Try details.text first, fall back to diagnostics
            message = issue.get('details', {}).get('text', issue.get('diagnostics', ''))
            code = issue.get('code', 'unknown')
            message_id = extract_message_id(issue)

            # Filter out expected errors if requested
            if filter_expected and is_expected_error(message):
                filtered_count += 1
                continue

            category = categorize_error(issue)

            errors.append({
                'filename': current_filename,
                'location': location,
                'message': message,
                'code': code,
                'message_id': message_id,
                'category': category,
                'signature': f'{current_filename}|{location}|{message}'
            })

    return errors, filtered_count

def load_advisor_suppressions(base_path):
    """Load suppression rules from advisor.json if it exists."""
    advisor_path = os.path.join(os.path.dirname(base_path) if base_path != '.' else '.', 'advisor.json')
    if not os.path.exists(advisor_path):
        # Try in parent directory if base_path is in a subdirectory
        advisor_path = os.path.join(os.path.dirname(os.path.dirname(base_path)), 'advisor.json')

    if os.path.exists(advisor_path):
        try:
            with open(advisor_path) as f:
                data = json.load(f)
                return set(data.get('suppress', []))
        except:
            pass
    return set()

def is_suppressed_by_advisor(error, advisor_suppressions):
    """Check if an error would be suppressed by advisor.json rules."""
    if not advisor_suppressions:
        return False

    message_id = error.get('message_id')
    location = error.get('location', '')

    # Check various suppression patterns
    for pattern in advisor_suppressions:
        # Exact message-id match
        if message_id and pattern == message_id:
            return True
        # message-id@location pattern
        if message_id and '@' in pattern:
            msg_part, loc_part = pattern.split('@', 1)
            if message_id == msg_part and loc_part in location:
                return True
        # Constraint URL patterns
        if pattern.startswith('http://') and pattern in (error.get('message', '') or ''):
            return True

    return False

def analyze_validation(current_path, previous_path=None):
    """Analyze validation results and optionally compare with previous run."""
    current_errors, filtered_count = extract_errors(current_path)

    # Load advisor.json for current and previous
    current_advisor = load_advisor_suppressions(current_path)
    prev_advisor = load_advisor_suppressions(previous_path) if previous_path else set()

    # Group by category and filename
    by_category = defaultdict(list)
    by_file = defaultdict(list)
    for err in current_errors:
        by_category[err['category']].append(err)
        by_file[err['filename']].append(err)

    # Compare with previous if available
    fixed = []
    suppressed = []
    new = []
    prev_count = 0
    prev_by_category = {}
    category_changes = {}

    if previous_path and os.path.exists(previous_path):
        prev_errors, _ = extract_errors(previous_path)
        prev_count = len(prev_errors)

        # Group previous errors by category
        for err in prev_errors:
            prev_by_category.setdefault(err['category'], []).append(err)

        # Calculate category-level changes
        all_categories = set(by_category.keys()) | set(prev_by_category.keys())
        for cat in all_categories:
            curr_count = len(by_category.get(cat, []))
            prev_count_cat = len(prev_by_category.get(cat, []))
            category_changes[cat] = {
                'current': curr_count,
                'previous': prev_count_cat,
                'change': curr_count - prev_count_cat
            }

        current_sigs = {e['signature'] for e in current_errors}
        prev_sigs = {e['signature'] for e in prev_errors}

        # Categorize disappeared errors: suppressed vs actually fixed
        disappeared = [e for e in prev_errors if e['signature'] not in current_sigs]
        new_suppressions = current_advisor - prev_advisor

        for err in disappeared:
            # Check if error would be suppressed by new advisor.json rules
            if new_suppressions and is_suppressed_by_advisor(err, new_suppressions):
                suppressed.append(err)
            else:
                fixed.append(err)

        new = [e for e in current_errors if e['signature'] not in prev_sigs]

    return {
        'total': len(current_errors),
        'filtered': filtered_count,
        'previous': prev_count,
        'by_category': dict(by_category),
        'by_file': dict(by_file),
        'prev_by_category': prev_by_category,
        'category_changes': category_changes,
        'fixed': fixed,
        'suppressed': suppressed,
        'new': new,
        'all_errors': current_errors,
        'advisor_changes': {
            'added': list(current_advisor - prev_advisor),
            'removed': list(prev_advisor - current_advisor)
        } if previous_path else {}
    }

def print_report(results, short_sha, outdir):
    """Print formatted validation report."""
    print("╔" + "═" * 78)
    print(f"║ FHIR Validation Report - {short_sha}")
    print("╠" + "═" * 78)
    print()

    # Summary
    print("SUMMARY")
    print("-" * 80)
    print(f"Total errors:      {results['total']}")
    if results.get('filtered', 0) > 0:
        print(f"Filtered:          {results['filtered']} (expected/known)")
    if results['previous'] > 0:
        change = results['total'] - results['previous']
        sign = '+' if change > 0 else ''
        status = '✅' if change < 0 else ('⚠️' if change > 0 else '━')
        print(f"Previous errors:   {results['previous']}")
        print(f"Change:            {sign}{change} {status}")
    print()

    # Category comparison if we have previous data
    if results.get('category_changes'):
        print("ERROR CATEGORIES (Current vs Previous)")
        print("-" * 80)
        print(f"{'Category':<30} {'Current':>10} {'Previous':>10} {'Change':>12} {'Status':>8}")
        print("-" * 80)

        # Sort by previous count (biggest problems first)
        sorted_cats = sorted(
            results['category_changes'].items(),
            key=lambda x: (x[1]['previous'], x[1]['current']),
            reverse=True
        )

        for cat, changes in sorted_cats:
            curr = changes['current']
            prev = changes['previous']
            delta = changes['change']

            # Status indicator
            if curr == 0 and prev > 0:
                status = '✅ FIXED'
            elif delta < 0:
                status = '⬇️ BETTER'
            elif delta > 0:
                status = '⬆️ WORSE'
            else:
                status = '━'

            sign = '+' if delta > 0 else ''
            print(f"{cat:<30} {curr:>10} {prev:>10} {sign}{delta:>11} {status:>8}")
        print()
    else:
        # No comparison, just show current categories
        print("ERROR CATEGORIES")
        print("-" * 80)
        for cat, errs in sorted(results['by_category'].items(), key=lambda x: -len(x[1])):
            print(f"  {cat:<30} {len(errs):>5} errors")
        print()

    # Top affected files
    print("MOST AFFECTED FILES (top 15)")
    print("-" * 80)
    for fname, errs in sorted(results['by_file'].items(), key=lambda x: -len(x[1]))[:15]:
        print(f"  {fname:<60} {len(errs):>5} errors")
    print()

    # Show advisor.json changes
    if results.get('advisor_changes', {}).get('added'):
        print(f"⚠️  ADVISOR.JSON CHANGES - New Suppressions Added")
        print("-" * 80)
        for pattern in results['advisor_changes']['added']:
            print(f"  🔇 {pattern}")
        print()

    if results.get('advisor_changes', {}).get('removed'):
        print(f"ADVISOR.JSON CHANGES - Suppressions Removed")
        print("-" * 80)
        for pattern in results['advisor_changes']['removed']:
            print(f"  🔊 {pattern}")
        print()

    # Show sample fixed/suppressed/new errors if comparison available
    if results.get('fixed'):
        print(f"✅ ACTUALLY FIXED ({len(results['fixed'])} total - showing first 5)")
        print("-" * 80)
        for err in results['fixed'][:5]:
            print(f"  ✅ [{err['category']}] {err['filename']}")
            print(f"     {err['message'][:90]}")
        if len(results['fixed']) > 5:
            print(f"     ... and {len(results['fixed']) - 5} more")
        print()

    if results.get('suppressed'):
        print(f"⚠️  SUPPRESSED (NOT FIXED!) ({len(results['suppressed'])} total - showing first 5)")
        print("-" * 80)
        for err in results['suppressed'][:5]:
            print(f"  🔇 [{err['category']}] {err['filename']}")
            print(f"     {err['message'][:90]}")
        if len(results['suppressed']) > 5:
            print(f"     ... and {len(results['suppressed']) - 5} more")
        print()

    if results.get('new'):
        print(f"NEW ERRORS ({len(results['new'])} total - showing first 5)")
        print("-" * 80)
        for err in results['new'][:5]:
            print(f"  ⚠️  [{err['category']}] {err['filename']}")
            print(f"     {err['message'][:90]}")
        if len(results['new']) > 5:
            print(f"     ... and {len(results['new']) - 5} more")
        print()

    print("╚" + "═" * 78)
    if outdir and outdir != '.':
        print(f"Results directory: {outdir}")
        print(f"HTML report:       {outdir}/validation.html")

def find_previous_validation(current_path):
    """Automatically find the previous validation.json for comparison."""
    history_dir = os.path.dirname(os.path.dirname(current_path))
    if not os.path.basename(history_dir) == '.validation-history':
        return None

    current_dir = os.path.basename(os.path.dirname(current_path))

    # Get all validation directories sorted by name (timestamp)
    dirs = sorted([d for d in os.listdir(history_dir)
                   if os.path.isdir(os.path.join(history_dir, d)) and d != current_dir],
                  reverse=True)

    if not dirs:
        return None

    # Return the most recent one before current
    prev_path = os.path.join(history_dir, dirs[0], 'validation.json')
    return prev_path if os.path.exists(prev_path) else None

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python3 analyze_validation.py <validation.json> [previous.json]")
        print("       If previous.json is omitted, automatically finds the previous validation.")
        sys.exit(1)

    current = sys.argv[1]

    # Auto-find previous if not provided
    if len(sys.argv) > 2:
        previous = sys.argv[2]
    else:
        previous = find_previous_validation(current)
        if previous:
            print(f"Auto-detected previous: {os.path.basename(os.path.dirname(previous))}")

    results = analyze_validation(current, previous)

    # Extract info from path
    outdir = os.path.dirname(current)
    short_sha = outdir.split('_')[-1] if '_' in outdir else 'unknown'

    print_report(results, short_sha, outdir)
