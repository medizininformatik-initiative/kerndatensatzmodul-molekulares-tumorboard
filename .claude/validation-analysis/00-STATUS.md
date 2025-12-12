# MTB Validation Fixing - Status Tracker

**Last Updated:** 2025-12-12
**PR:** https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/pull/154
**Branch:** `release-2026-validation-fixing`

## Current Error Count: ~950 (estimated, pending validation)

| # | Category | Count | Status | File |
|---|----------|-------|--------|------|
| 1 | UUID_INVALID | 320 | **TODO** | [01-UUID_INVALID.md](01-UUID_INVALID.md) |
| 2 | WRONG_DISPLAY | 170 | TODO | [02-WRONG_DISPLAY.md](02-WRONG_DISPLAY.md) |
| 3 | SLICING_DISCRIMINATOR | 130 | TODO | [03-SLICING_DISCRIMINATOR.md](03-SLICING_DISCRIMINATOR.md) |
| 4 | UNCATEGORIZED | 111 | TODO | [04-UNCATEGORIZED.md](04-UNCATEGORIZED.md) |
| 5 | REQUIRED_FIELD | 68 | TODO | [05-REQUIRED_FIELD.md](05-REQUIRED_FIELD.md) |
| 6 | UNKNOWN_CODE | 54 | TODO | [06-UNKNOWN_CODE.md](06-UNKNOWN_CODE.md) |
| 7 | CPL3_CONSTRAINT | 34 | TODO | [07-CPL3_CONSTRAINT.md](07-CPL3_CONSTRAINT.md) |
| 8 | PROFILE_MISMATCH | 31 | TODO | [08-PROFILE_MISMATCH.md](08-PROFILE_MISMATCH.md) |
| 9 | PROC_MII_1 | 21 | TODO | [09-PROC_MII_1.md](09-PROC_MII_1.md) |
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

## Recent Fixes (2025-12-12)

### Commit 7609d7c - VALUESET_INVALID fixes
1. **OPS 3-20 Display** - "Native Computertomographie" → "Computertomographie [CT], nativ" (7 places)
2. **ATC L01FX26** - Added UNII 98DE7VN88D for Mirvetuximab soravtansine (15+ places)
3. **Verlauf Lymphknoten** - Added system `$mii-cs-onko-verlauf-lymphknoten` to `#K` code
4. **Response Befund Method** - Changed from SNOMED CT to RECIST (`$mii-cs-mtb-response-befund-beurteilungsmethode#RECIST`)

## Quick Reference - Key Files to Fix

| Priority | File | Errors Fixed |
|----------|------|--------------|
| 1 | `input/fsh/examples/bundle/mii-exa-mtb-kim-musterperson-bundle.fsh` | 320 (UUID) |
| 2 | Multiple example files | 170 (Display) |
| 3 | `input/fsh/profiles/Behandlungsepisode/mii-pr-mtb-behandlungsepisode.fsh` | 130+3 (Slicing) |
| 4 | `input/fsh/examples/mii-exa-mtb-kim-musterperson-medikation.fsh` | 68+21 (OPS) |
| 5 | `input/fsh/examples/mii-exa-mtb-kim-musterperson-therapieplan.fsh` | 34+12 (CarePlan) |
| 6 | `input/fsh/profiles/Beschluss-Therapieplan/mii-ex-mtb-*.fsh` | 18 (Extension) ✅ |

## Notes

- Validation artifacts saved to `/tmp/mtb-validation/`
- CI Run: https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/actions/runs/20142184276
- Analysis files created: 2025-12-11
- MCP terminology server configured globally in `~/.claude/settings.json`
