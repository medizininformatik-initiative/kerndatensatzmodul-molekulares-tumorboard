<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Follow-Up-ClinicalImpression.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes information about the administrative process "Follow-Up" and the information collected in the course of it.
As part of this Follow-Up process, the therapies carried out (MII_PR_MTB_Systemische_Therapie) are documented, including the subsequent therapy response and, where applicable, their cost coverage (MII_PR_MTB_Antrag_Kostenuebernahme & MII_PR_MTB_Antwort_Kostenuebernahme). 
In addition, the status of the Therapieplan (therapy plan) ```ClinicalImpression.investigation``` and a justification in case of non-implementation ```ClinicalImpression.statusReason``` are contained here.

### Links to other resources
The Follow-Up ClinicalImpressions all reference the Behandlungsepisode (treatment episode) under ClinicalImpression.previous

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the MTB module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?status=completed```

    Usage notes: Further information on searching for "ClinicalImpression.status" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

4. The search parameter "statusReason" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?statusReson=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-systemische-therapie-status-grund|payment-refused```

    Usage notes: Further information on searching for "ClinicalImpression.statusReason" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

5. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?subject=Patient/example```

    Usage notes: Further information on searching for "ClinicalImpression.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

8. The search parameter "investigation" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?investigation=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-follow-up-status|ongoing```

    Usage notes: Further information on searching for "ClinicalImpression.investigation" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

9. The search parameter "supporting-info" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?supporting-info=MII_PR_MTB_Systemische_Therapie/example```

    Usage notes: Further information on searching for "ClinicalImpression.supportingInfo" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

**Examples**

---
