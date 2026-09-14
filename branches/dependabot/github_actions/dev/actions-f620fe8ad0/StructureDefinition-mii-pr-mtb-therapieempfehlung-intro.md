<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Therapieempfehlung-MedicationRequest.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes a therapy recommendation for systemic (drug-based) therapy. It is based on the MedicationRequest profile of the base module Medication.

With `MedicationRequest`, both recommendations and prescriptions can theoretically be represented. However, since the Molekulares Tumorboard (molecular tumor board) is frequently not located in the same institution as the treating oncologists, the recommendations are modeled as such (`intent = proposal`).

The specification of the active substances SHOULD, where possible, be done via ATC, although other classification systems can theoretically also be used. It should be noted that a therapy recommendation can frequently be issued at the level of an active substance group - in that case the active substance group can be coded as ATC. If a specific active substance is named in the recommendation, both the substance class and the substance can be represented within the same coding.

Recommendations for combination therapies are represented using the Kombinationstherapie-Empfehlung (combination therapy recommendation) profile, since the evidence for single and combination therapies frequently differs.

### Status

The status of a therapy recommendation refers to its state of implementation. It is recommended to use the following status values for the situations described:

|Value of `status`|Description|
|-|-|
|`draft`|Not implemented|
|`active`|Being implemented|
|`completed`|Completed or discontinued (patient deceased)|

*Note: The status should be semantically aligned with that of the decided Therapieplan (therapy plan) (see [Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.html)).*

### Relationships to other resources

A Therapieplan can reference any number of `MedicationRequest`s under `CarePlan.activity.reference`. Systemic therapies and medication administrations that were actually carried out reference the request via `Procecure.basedOn` and `MedicationStatement.basedOn`, respectively. This assignment is facilitated when the ATC active substance group is coded in both the `MedicationRequest` and the `MedicationStatement`.

Via `MedicationRequest.reasonReference`, relevant findings as well as the diagnosis can be linked.

### Content

Mapping of the data set to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/MedicationRequest?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/MedicationRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

3. The search parameter "identifier" MUST be supported:

    Examples:

    ```GET [base]/MedicationRequest?identifier=urn:fdc:medizininformatik-initiative.de:mtb-medications|0001```

    Usage notes: Further information on searching by "identifier" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/MedicationRequest?status=final```

    Usage notes: Further information on searching by "status" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "intent" MUST be supported:

    Examples:

    ```GET [base]/MedicationRequest?intent=final```

    Usage notes: Further information on searching by "intent" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

6. The search parameter "medication" MUST be supported:

    Examples:

    ```GET [base]/MedicationRequest?medication=Medication/example```

    Usage notes: Further information on searching by "medication" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

7. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/MedicationRequest?subject=Patient/example```

    Usage notes: Further information on searching by "subject" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

8. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/MedicationRequest?encounter=Encounter/example```

    Usage notes: Further information on searching by "encounter" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

9. The search parameter "authoredOn" MUST be supported:

    Examples:

    ```GET [base]/MedicationRequest?authoredon=eq2025-01-14```

    Usage notes: Further information on searching by "authoredon" can be found in the [FHIR base specification - section "date"](https://hl7.org/fhir/R4/search.html#date).

10. The search parameter "requester" MUST be supported:

    Examples:

    ```GET [base]/MedicationRequest?requester=Practitioner/example```

    Usage notes: Further information on searching by "requester" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

11. The search parameter "supporting-info" MUST be supported:

    Examples:

    ```GET [base]/MedicationRequest?supporting-info=Observation/example```

    Usage notes: Further information on searching by "supporting-info" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

Example: Recommendation of a systemic therapy with mirvetuximab soravtansine for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.html))

---
