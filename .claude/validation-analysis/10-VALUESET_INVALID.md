# VALUESET_INVALID Errors (19)

**Status:** TODO
**Priority:** 10

## Problem

Codes used in examples are not in the bound ValueSets.

## Sample Errors

```
None of the codings provided are in the value set 'MII VS Response Befund Beurteilung'
None of the codings provided are in the value set 'MII VS Onkologie Verlauf Lymphknoten'
```

## Analysis

### 1. MII VS Response Befund Beurteilung
- Example uses code not in ValueSet
- Need to check what codes are allowed

### 2. MII VS Onkologie Verlauf Lymphknoten
- Lymph node status code not in bound ValueSet
- May be from external Onkologie module

## Fix Options

### Option A: Change code in example
Use a code that IS in the ValueSet

### Option B: Expand ValueSet
Add missing codes to the ValueSet (if appropriate)

### Option C: Change binding strength
If example binding, consider `preferred` instead of `required`

## Investigation Needed

1. Find the ValueSet definitions
2. List allowed codes
3. Compare with codes used in examples
4. Determine correct fix approach

## Files to Check

ValueSet definitions:
- `input/fsh/terminologies/`
- May be inherited from dependency packages

Example files using these ValueSets:
- Response Befund examples
- Verlauf/Follow-up examples
