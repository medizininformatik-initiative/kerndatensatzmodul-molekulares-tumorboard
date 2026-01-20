# UNCATEGORIZED Errors (111)

**Status:** TODO
**Priority:** 4

## Problem

Mixed bag of errors not fitting other categories.

## Major Subcategories

### 1. Missing Snapshots (Major)
```
StructureDefinition https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie|2024.0.0-ballot has no snapshot - validation is against the snapshots
```

**Cause:** Profile definitions missing snapshot generation
**Fix:** Usually a SUSHI/IG Publisher issue, may need to rebuild

### 2. ValueSet Code Not Found
```
The code provided (http://fhir.de/CodeSystem/bfarm/atc#L01FX26) was not found in the value set 'MII VS Medikation ATC'
```

**Cause:** ATC code not in bound ValueSet
**Fix:** Add code to ValueSet or change binding strength

### 3. Other Mixed Errors
Various structural and validation issues

## Investigation Needed

1. Run SUSHI with snapshot generation enabled
2. Check IG Publisher output for snapshot errors
3. Identify specific ValueSet binding issues
4. Categorize remaining errors

## Potential Suppressions

Some errors may need suppression if:
- External terminology server limitations
- Intentional deviations documented
- Known IG Publisher bugs
