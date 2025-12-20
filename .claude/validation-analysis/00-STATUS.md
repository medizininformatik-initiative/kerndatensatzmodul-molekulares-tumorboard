# MTB Validation Fixing - Status Tracker

**Last Updated:** 2025-12-19 16:30
**PR:** https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/pull/155
**Branch:** `release-2026-validation-fixing`

## Current Error Count: 177 (from CI run 20373968271, commit 366dc7b)

Previous: 1050 → 177 = **-873 errors (83% reduction)**

| # | Category | Current | Previous | Change | Status |
|---|----------|---------|----------|--------|--------|
| 1 | SLICING_DISCRIMINATOR | 142 | 149 | -7 | IN_PROGRESS |
| 2 | UNCATEGORIZED | 23 | 48 | -25 | ⬇️ |
| 3 | PROFILE_MISMATCH | 7 | 31 | -24 | ⬇️ |
| 4 | UNKNOWN_CODE | 4 | 64 | -60 | ⬇️ |
| 5 | OTHER_CONSTRAINT | 1 | 4 | -3 | ⬇️ |
| 6 | MULTI_SLICE_MATCH | 0 | - | - | ✅ FIXED |
| 7 | UUID_INVALID | 0 | 320 | -320 | ✅ FIXED |
| 8 | WRONG_DISPLAY | 0 | 258 | -258 | ✅ FIXED |
| 9 | REQUIRED_FIELD | 0 | 73 | -73 | ✅ FIXED |
| 10 | CPL3_CONSTRAINT | 0 | 34 | -34 | ✅ FIXED |
| 11 | EXTENSION_NOT_ALLOWED | 0 | 33 | -33 | ✅ FIXED |
| 12 | PROC_MII_1 | 0 | 21 | -21 | ✅ FIXED |
| 13 | INVALID_TARGET_TYPE | 0 | 12 | -12 | ✅ FIXED |

## Error Breakdown (from validation.json)

### SLICING_DISCRIMINATOR (164 errors)
- **CarePlan activity slices (115 errors)** - 5 slices x 23 occurrences each:
  - `CarePlan.activity:extended/Biopsie` - existence-based discriminator
  - `CarePlan.activity:extended/HistologieEvaluation`
  - `CarePlan.activity:extended/HumangenetischeBeratung`
  - `CarePlan.activity:extended/Studieneinschlussempfehlung`
  - `CarePlan.activity:extended/Therapieempfehlung`
- **IHC code.coding slices (44 errors)** - 22 each for generisch/spezifisch
- **Condition.stage:OncoTree (4 errors)** - discriminator on type.coding
- **Observation.component:NCIT (1 error)** - Ploidie profile

### UNCATEGORIZED (26 errors)
- TX filter error: "no declared filter LIST on http://loinc.org" (13)
- Systemische Therapie profile: "no snapshot" (3)
- ISH profile: "Error generating Snapshot" (2) - **FIXED in local changes**
- research-study-arm-type definition missing (4)
- ValueSet guide-parameter-code (2)
- Empty array (1)
- ele-1 constraint (1)

### MULTI_SLICE_MATCH (16 errors)
- Therapieempfehlung profile: "matches more than one slice - Primaertumor, StuetzendeEntitaet"

### PROFILE_MISMATCH (11 errors)
- Procedure/MII-EXA-MTB-Systemische-Therapie-1 (2)
- CarePlan/mii-exa-mtb-kim-musterperson-therapieplan (1)
- ClinicalImpression/mii-exa-mtb-kim-musterperson-behandlungsepisode (1)
- Condition/mii-exa-mtb-kim-diagnose (1)
- MedicationRequest examples (2)
- Procedure/genomic-study-analysis-1 (1)
- RequestGroup examples (2)

### UNKNOWN_CODE (4 errors)
- research-study-arm-type extension not found (4)
- SNOMED 1381317004 "Human epidermal growth factor receptor 2 low" (2) - not in version 20250701

## Most Affected Files (top 10)

| File | Errors |
|------|--------|
| Bundle-mii-exa-mtb-kim-musterperson-bundle.json | 105 |
| CarePlan-mii-exa-mtb-kim-musterperson-therapieplan.json | 55 |
| CarePlan-mii-exa-mtb-therapieplan-kombinationstherapie.json | 5 |
| ImplementationGuide-mii-kerndatensatzmodul-molekulares-tumorboard.json | 3 |
| Observation-MII-EXA-MTB-Einfache-Variante.json | 3 |
| Observation-PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu.json | 3 |
| Condition-mii-exa-mtb-kim-diagnose.json | 2 |
| Multiple MolecularPathologyObservation instances | 2 each |

## Recent Local Fixes (2025-12-19)

### ISH Profile Snapshot Error (2 errors) - FIXED LOCALLY
**Problem:** Slicing rules mismatch between ISH profile (`#pattern`) and parent MolekularerBiomarker (`#value`)

**Solution:**
1. Removed custom component slices from base ISH profile (target-signals, reference-signals, cells-counted)
2. Moved component slice definitions to HER2-specific child profile
3. Updated example to use HER2 profile and provide required values

**Files Modified:**
- `input/fsh/profiles/NGS-Bericht/mii-pr-mtb-insituhybridization.fsh`
- `input/fsh/profiles/NGS-Bericht/mii-pr-mtb-immunohistochemistry-her2.fsh`
- `input/fsh/examples/mii-exa-mtb-kim-musterperson-cancer-molpatho.fsh`

**SUSHI Result:** 0 Errors, 0 Warnings

## Remaining Issues (177 errors)

### 1. CarePlan Activity Slicing (115 errors)
The existence-based discriminator on `activity.detail` requires either `min>=1` or `max=0`.
**Fix location**: Parent profile `MII_PR_Onko_Tumorkonferenz` in kerndatensatzmodul-onkologie

### 2. IHC/ISH code.coding:spezifisch Slicing (22 errors)
"Could not match discriminator ($this) for slice Observation.code.coding:spezifisch"
**Root cause**: `spezifisch` slice has no fixed code pattern - it allows any code
**Status**: Expected behavior - validator can't evaluate open slices without fixed values

### 3. Condition.stage:OncoTree Slicing (4 errors)
"Could not match discriminator (type.coding) for slice Condition.stage:OncoTree"
**Fix location**: Parent profile in kerndatensatzmodul-onkologie

### 4. TERMINOLOGY_SERVER (13 errors)
"Error from http://127.0.0.1:8090/fhir: There is no declared filter called LIST on http://loinc.org"
**Status**: CI infrastructure issue, not profile issue

### 5. PROFILE_MISMATCH (7 errors)
Missing meta.profile or snapshot generation issues
**Status**: Mostly related to Systemische Therapie profile snapshot

### 6. UNKNOWN_CODE (4 errors)
- SNOMED 1381317004 "HER2 low" (2) - valid in version 20251201 but CI uses 20250701
- research-study-arm-type extension (4) - external dependency

## Validation Runs

| Date | Commit | CI Run | Errors | Notes |
|------|--------|--------|--------|-------|
| 2025-12-19 | 366dc7b | 20373968271 | 177 | IHC/ISH discriminator + StuetzendeEntitaet fixed |
| 2025-12-19 | de2828d | 20366655896 | 1050 | Previous baseline |

## Notes

- **Bundle is active** - contributing 83 of the 177 errors
- CarePlan activity slicing (115 errors) requires fix in parent module kerndatensatzmodul-onkologie
- IHC/ISH spezifisch slice discrimination is expected (open slice without fixed value)
- Most remaining errors are in parent profiles or infrastructure issues
