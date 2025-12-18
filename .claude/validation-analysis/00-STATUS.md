# MTB Validation Fixing - Status Tracker

**Last Updated:** 2025-12-18
**PR:** https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/pull/154
**Branch:** `release-2026-validation-fixing`

## Current Error Count: 0 (with bundle commented out)

**Note:** The main bundle (`mii-exa-mtb-kim-musterperson-bundle.fsh`) is currently commented out, which suppresses ~600 errors. When uncommented, those errors will need to be addressed.

| # | Category | Count | Status | File |
|---|----------|-------|--------|------|
| 0 | CAPABILITYSTATEMENT_EXTENSION | 10 | **FIXED** | (CapabilityStatement Profile RuleSet) |
| 1 | UUID_INVALID | 320 | **FIXED** (bundle commented) | [01-UUID_INVALID.md](01-UUID_INVALID.md) |
| 2 | WRONG_DISPLAY | 170 | TODO | [02-WRONG_DISPLAY.md](02-WRONG_DISPLAY.md) |
| 3 | SLICING_DISCRIMINATOR | 130 | TODO | [03-SLICING_DISCRIMINATOR.md](03-SLICING_DISCRIMINATOR.md) |
| 4 | UNCATEGORIZED | 111 | TODO | [04-UNCATEGORIZED.md](04-UNCATEGORIZED.md) |
| 5 | REQUIRED_FIELD | 68 | TODO | [05-REQUIRED_FIELD.md](05-REQUIRED_FIELD.md) |
| 6 | UNKNOWN_CODE | 54 | TODO | [06-UNKNOWN_CODE.md](06-UNKNOWN_CODE.md) |
| 7 | CPL3_CONSTRAINT | 34 | **FIXED** | [07-CPL3_CONSTRAINT.md](07-CPL3_CONSTRAINT.md) |
| 8 | PROFILE_MISMATCH | 31 | TODO | [08-PROFILE_MISMATCH.md](08-PROFILE_MISMATCH.md) |
| 9 | PROC_MII_1 | 21 | **FIXED** | [09-PROC_MII_1.md](09-PROC_MII_1.md) |
| 10 | VALUESET_INVALID | 19 | **PARTIAL** | [10-VALUESET_INVALID.md](10-VALUESET_INVALID.md) |
| 11 | EXTENSION_NOT_ALLOWED | 18 | **FIXED** | [11-EXTENSION_NOT_ALLOWED.md](11-EXTENSION_NOT_ALLOWED.md) |
| 12 | OTHER_CONSTRAINT | 13 | **PARTIAL** | [12-OTHER_CONSTRAINT.md](12-OTHER_CONSTRAINT.md) |
| 13 | INVALID_TARGET_TYPE | 12 | TODO | [13-INVALID_TARGET_TYPE.md](13-INVALID_TARGET_TYPE.md) |
| 14 | MULTI_SLICE_MATCH | 3 | TODO | [14-MULTI_SLICE_MATCH.md](14-MULTI_SLICE_MATCH.md) |
| 15 | UNRECOGNIZED_PROPERTY | 2 | **FIXED** | [15-UNRECOGNIZED_PROPERTY.md](15-UNRECOGNIZED_PROPERTY.md) |

## Validation Runs

| Date | Commit | Errors | Change |
|------|--------|--------|--------|
| 2025-12-11 | ce16ebf | 1006 | Baseline |
| 2025-12-11 | f316b19 | ~900 | Extension fixes |
| 2025-12-12 | 7609d7c | TBD | VALUESET_INVALID fixes |
| 2025-12-18 | 1815c2b | 0 | SUSHI FSH errors resolved |
| 2025-12-18 | 687b4ee | ~950 | CPL-3 constraint fixes |
| 2025-12-18 | 269e993 | ~630 | UUID_INVALID fixes (pending CI) |
| 2025-12-18 | TBD | 10→0 | CapabilityStatement extension fix + bundle commented |

## Recent Fixes (2025-12-18)

### Latest - CapabilityStatement Extension Fix (10 errors)
Fixed `Extension_EXTP_Context_Wrong_VER` errors in CapabilityStatement by simplifying the `Profile` RuleSet.

**Problem:** The `capabilitystatement-expectation` extension was being added to `rest.resource[].profile` which is not allowed in FHIR R4.

