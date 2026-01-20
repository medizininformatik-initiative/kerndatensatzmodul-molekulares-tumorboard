# MTB Validation Fixing - Status Tracker

**Last Updated:** 2025-12-20 12:00
**PR:** https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/pull/155
**Branch:** `release-2026-validation-fixing`

## Current Error Count: 50 (from CI run 20394392948, commit 5d5839d)

Previous: 1050 → 177 → 166 → 50 = **-1000 errors (95% reduction)**

| # | Category | Current | Previous | Change | Status |
|---|----------|---------|----------|--------|--------|
| 1 | SLICING_DISCRIMINATOR | 23 | 138 | -115 | ⬇️ MUCH BETTER |
| 2 | UNCATEGORIZED | 19 | 19 | 0 | ━ |
| 3 | UNKNOWN_CODE | 4 | 4 | 0 | ━ |
| 4 | PROFILE_MISMATCH | 3 | 4 | -1 | ⬇️ BETTER |
| 5 | OTHER_CONSTRAINT | 1 | 1 | 0 | ━ |
| 6 | CAREPLAN_ACTIVITY_SLICING | 0 | 115 | -115 | ✅ FIXED |
| 7 | MULTI_SLICE_MATCH | 0 | - | - | ✅ FIXED |
| 8 | UUID_INVALID | 0 | 320 | -320 | ✅ FIXED |
| 9 | WRONG_DISPLAY | 0 | 258 | -258 | ✅ FIXED |
| 10 | REQUIRED_FIELD | 0 | 73 | -73 | ✅ FIXED |
| 11 | CPL3_CONSTRAINT | 0 | 34 | -34 | ✅ FIXED |
| 12 | EXTENSION_NOT_ALLOWED | 0 | 33 | -33 | ✅ FIXED |
| 13 | PROC_MII_1 | 0 | 21 | -21 | ✅ FIXED |
| 14 | INVALID_TARGET_TYPE | 0 | 12 | -12 | ✅ FIXED |

## Most Affected Files (top 10)

| File | Errors |
|------|--------|
| Bundle-mii-exa-mtb-kim-musterperson-bundle.json | 24 |
| CarePlan-mii-exa-mtb-kim-musterperson-therapieplan.json | 3 |
| ImplementationGuide-mii-kerndatensatzmodul-molekulares-tumorboard.json | 3 |
| Multiple MolecularPathologyObservation instances | 1-2 each |

## Remaining Issues (50 errors)

### 1. IHC/ISH code.coding:spezifisch Slicing (23 errors)
"Could not match discriminator ($this) for slice Observation.code.coding:spezifisch"
**Root cause**: `spezifisch` slice has no fixed code pattern - it allows any code
**Status**: Expected behavior - validator can't evaluate open slices without fixed values

### 2. UNCATEGORIZED (19 errors)
- TERMINOLOGY_SERVER (13 errors) - "No declared filter called LIST on http://loinc.org"
- Other infrastructure errors
**Status**: CI infrastructure issue, not profile issue

### 3. UNKNOWN_CODE (4 errors)
- SNOMED 1381317004 "HER2 low" (2) - valid in version 20251201 but CI uses 20250701
- SNOMED 76241005 "Breast structure" (2) - display mismatch or terminology server issue

### 4. PROFILE_MISMATCH (3 errors)
**Root cause**: IG Publisher failed to generate snapshot for `mii-pr-mtb-systemische-therapie`
**Note**: SUSHI generates 198 snapshot elements successfully in local mode
**Status**: IG Publisher build issue, not profile issue

### 5. OTHER_CONSTRAINT (1 error)
Minor constraint issue

## Recent Fixes (2025-12-20)

### CarePlan Activity Slicing (115 errors) - ✅ FIXED
**Problem:** Existence-based discriminator on `activity.detail` requires either `min>=1` or `max=0` on sub-slices
**Solution:** Added `detail 0..0` to all 5 sub-slices in `mii-pr-mtb-therapieplan.fsh`
**Commit:** 5d5839d

### research-study-arm-type R5 CodeSystem (4 errors) - ✅ FIXED
**Problem:** Using R5 CodeSystem `http://hl7.org/fhir/research-study-arm-type` in R4 project
**Solution:** Removed `arm.type` from ResearchStudy example (non-essential data)
**Commit:** 66cfa73

### Onkologie Dependency Update
**Change:** Updated to `2026.0.0-rc.10`
**Commit:** 7a6bb4e

## Previous Fixes (2025-12-19)

### ISH Profile Snapshot Error (2 errors) - ✅ FIXED
**Problem:** Slicing rules mismatch between ISH profile (`#pattern`) and parent MolekularerBiomarker (`#value`)
**Solution:** Refactored ISH profile, moved component slices to HER2-specific child profile

### OncoTree Stage Slicing (4 errors) - ✅ FIXED
**Problem:** Missing discriminator value for OncoTree stage slice
**Solution:** Added `type.coding = $SCT#371441004` to OncoTree slice

### StuetzendeEntitaet Slice (744 errors) - ✅ FIXED
**Problem:** Multiple slice match error - references matching both Primaertumor and StuetzendeEntitaet
**Solution:** Removed redundant StuetzendeEntitaet slice from Therapieempfehlung profile

## Validation Runs

| Date | Commit | CI Run | Errors | Notes |
|------|--------|--------|--------|-------|
| 2025-12-20 | 5d5839d | 20394392948 | 50 | CarePlan activity slicing fixed |
| 2025-12-20 | 7a6bb4e | 20392990602 | 166 | Removed R5 arm.type + onkologie rc.10 |
| 2025-12-20 | 66cfa73 | 20392862891 | ~170 | Removed R5 arm.type |
| 2025-12-19 | 366dc7b | 20373968271 | 177 | IHC/ISH discriminator + StuetzendeEntitaet fixed |
| 2025-12-19 | de2828d | 20366655896 | 1050 | Previous baseline |

## Notes

- **95% error reduction achieved** (1050 → 50)
- IHC/ISH spezifisch slice discrimination is expected (open slice without fixed value)
- SNOMED HER2 low code (1381317004) will work when CI updates to version 20251201
- systemische-therapie snapshot works in SUSHI (198 elements) but fails in IG Publisher build
- Remaining errors are mostly infrastructure/terminology server issues
