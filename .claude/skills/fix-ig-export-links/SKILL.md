---
name: fix-ig-export
description: Fix broken Simplifier resolve links in downloaded MII MTB Implementation Guide exports. Use when downloading an IG from Simplifier and links are broken, preparing an IG export for offline use, or making links work both locally and on the official MII page. Handles MII MTB profiles/ValueSets/CodeSystems, FHIR R4 core links, MII dependency modules, German base profiles, and artifacts/package/ paths.
---

# Fix IG Export Links

Fix broken `/resolve?` links in Simplifier IG exports to work offline and on official MII pages.

## Link Categories and Targets

| Category | Source Pattern | Target |
|----------|---------------|--------|
| **MII MTB Canonical** | `/resolve?&scope=...mtb...&canonical=https://...modul-mtb/...` | `https://simplifier.net/resolve?canonical=...&fhirVersion=R4` |
| **FHIR R4 Base** (Basis column) | `/resolve?&scope=...&canonical=http://hl7.org/fhir/StructureDefinition/...` | `https://hl7.org/fhir/R4/....html` |
| **FHIR R4 Core** (filepath) | `simplifier.net/resolve?...hl7.fhir.r4.core...filepath=...` | `https://hl7.org/fhir/R4/...` |
| **HL7 Terminology (THO)** | `simplifier.net/resolve?...hl7.terminology.r4...` | `https://terminology.hl7.org/...` |
| **HL7 Genomics Reporting** | `simplifier.net/resolve?...genomics-reporting...` | `https://hl7.org/fhir/uv/genomics-reporting/STU3/...` |
| **German base profiles** | `simplifier.net/resolve?...de.basisprofil.r4...` | `https://simplifier.net/packages/de.basisprofil.r4/.../files/...` |
| **MII Base Module** | `simplifier.net/resolve?...kerndatensatz.base...` | `https://simplifier.net/packages/.../files/...` |
| **MII Medikation** | `simplifier.net/resolve?...kerndatensatz.medikation...` | `https://simplifier.net/packages/.../files/...` |
| **MII MolGen** | `simplifier.net/resolve?...kerndatensatz.molgen...` | `https://simplifier.net/packages/.../files/...` |
| **MII Onkologie** | `simplifier.net/resolve?...kerndatensatz.onkologie...` | `https://simplifier.net/packages/.../files/...` |
| **MII Patho** | `simplifier.net/resolve?...kerndatensatz.patho...` | `https://simplifier.net/packages/.../files/...` |
| **MII Biobank** | `simplifier.net/resolve?...kerndatensatz.biobank...` | `https://simplifier.net/packages/.../files/...` |
| **MII Consent** | `simplifier.net/resolve?...kerndatensatz.consent...` | `https://simplifier.net/packages/.../files/...` |
| **MII Studie** | `simplifier.net/resolve?...kerndatensatz.studie...` | `https://simplifier.net/packages/.../files/...` |
| **Internal Profiles** | `artifacts/package/StructureDefinition-mii-pr-mtb-*.json` | Local HTML page or Simplifier resolve |
| **Internal ValueSets** | `artifacts/package/ValueSet-mii-vs-mtb-*.json` | `https://simplifier.net/resolve?canonical=...&fhirVersion=R4` |
| **Internal CodeSystems** | `artifacts/package/CodeSystem-mii-cs-mtb-*.json` | `https://simplifier.net/resolve?canonical=...&fhirVersion=R4` |
| **Internal Extensions** | `artifacts/package/StructureDefinition-mii-ex-mtb-*.json` | `https://simplifier.net/resolve?canonical=...&fhirVersion=R4` |

## Procedure

1. Download and extract the IG ZIP from Simplifier to a working directory
2. Navigate to the extracted directory containing HTML files
3. Run the fix script:
   ```bash
   cd /path/to/extracted-ig
   bash /path/to/fix-links.sh
   ```
4. Verify remaining resolve links (should only be intentional Simplifier links):
   ```bash
   grep -c "resolve?" *.html | grep -v ":0$"
   ```

## Script Location

The fix script is located at: `.claude/skills/fix-ig-export-links/scripts/fix-links.sh`

## Technical Notes

### HTML Encoding Variants
The script handles two encoding patterns:
- **Single-quoted href with `&`**: Used in FQL canonical box tables (`href='...'`)
- **Double-quoted href with `&amp;`**: Used elsewhere (`href="..."`)

### Link Pattern Types
- **`?canonical=`**: Links to profile canonical URLs (should resolve via Simplifier)
- **`?filepath=`**: Links to package files (should resolve to official spec URLs or Simplifier packages)

### ValueSet and CodeSystem Handling
ValueSets and CodeSystems are transformed to Simplifier resolve links with the canonical URL pattern:
```
https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/{id}&fhirVersion=R4
```

### Expected Remaining Links
After running the script, these Simplifier resolve links are intentional:
- MII MTB profile/ValueSet/CodeSystem canonical URLs -> `https://simplifier.net/resolve?canonical=...&fhirVersion=R4`
- CapabilityStatement canonical -> remains as Simplifier resolve

## Example Usage

```bash
# Extract the downloaded IG
unzip "MII-IG-MTB-DE-v2026@current.zip" -d ig-export

# Run the fix script
cd ig-export
bash ~/.claude/skills/fix-ig-export-links/scripts/fix-links.sh

# Verify - count should show only intentional Simplifier links
grep -o "simplifier.net/resolve" *.html | wc -l
```

## Package Information

- **Package Name**: `de.medizininformatikinitiative.kerndatensatz.molekulares-tumorboard`
- **Current Version**: `2026.0.0`
- **Canonical Base**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb`
- **Guide Name**: `mii-ig-mtb-v2026-de`

## Dependencies Handled

| Package | Version | Link Target |
|---------|---------|-------------|
| hl7.fhir.r4.core | 4.0.1 | hl7.org/fhir/R4/ |
| hl7.terminology.r4 | 7.0.0 | terminology.hl7.org/ |
| hl7.fhir.uv.genomics-reporting | 3.0.0 | hl7.org/fhir/uv/genomics-reporting/STU3/ |
| de.basisprofil.r4 | 1.5.4 | Simplifier packages |
| de.medizininformatikinitiative.kerndatensatz.base | 2026.0.0 | Simplifier packages |
| de.medizininformatikinitiative.kerndatensatz.medikation | 2026.0.0 | Simplifier packages |
| de.medizininformatikinitiative.kerndatensatz.molgen | 2026.0.4 | Simplifier packages |
| de.medizininformatikinitiative.kerndatensatz.onkologie | 2026.0.0 | Simplifier packages |
| de.medizininformatikinitiative.kerndatensatz.patho | 2026.0.0 | Simplifier packages |
| de.medizininformatikinitiative.kerndatensatz.biobank | 2026.0.0 | Simplifier packages |
| de.medizininformatikinitiative.kerndatensatz.consent | 2025.0.4 | Simplifier packages |
| de.medizininformatikinitiative.kerndatensatz.studie | 2026.0.0-ballot | Simplifier packages |
| de.medizininformatikinitiative.kerndatensatz.meta | 2026.0.0 | Simplifier packages |
