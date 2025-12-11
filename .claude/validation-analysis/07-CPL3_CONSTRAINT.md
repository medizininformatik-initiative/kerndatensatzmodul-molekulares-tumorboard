# CPL3_CONSTRAINT Errors (34)

**Status:** TODO
**Priority:** 7

## Problem

CarePlan activities violate FHIR constraint cpl-3.

## Error Message

```
Constraint failed: cpl-3: 'Provide a reference or detail, not both (detail.empty() or reference.empty())'
```

## FHIR Constraint

CarePlan.activity must have EITHER:
- `.reference` (pointer to another resource)
- `.detail` (inline activity details)

NOT BOTH.

## Root Cause

**File:** `input/fsh/examples/mii-exa-mtb-kim-musterperson-therapieplan.fsh`

Example code (lines ~24-28):
```fsh
* activity[Therapieempfehlung][+].reference = Reference(mii-exa-mtb-medication-request-mirvetuximab)
* activity[Therapieempfehlung][=].detail.code = $mii-cs-onko-therapie-typ#IZ
* activity[Therapieempfehlung][=].detail.status = #completed
* activity[Therapieempfehlung][=].outcomeReference = Reference(MTBChemo2Procedure)
```

Problem: Both `.reference` AND `.detail` are populated.

## Fix

Remove one or the other:

### Option A: Keep reference only
```fsh
* activity[Therapieempfehlung][+].reference = Reference(mii-exa-mtb-medication-request-mirvetuximab)
// Remove detail.* lines
```

### Option B: Keep detail only
```fsh
* activity[Therapieempfehlung][+].detail.code = $mii-cs-onko-therapie-typ#IZ
* activity[Therapieempfehlung][=].detail.status = #completed
// Remove reference line
```

## Profile Consideration

Check if the profile `MII_PR_MTB_Therapieplan` enforces both - if so, profile needs fixing too.

**Profile File:** `input/fsh/profiles/Beschluss-Therapieplan/mii-pr-mtb-therapieplan.fsh`
