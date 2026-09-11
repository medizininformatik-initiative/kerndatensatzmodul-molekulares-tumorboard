<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Biopsie-Auftrag-ServiceRequest.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes a recommendation for a rebiopsy.

A frequent reason is a tumor cell content that is too low in the original sample, or the age of the sample. This new biopsy can subsequently be examined again by molecular pathology and/or by next generation sequencing. Each of these results in an additional `DiagnosticReport`.

It is open for discussion whether a rebiopsy that is performed during the diagnostic process within the scope of the Molekulares Tumorboard (molecular tumor board) is part of the final therapy recommendations, or is merely tracked as an additional rebiopsy request on the Behandlungsepisode (treatment episode).

### Status

The status of a rebiopsy request refers to its state of implementation. It is recommended to use the following status values for the situations described:

|Value of `status`|Description|
|-|-|
|`draft`|Planned, not requested|
|`active`|Biopsy|
|`completed`|Completed|

*Note: The status should be semantically aligned with that of the decided Therapieplan (therapy plan) (see [Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.html)).*

### Content

Mapping of the data set to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?code=http://snomed.info/sct|86273004```

    Usage notes: Further information on searching by "code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token)

4. The search parameter "reason-reference" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?reason-reference=Observation/example```

    Usage notes: Further information on searching by "reason-reference" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference)

5. The search parameter "specimen" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?specimen=Specimen/example```

    Usage notes: Further information on searching by "specimen" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference)

**Examples**

Example: Rebiopsy request for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.html))

---
