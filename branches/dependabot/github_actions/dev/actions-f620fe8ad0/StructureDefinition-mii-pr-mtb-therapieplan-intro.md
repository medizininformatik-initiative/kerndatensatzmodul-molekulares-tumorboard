<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieplan-CarePlan.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes a Therapieplan (therapy plan) according to the decision of the Molekulares Tumorboard (molecular tumor board).

In terms of content, it is based on the tumor board profile of the Oncology module, in which therapy decisions could already be coded according to the categories of the oBDS. However, since a follow-up monitoring is planned within the scope of the Molekulares Tumorboard, among other things to check the status of the therapy recommendations, the recommendations were modeled here as individual data elements so that they in turn are individually referenceable. 

This applies both to (drug-based) *therapy recommendations* (`MedicationRequest`, or `RequestGroup` for combination therapies) as well as to *study enrollment recommendations* and other *diagnostic procedures and services* such as rebiopsies and human genetic counseling (`ServiceRequest)`.

### Status

The status of a Therapieplan refers to the implementation state of all contained recommendations (see element `activity`). It is recommended to use the following status values for the situations described:

|Value of `status`|Description|
|-|-|
|`active`|Recommendation or therapy option being implemented (normal case)|
|`revoked`|Molecular tumor board case is closed|
|`completed`|All recommendations or therapy options exhausted, or patient deceased|

*Note: The status of a Therapieplan should be semantically consistent with the contained recommendations (the `status` fields).*

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

3. The search parameter "identifier" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?identifier=123456```

    Usage notes: Further information on searching for "identifier" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?status=active```

    Usage notes: Further information on searching for "status" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "intent" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?intent=proposal```

    Usage notes: Further information on searching for "intent" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

6. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?category=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ|praeth```

    Usage notes: Further information on searching for "category" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

7. The search parameter "description" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?description=contains:Musterperson```

    Usage notes: Further information on searching for "description" can be found in the [FHIR base specification - section "String Search"](https://hl7.org/fhir/R4/search.html#string).

8. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?subject=Patient/example```

    Usage notes: Further information on searching for "subject" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

9. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?encounter=Encounter/example```

    Usage notes: Further information on searching for "encounter" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

10. The search parameter "created" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?created=eq2021-06-10```

    Usage notes: Further information on searching for "created" can be found in the [FHIR base specification - section "Date Search"](https://hl7.org/fhir/R4/search.html#date).

11. The search parameter "contributor" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?contributor=Practitioner/example```

    Usage notes: Further information on searching for "contributor" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

12. The search parameter "condition" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?condition=Condition/example```

    Usage notes: Further information on searching for "condition" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

13. The search parameter "activity-reference" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?activity-reference=MedicationRequest/example```

    Usage notes: Further information on searching for "activity-reference" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

14. The search parameter "activity-code" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?activity-code=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ|CH```

    Usage notes: Further information on searching for "activity-code" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

15. The search parameter "outcome-reference" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?outcome-reference=MedicationStatement/example```

    Usage notes: Further information on searching for "outcome-reference" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

<span style="color:red;font-weight:bold">TODO: SP CarePlan.supportingInfo</span>

**Examples**

Example: decision on the MTB case for Kim Musterperson dated 2023-03-28 (see [scenarios](guidance.html))

---
