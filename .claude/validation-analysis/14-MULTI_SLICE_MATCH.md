# MULTI_SLICE_MATCH Errors (3)

**Status:** FIXED
**Priority:** 14
**Fixed:** 2025-12-11

## Problem

Elements match more than one slice definition.

## Error Message

```
Profile https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode|2024.0.0-ballot, Element matches more than one slice - Einwilligung, Vorbefund
```

## Root Cause

**File:** `input/fsh/profiles/Behandlungsepisode/mii-pr-mtb-behandlungsepisode.fsh`

The `supportingInfo` slicing had overlapping slice definitions:

```fsh
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "$this.resolve()"

* supportingInfo contains Einwilligung 0..1 MS
* supportingInfo[Einwilligung] only Reference(MII_PR_MTB_Consent_Given)

* supportingInfo contains Vorbefund 0..* MS
* supportingInfo[Vorbefund] only Reference(DiagnosticReport or Observation)
```

**Problem:** `MII_PR_MTB_Consent_Given` is a profile of Observation.
When a Consent Observation is provided, it matches BOTH:
- Einwilligung (via specific profile)
- Vorbefund (via generic Observation)

## Fix Applied

Moved `Einwilligung` from `supportingInfo` to `investigation` slice:

```fsh
* investigation contains Einwilligung 0..1 MS
* investigation[Einwilligung].code.coding = $LNC#105511-0 "Was consent given"
* investigation[Einwilligung].item 1..1
* investigation[Einwilligung].item only Reference(MII_PR_MTB_Consent_Given)
```

This works because:
1. `investigation` uses `#value` discriminator on `code.coding` - no overlap possible
2. Semantically, "Was consent given?" fits better as an investigation/assessment
3. No changes needed to the Consent Observation profile itself

## Files Modified

- `input/fsh/profiles/Behandlungsepisode/mii-pr-mtb-behandlungsepisode.fsh`
- `input/fsh/examples/mii-exa-mtb-kim-musterperson-behandlungsepisode.fsh`
- `input/fsh/profiles/Behandlungsepisode/mii-exa-mtb-behandlungsepisode.fsh`

## Breaking Change

Examples must change from:
```fsh
* supportingInfo[Einwilligung] = Reference(...)
```
to:
```fsh
* investigation[Einwilligung].item = Reference(...)
```
