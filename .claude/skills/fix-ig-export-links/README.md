# Fix IG Export Links

This skill fixes broken Simplifier resolve links in MII MTB Implementation Guide exports.

## Problem

When exporting an Implementation Guide from Simplifier, many links are broken:
- External FHIR R4 core links point to non-working Simplifier resolve URLs
- External terminology (THO) links are broken
- External HL7 Genomics Reporting STU3 links are broken
- MII dependency module links (base, medikation, molgen, onkologie, patho, studie) are broken
- German base profile links are broken

## Solution

The `fix-links.sh` script replaces all broken Simplifier resolve URLs with working links:

1. **FHIR R4 Core**: Links to https://hl7.org/fhir/R4/
2. **HL7 Terminology**: Links to https://terminology.hl7.org/
3. **Genomics Reporting STU3**: Links to https://hl7.org/fhir/uv/genomics-reporting/STU3/
4. **German Base Profiles**: Links to Simplifier package viewer
5. **MII Dependencies**: Links to Simplifier package viewer with correct versions
6. **MTB Internal Resources**: Converts to Simplifier resolve with scope and fhirVersion

## Usage

### Manual Usage

1. Export the IG from Simplifier (HTML bundle)
2. Extract the ZIP file
3. Navigate to the extracted directory
4. Run the fix script:

```bash
cd ~/Downloads/mtb-ig-export
bash /path/to/kerndatensatzmodul-molekulares-tumorboard/.claude/skills/fix-ig-export-links/scripts/fix-links.sh
```

### Via Claude Skill

Simply ask Claude:
```
Can you fix the links in the MTB IG export?
```

Claude will:
1. Locate the most recent IG export in ~/Downloads
2. Extract it to a temporary directory
3. Run the fix script
4. Create a fixed ZIP archive

## What Gets Fixed

### External Resources
- FHIR R4 Core (StructureDefinitions, ValueSets, CodeSystems)
- HL7 Terminology (THO)
- HL7 Genomics Reporting STU3
- German Base Profiles (de.basisprofil.r4@1.5.4)

### MII Dependencies
- kerndatensatz.base@2026.0.0 (Diagnose, Prozedur)
- kerndatensatz.medikation@2026.0.0 (MedicationStatement)
- kerndatensatz.molgen@2026.0.4 (Variante, Therapeutische Implikation, Diagnostische Implikation)
- kerndatensatz.onkologie@2026.0.0
- kerndatensatz.patho@2026.0.0
- kerndatensatz.studie@2026.0.1

### MTB Internal Resources
- ValueSets (mii-vs-mtb-*)
- CodeSystems (mii-cs-mtb-*)
- Extensions (mii-ex-mtb-*)
- Profiles (mii-pr-mtb-*)
- NamingSystems (mii-ns-*)

## Verification

After running the script, verify the fixes:

1. Open the IG locally in a browser
2. Navigate to any profile page
3. Click on links in the differential table
4. Verify external links (FHIR core, terminology) work
5. Check that Simplifier resolve links for MTB resources work

## Technical Details

The script uses `sed` with macOS-specific syntax (`sed -i ''`). It processes all HTML files in the current directory with 17 sequential steps:

1. Fix FHIR R4 Core filepath-pattern links
2. Fix HL7 Terminology links
3. Fix HL7 Genomics Reporting STU3 links
4. Fix German base profile links
5-9. Fix MII module dependencies
10-12. Fix canonical box links for FHIR R4 and MTB
13-17. Fix internal MTB resource references

## Files

- `scripts/fix-links.sh`: Main fix script (17 steps)
- `README.md`: This file

## Package Information

- **Package**: de.medizininformatikinitiative.kerndatensatz.mtb
- **Version**: 2026.0.0
- **Canonical**: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb

## References

This script is adapted from the Onkologie module fix script with MTB-specific:
- Package name and version
- Canonical URLs
- Profile naming patterns
- Dependencies (added genomics-reporting, studie, patho)
