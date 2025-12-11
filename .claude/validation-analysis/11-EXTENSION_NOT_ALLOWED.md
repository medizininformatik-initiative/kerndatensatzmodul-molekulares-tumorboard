# EXTENSION_NOT_ALLOWED Errors (18)

**Status:** TODO
**Priority:** 11

## Problem

Extensions are used in contexts where they're not defined.

## Sample Errors

```
The extension https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung is not allowed to be used at this point

The extension https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinienbehandlung-status is not allowed to be used at this point
```

## Root Cause

Extensions have limited `Context` declarations.

**File:** `input/fsh/profiles/Beschluss-Therapieplan/mii-ex-mtb-empfehlung-evidenzgraduierung.fsh`

```fsh
Extension: MII_EX_MTB_Empfehlung_Evidenzgraduierung
Context: RequestGroup, MedicationRequest  // <-- Limited contexts!
```

But extension is being used on:
- Observation (DiagnostischeImplikation)
- CarePlan activities
- Other resources

## Fix

Expand the Context to include all resources where the extension is used:

```fsh
Extension: MII_EX_MTB_Empfehlung_Evidenzgraduierung
Context: RequestGroup, MedicationRequest, Observation, CarePlan.activity
```

## Extensions to Update

1. `mii-ex-mtb-empfehlung-evidenzgraduierung.fsh`
2. `mii-ex-mtb-leitlinienbehandlung-status.fsh`
3. `mii-ex-mtb-empfehlung-prioritaet.fsh`
4. `mii-ex-mtb-empfehlung-evidenzgraduierung-publikation.fsh`

## Files Location

`input/fsh/profiles/Beschluss-Therapieplan/mii-ex-mtb-*.fsh`

## Notes

- Context is strict - extension can ONLY be used where declared
- Adding contexts is safe and backward compatible
- Consider if extension really belongs on these resources
