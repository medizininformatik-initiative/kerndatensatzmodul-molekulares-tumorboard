# PROFILE_MISMATCH Errors (31)

**Status:** TODO
**Priority:** 8

## Problem

Referenced resources don't match expected profile constraints.

## Sample Errors

```
Unable to find a profile match for Condition/mii-exa-mtb-kim-diagnose among choices:
  - http://hl7.org/fhir/StructureDefinition/Condition
  - https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor

Unable to find a profile match for ClinicalImpression/mii-exa-mtb-kim-musterperson-behandlungsepisode among choices: ...

Unable to find a profile match for Procedure/MII-EXA-MTB-Systemische-Therapie-1 among choices: ...

Unable to find a profile match for Condition/PatientKimMusterperson-PrimaryDiagnosis-2 among choices: ...
```

## Root Cause

**File:** `input/fsh/examples/mii-exa-mtb-kim-musterperson-behandlungsepisode.fsh`

References in the Behandlungsepisode (ClinicalImpression) point to resources that:
1. Don't exist in the Bundle
2. Don't conform to the required profile
3. Are defined with wrong InstanceOf

## Fix Strategy

For each mismatched reference:

### 1. Check if referenced instance exists
```bash
grep -rn "Instance: mii-exa-mtb-kim-diagnose" input/fsh/
```

### 2. Verify InstanceOf matches required profile
```fsh
// Wrong:
Instance: mii-exa-mtb-kim-diagnose
InstanceOf: Condition  // Generic!

// Correct:
Instance: mii-exa-mtb-kim-diagnose
InstanceOf: MII_PR_MTB_Diagnose_Primaertumor  // Specific profile!
```

### 3. Ensure instance is in Bundle
Add missing instances to bundle file.

## Instances to Fix

1. `mii-exa-mtb-kim-diagnose` - needs MII_PR_MTB_Diagnose_Primaertumor
2. `MII-EXA-MTB-Systemische-Therapie-1` - check profile
3. `PatientKimMusterperson-PrimaryDiagnosis-2` - check profile
