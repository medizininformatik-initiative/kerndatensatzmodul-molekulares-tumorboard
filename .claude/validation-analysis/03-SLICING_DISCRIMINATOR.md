# SLICING_DISCRIMINATOR Errors (130)

**Status:** TODO
**Priority:** 3

## Problem

Slicing discriminators cannot be evaluated for Observation.code.coding slices.

## Sample Errors

```
Slicing cannot be evaluated: Could not match discriminator (code) for slice Observation.code.coding:spezifisch in profile https://www.medizininformatik-initiative.de/...
Slicing cannot be evaluated: Could not match discriminator (code) for slice Observation.code.coding:generisch in profile https://www.medizininformatik-initiative.de/...
```

## Root Cause

**Likely File:** `input/fsh/profiles/` - Observation profiles with code.coding slicing

The slicing definition uses a discriminator that the validator cannot match against the example data.

Typical pattern causing issues:
```fsh
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open

* code.coding contains spezifisch 0..1 MS and generisch 0..1 MS
* code.coding[spezifisch] from SomeSpecificValueSet
* code.coding[generisch] from SomeGenericValueSet
```

## Affected Profiles

Need to identify which profiles define these slices:
- Profiles with `code.coding:spezifisch`
- Profiles with `code.coding:generisch`

## Fix Options

### Option A: Change discriminator type
Use `#value` instead of `#pattern` if matching on exact code

### Option B: Fix example data
Ensure examples provide codes that match the discriminator

### Option C: Simplify slicing
If spezifisch/generisch distinction isn't critical, simplify to single slice

## Investigation Needed

1. Find all profiles with `code.coding` slicing
2. Identify the discriminator type and path
3. Check if examples provide matching data
4. Determine if slicing is correctly defined
