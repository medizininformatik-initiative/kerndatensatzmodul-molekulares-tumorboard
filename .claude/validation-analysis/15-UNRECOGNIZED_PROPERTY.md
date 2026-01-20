# UNRECOGNIZED_PROPERTY Errors (2)

**Status:** FIXED
**Priority:** 15
**Fixed:** 2025-12-11

## Problem

Unknown properties in FHIR resources.

## Error Message

```
Bundle.entry[143].resource.extension[2]: Unrecognized property 'valueString'
```

## Root Cause Found

Entry 143 is `mii-exa-mtb-request-group-lunresertib-camonsertib` (RequestGroup).
Extension `mii-ex-mtb-empfehlung-publikation` had BOTH `valueIdentifier` AND `valueString`.

This happened because the example used two RuleSets that both added values to the same extension:
```fsh
* insert BeschlussEvidenz(m1B, http://doi.org, 10.1158/1535-7163.TARG-23-PR008)  // adds valueIdentifier
* insert BeschlussEvidenzQuelle(https://www.reparerx.com/...)  // adds valueString - CONFLICT!
```

SUSHI merged them into one extension with both value types, which is invalid.

## Fix Applied

1. Removed line 149 in `input/fsh/examples/mii-exa-mtb-kim-musterperson-therapieempfehlungen.fsh`
2. Removed unused `BeschlussEvidenzQuelle` RuleSet from `input/fsh/examples/aliases-rulesets.fsh`
3. **Breaking Change:** Simplified `MII_EX_MTB_Empfehlung_Publikation` extension to only allow `Identifier` (removed `string`)
   - URLs can be represented as `Identifier` with `system=urn:ietf:rfc:3986`

## Files Modified

- `input/fsh/examples/mii-exa-mtb-kim-musterperson-therapieempfehlungen.fsh` (line 149)
- `input/fsh/examples/aliases-rulesets.fsh` (lines 15-16)
- `input/fsh/profiles/Beschluss-Therapieplan/mii-ex-mtb-empfehlung-evidenzgraduierung-publikation.fsh` (simplified to Identifier only)

## Verification

After fix, extension[2] only has `valueIdentifier`:
```json
{
  "valueIdentifier": {
    "system": "http://doi.org",
    "value": "10.1158/1535-7163.TARG-23-PR008"
  },
  "url": ".../mii-ex-mtb-empfehlung-publikation"
}
```