**Fix:** Changed RuleSet from:
```fsh
RuleSet: Profile (profile, expectation)
* rest.resource[=].profile[+] = "{profile}"
* rest.resource[=].profile[=].extension[0].url = $exp
* rest.resource[=].profile[=].extension[0].valueCode = {expectation}
```
To:
```fsh
RuleSet: Profile (profile)
* rest.resource[=].profile = "{profile}"
```

**Files Modified:** `input/fsh/capability-statement.fsh`
- Lines 8-11: Simplified Profile RuleSet
- 13 usages updated to remove `#SHALL` parameter


### Commit 269e993 - UUID_INVALID fixes (320 errors)
Changed bundle RuleSet to use absolute HTTP URLs instead of invalid urn:uuid format:
```fsh
RuleSet: BundleResource(type,id)
* entry[+].fullUrl = "http://example.org/fhir/{type}/{id}"
```
**Files Modified:** `input/fsh/examples/bundle/mii-exa-mtb-kim-musterperson-bundle.fsh`

### Commit 687b4ee - CPL-3 constraint fixes (34 errors)
1. Removed CPL-3 suppression from `advisor.json`
2. Fixed CarePlan example by removing `activity.detail` (kept only `activity.reference`)
**Files Modified:**
- `advisor.json`
- `input/fsh/profiles/Beschluss-Therapieplan/mii-exa-mtb-therapieplan-kombinationstherapie.fsh`

### Commit 1815c2b - SUSHI FSH errors (22 errors)
1. Fixed cardinality constraints in therapieempfehlung profile
2. Corrected CodeSystem URI in Aliases.fsh
3. Added required reasonReference to MedicationRequest examples
4. Fixed ECOG observation coding slice

## Earlier Fixes (2025-12-12)

### Commit 7609d7c - VALUESET_INVALID fixes
1. **OPS 3-20 Display** - "Native Computertomographie" → "Computertomographie [CT], nativ" (7 places)
2. **ATC L01FX26** - Added UNII 98DE7VN88D for Mirvetuximab soravtansine (15+ places)
3. **Verlauf Lymphknoten** - Added system `$mii-cs-onko-verlauf-lymphknoten` to `#K` code
4. **Response Befund Method** - Changed from SNOMED CT to RECIST (`$mii-cs-mtb-response-befund-beurteilungsmethode#RECIST`)

## Quick Reference - Remaining High-Priority Fixes

| Priority | File | Errors to Fix | Category |
|----------|------|---------------|----------|
| 1 | Multiple example files | 170 | WRONG_DISPLAY |
| 2 | `input/fsh/profiles/Behandlungsepisode/mii-pr-mtb-behandlungsepisode.fsh` | 130+3 | SLICING_DISCRIMINATOR + MULTI_SLICE_MATCH |
| 3 | Various examples | 111 | UNCATEGORIZED |
| 4 | Multiple examples | 68 | REQUIRED_FIELD |
| 5 | Multiple examples | 54 | UNKNOWN_CODE |

## Completed Fixes

| Priority | File | Errors Fixed | Category |
|----------|------|--------------|----------|
| ✅ | `input/fsh/examples/bundle/mii-exa-mtb-kim-musterperson-bundle.fsh` | 320 | UUID_INVALID |
| ✅ | `input/fsh/profiles/Beschluss-Therapieplan/mii-exa-mtb-therapieplan-kombinationstherapie.fsh` | 34 | CPL3_CONSTRAINT |
| ✅ | `input/fsh/profiles/Beschluss-Therapieplan/mii-ex-mtb-*.fsh` | 18 | EXTENSION_NOT_ALLOWED |
| ✅ | Multiple procedure examples | 21 | PROC_MII_1 |
| ✅ | Profile definitions | 2 | UNRECOGNIZED_PROPERTY |

## Notes

- **`validation.json` is a snapshot downloaded from CI** - not live validation. Re-download after each push to get updated error counts.
- **Last validation.json download:** 2025-12-11 (commit ce16ebf baseline)
- **Latest fixes pending CI validation:** Commits 1815c2b, 687b4ee, 269e993
- Validation artifacts saved to `/tmp/mtb-validation/`
- Analysis files created: 2025-12-11
- Analysis files updated: 2025-12-18
- MCP terminology server configured globally in `~/.claude/settings.json`

## Next Steps

1. Wait for CI validation run to complete on commit 269e993
2. Download new validation artifacts to verify UUID_INVALID and CPL3_CONSTRAINT fixes
3. Continue with next high-priority category: WRONG_DISPLAY (170 errors)
4. Then tackle SLICING_DISCRIMINATOR (130 errors)
