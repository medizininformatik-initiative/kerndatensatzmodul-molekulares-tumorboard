<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Studieneinschlussempfehlung/Studieneinschluss-Anfrage-ServiceRequest.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes a request for study inclusion as part of the study inclusion recommendation.

### Status

The status of a request for study inclusion refers to its implementation state. It is recommended to use the following status values for the described situations:

|Value of `status`|Description|
|-|-|
|`draft`|Request not yet sent|
|`active`|Request sent, decision pending|
|`revoked`|Request sent, no study inclusion (rejected or deceased, reason given under `statusReason`|
|`completed`|Patient successfully included|

*Note: The status should be semantically aligned with that of the decided Therapieplan (therapy plan) (see [Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.html)).*

### Links to other resources

The study request links via `ServiceRequest.reasonsReference` to the oncological diagnosis. The corresponding study can point via a reference to a `ResearchStudy` with details on the actual study project.

The extension `Priorität` refers to the prioritization of a study inclusion recommendation in relation to other therapy recommendations. It is conceivable that the priority is adjusted dynamically when other therapy options cease to apply, while the priority on the therapy recommendations can persist unchanged.

The extension `Publikation` refers to relevant material related to the study project. This can be the results study (particularly when integrating therapy course data that dates back some time). At the same time, study protocols or similar can already be referenced here during the study's runtime.

### Content

Mapping dataset to FHIR

<span style="color:red;font-weight:bold">TODO: adapt FHIR LM to profile</span>

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

3. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?status=active```

    Usage notes: Further information on searching by "status" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token)

4. The search parameter "intent" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?status=proposal```

    Usage notes: Further information on searching by "intent" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token)

5. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?category=110465008```

    Usage notes: Further information on searching by "category" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token)

6. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?code=02475000```

    Usage notes: Further information on searching by "code" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token)

7. The search parameter "reason-reference" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?reason-reference=MII_PR_MTB_Diagnose_Primaertumor/example```

    Usage notes: Further information on searching by "reason-reference" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference)

8. The search parameter "supporting-info" MUST be supported:

    Examples:

    ```GET [base]/ServiceRequest?supporting-info=ResearchStudy/example```

    Usage notes: Further information on searching by "supporting-info" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference)

**Examples**

Example: Study inclusion request for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.html))

---
