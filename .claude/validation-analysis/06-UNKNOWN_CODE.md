# UNKNOWN_CODE Errors (54)

**Status:** TODO
**Priority:** 6

## Problem

SNOMED CT codes not found in the terminology server.

## Sample Errors

```
Unknown code '4120138' in the CodeSystem 'http://snomed.info/sct' version 'http://snomed.info/sct/900000000000207008/version/20250701'
Unknown code '37542245' in the CodeSystem 'http://snomed.info/sct' version 'http://snomed.info/sct/900000000000207008/version/20250701'
```

## Analysis

### Codes to Investigate

1. `4120138` - Not a valid SNOMED CT code (too short, wrong format)
2. `37542245` - Not a valid SNOMED CT code

These appear to be:
- Typos
- Placeholder/demo codes
- Codes from a different CodeSystem misattributed to SNOMED

## Fix Options

### Option A: Fix the codes
Replace with valid SNOMED CT codes

### Option B: Use different CodeSystem
If these are internal codes, use a custom CodeSystem

### Option C: Suppress for demo data
If this is example/demo data, suppress these errors

## Files to Investigate

Need to find where these codes are defined:
```bash
grep -rn "4120138\|37542245" input/fsh/
```

## Notes

- Valid SNOMED CT codes are typically 6-18 digits
- International edition codes start with specific patterns
- May need to check if German SNOMED extension codes are used
