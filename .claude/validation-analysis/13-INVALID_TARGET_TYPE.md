# INVALID_TARGET_TYPE Errors (12)

**Status:** TODO
**Priority:** 13

## Problem

Reference targets are wrong resource types.

## Error Message

```
Invalid Resource target type. Found MedicationRequest, but expected one of ([CarePlan])
```

## Root Cause

**File:** `input/fsh/examples/mii-exa-mtb-kim-musterperson-therapieplan.fsh`

A reference element is constrained to only accept CarePlan, but a MedicationRequest is being referenced.

## Analysis

This could be:
1. **Profile constraint too strict** - Profile should allow MedicationRequest
2. **Wrong reference in example** - Example should reference a CarePlan
3. **Wrong element used** - Should use different reference element

## Fix Options

### Option A: Fix the profile
Expand allowed types:
```fsh
* someReference only Reference(CarePlan or MedicationRequest)
```

### Option B: Fix the example
Reference correct resource type:
```fsh
* someReference = Reference(SomeCarePlan)  // not MedicationRequest
```

### Option C: Use correct element
Maybe a different element is meant for MedicationRequest references.

## Investigation Needed

1. Find which element has the constraint
2. Check if constraint is intentional
3. Determine if example or profile needs fixing
