<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Human-genetische-Beratung-Auftrag-ServiceRequest.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes a recommendation for human genetic counseling.

This can occur, for example, when germline variants are reported in close relatives, as well as for clarification of an increased risk for certain cancer entities. It can also occur on the basis of an incidental finding from a more comprehensive sequencing (e.g. whole exome), if the patient has consented to being notified about incidental findings.  

### Status

The status of an order for human genetic counseling refers to its implementation state. It is recommended to use the following status values for the situations described:

|Value of `status`|Description|
|-|-|
|`draft`|Not implemented|
|`active`|Being implemented|
|`completed`|Completed or discontinued (patient deceased)|

*Note: The status should be semantically aligned with that of the decided Therapieplan (therapy plan) (see [Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.html)).*

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

4. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?code=http://snomed.info/sct|788339009```

    Usage notes: Further information on searching for "code" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#token)

4. The search parameter "reason-code" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?reason-code=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-auftrag-begruendung|other```

    Usage notes: Further information on searching for "reason-code" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#token)

5. The search parameter "specimen" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?specimen=Specimen/example```

    Usage notes: Further information on searching for "specimen" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference)

**Examples**

Example: Order for human genetic counseling for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.html))

---
