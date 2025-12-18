# REQUIRED_FIELD Errors (68)

**Status:** TODO
**Priority:** 5

## Problem

Required fields are missing, particularly OPS coding version.

## Sample Errors

```
Coding.version: minimum required = 1, but only found 0 (from http://fhir.de/StructureDefinition/CodingOPS|1.5.3)
Procedure.code.coding:ops.version: minimum required = 1, but only found 0
```

## Root Cause

**File:** `input/fsh/examples/mii-exa-mtb-kim-musterperson-medikation.fsh` (and similar)

German Basisprofil requires OPS codings to have a version:
```fsh
// Missing:
* code.coding[ops].version = "2024"
```

## Affected Resources

All Procedure examples using OPS codes need version field.

## Fix

Add version to all OPS codings in examples:
```fsh
Instance: SomeProcedure
InstanceOf: SomeProcedureProfile
* code.coding[ops] = $OPS#5-123.45 "Some procedure"
* code.coding[ops].version = "2024"  // <-- Add this
```

## Files to Update

- `input/fsh/examples/mii-exa-mtb-kim-musterperson-medikation.fsh`
- Other procedure example files

## Notes

- OPS version format: "2024" (year)
- ICD-10-GM also requires version if used
