# VALUESET_INVALID Errors (19)

**Status:** PARTIALLY FIXED
**Priority:** 10
**Last Updated:** 2025-12-12

## Problem

Codes used in examples are not in the bound ValueSets.

## Errors Fixed (Commit 7609d7c)

### 1. OPS 3-20 Wrong Display (21 errors → FIXED)
- **Issue:** Display was "Native Computertomographie" but OPS expects "Computertomographie [CT], nativ"
- **Fix:** Changed display in 7 procedures in `mii-exa-mtb-kim-musterperson-diagnostik.fsh`

### 2. ATC L01FX26 Not in ValueSet (20 errors → FIXED)
- **Issue:** ATC code L01FX26 (Mirvetuximab soravtansine) is version 2025, not yet in MII Medikation ValueSet
- **Fix:** Added UNII code 98DE7VN88D as primary coding alongside ATC
- **Rationale:** UNII provides version-independent drug identification
- **Files:** 6 files, 15+ locations

### 3. Verlauf Lymphknoten Missing System (6 errors → FIXED)
- **Issue:** Code `#K` used without system reference
- **Fix:** Changed to `$mii-cs-onko-verlauf-lymphknoten#K`
- **File:** `mii-exa-mtb-kim-musterperson-follow-up.fsh` (2 places)

### 4. Response Befund Wrong CodeSystem (6 errors → FIXED)
- **Issue:** Used SNOMED CT code for CT imaging ($SCT#312251004) instead of assessment method
- **Fix:** Changed to `$mii-cs-mtb-response-befund-beurteilungsmethode#RECIST`
- **Rationale:** RECIST is the assessment method, CT is only the imaging modality
- **File:** `mii-exa-mtb-kim-musterperson-follow-up.fsh` (2 places)

## Remaining Errors (TBD)

### ICD-10 Version Errors
- `$ICD10GM|2020#C48.2` in external.fsh (inline version)
- `$ICD10GM#C48.2` with `.version = "2023"` in diagnose.fsh
- Error claims version not found, but 2023 is in valid versions list
- **Status:** Needs investigation

### SNOMED Seitenlokalisation Errors
- Possibly still remaining
- **Status:** Needs verification after next validation run

## Files Modified

| File | Changes |
|------|---------|
| `mii-exa-mtb-kim-musterperson-diagnostik.fsh` | OPS display (7 places) |
| `mii-exa-mtb-kim-musterperson-follow-up.fsh` | Lymphknoten system, RECIST method, UNII codes |
| `mii-exa-mtb-kim-musterperson-medikation.fsh` | UNII codes (6 places) |
| `mii-exa-mtb-kim-musterperson-therapieempfehlungen.fsh` | UNII code, L01FX display |
| `mii-exa-mtb-systemische-therapie-medication-statement-1.fsh` | UNII code |
| `mii-exa-mtb-technical-test-bundle.fsh` | UNII code |
