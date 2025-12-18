# CPL3_CONSTRAINT Errors (34)

**Status:** FIXED (Commit 687b4ee)
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

## Fix Applied

**Commit:** 687b4ee
**Date:** 2025-12-18

Applied Option A: Kept reference only, removed detail fields.

### Changes Made

1. **Removed CPL-3 suppression from advisor.json**
   - Removed `http://hl7.org/fhir/StructureDefinition/CarePlan#cpl-3` from suppression list
   - Kept dom-6 suppression

2. **Fixed CarePlan example**
   - File: `input/fsh/profiles/Beschluss-Therapieplan/mii-exa-mtb-therapieplan-kombinationstherapie.fsh`
   - Removed all `activity.detail.*` assignments
   - Kept only `activity.reference = Reference(mii-exa-mtb-therapieempfehlung-kombinationstherapie)`
   - Added comment explaining the cpl-3 constraint

**Example Fix:**
```fsh
// BEFORE (violated cpl-3):
* activity.reference = Reference(mii-exa-mtb-therapieempfehlung-kombinationstherapie)
* activity.detail.code = $mii-cs-onko-therapie-typ#IZ
* activity.detail.status = #completed

// AFTER (complies with cpl-3):
* activity.reference = Reference(mii-exa-mtb-therapieempfehlung-kombinationstherapie)
// Note: activity.detail removed to comply with FHIR constraint cpl-3
// (Provide a reference or detail, not both)
```

**Result:**
- All 34 CPL-3 constraint violations resolved
- CarePlan now properly references RequestGroup for therapy details
- Therapy information moved to referenced MedicationRequest resources

## Implementation Notes

- The oncology module provides proper slices for CarePlan.activity
- All therapy details are now in the referenced RequestGroup/MedicationRequest resources
- This approach follows FHIR best practice: use references to avoid duplication
