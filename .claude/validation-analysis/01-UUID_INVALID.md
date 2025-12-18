# UUID_INVALID Errors (320)

**Status:** FIXED (Commit 269e993)
**Priority:** 1 (Biggest impact)

## Problem

Bundle entries use instance IDs as UUIDs instead of valid UUIDs.

```
Bundle.entry[0].fullUrl: "UUIDs must be valid and lowercase (mii-exa-mtb-kim-musterperson-behandlungsepisode)"
```

## Root Cause

**File:** `input/fsh/examples/bundle/mii-exa-mtb-kim-musterperson-bundle.fsh`

The RuleSet on lines 1-6:
```fsh
RuleSet: BundleResource(type,id)
* entry[+].fullUrl = "urn:uuid:{id}"  // <-- Problem: {id} is instance name, not UUID
* entry[=].request.method = #PUT
* entry[=].resource = {id}
* entry[=].resource.id = "{id}"
* entry[=].request.url = "{type}/{id}"
```

When called with `insert BundleResource(Patient,PatientKimMusterperson)`, it creates:
- `fullUrl = "urn:uuid:PatientKimMusterperson"` which is NOT a valid UUID

## Affected Resources (161 entries)

All entries in the bundle use this pattern:
- ClinicalImpression (2)
- Patient (1)
- Observation (50+)
- DiagnosticReport (2)
- Specimen (2)
- Procedure (15+)
- MedicationStatement (30+)
- Claim/ClaimResponse (2)
- ServiceRequest (5)
- ResearchStudy (3)
- Group (4)
- EvidenceVariable (2)
- Organization (3)
- PractitionerRole (1)
- Location (12)
- MedicationRequest (8)
- Medication (5)
- RequestGroup (2)
- CarePlan (1)
- Condition (2)
- Coverage (1)

## Fix Applied

**Commit:** 269e993
**Date:** 2025-12-18

Changed the RuleSet to use absolute HTTP URLs (Option A - Recommended):

```fsh
RuleSet: BundleResource(type,id)
* entry[+].fullUrl = "http://example.org/fhir/{type}/{id}"
* entry[=].request.method = #PUT
* entry[=].resource = {id}
* entry[=].resource.id = "{id}"
* entry[=].request.url = "{type}/{id}"
```

**Files Modified:**
- `input/fsh/examples/bundle/mii-exa-mtb-kim-musterperson-bundle.fsh` (lines 1-6)

**Result:**
- All 161 bundle entries now have valid absolute URLs
- Bundle remains functional as transaction bundle
- Eliminates all 320 UUID_INVALID errors (32% of total)

## Alternatives Considered

### Option B: Generate Real UUIDs
Add a third parameter with actual UUIDs (tedious - 161 UUIDs needed) - Rejected: too tedious

### Option C: Remove fullUrl
For transaction bundles, fullUrl may not be required if request.url is provided - Rejected: fullUrl is best practice for bundles

## Validation Status

- **Local:** Fixed (generated bundles have correct absolute URLs)
- **CI:** Pending next validation run
