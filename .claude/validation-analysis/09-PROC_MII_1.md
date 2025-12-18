# PROC_MII_1 Errors (21)

**Status:** TODO
**Priority:** 9

## Problem

OPS-coded procedures missing required SNOMED-CT category.

## Error Message

```
Constraint failed: proc-mii-1: 'Falls die Prozedur per OPS kodiert wird, MUSS eine SNOMED-CT kodierte Category abgebildet werden'
(If the procedure is coded by OPS, MUST have SNOMED-CT coded category)
```

## Root Cause

**File:** `input/fsh/examples/mii-exa-mtb-kim-musterperson-medikation.fsh`

Procedure examples have OPS codes but missing SNOMED category:

```fsh
// Current (incomplete):
Instance: MTBChemo1Procedure
InstanceOf: MII_PR_MTB_Systemische_Vortherapie
* code.coding[ops] = $OPS#8-543.21 "Some procedure"
// Missing category!

// Required:
Instance: MTBChemo1Procedure
InstanceOf: MII_PR_MTB_Systemische_Vortherapie
* code.coding[ops] = $OPS#8-543.21 "Some procedure"
* category.coding[sct] = $SCT#277132007 "Therapeutic procedure"  // <-- Add this
```

## Common SNOMED Categories for Procedures

| SNOMED Code | Display | Use Case |
|-------------|---------|----------|
| 277132007 | Therapeutic procedure | Chemo, radiation, surgery |
| 103693007 | Diagnostic procedure | Biopsies, imaging |
| 387713003 | Surgical procedure | Operations |
| 18629005 | Administration of drug | Medication administration |

## Files to Update

- `input/fsh/examples/mii-exa-mtb-kim-musterperson-medikation.fsh`
- Other procedure example files with OPS codes

## Related to

- #5 REQUIRED_FIELD (same files need OPS version too)
