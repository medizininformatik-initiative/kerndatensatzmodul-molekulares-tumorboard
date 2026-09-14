<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Kombinationstherapie-Empfehlung-RequestGroup.page.md; MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Kombinationstherapie-Empfehlung-RequestGroup-Alias.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes a therapy recommendation for systemic therapy with a combination of several medications.

### Status

The status of a combination therapy recommendation refers to its implementation state. It is recommended to use the following status values for the described situations:

|Value of `status`|Description|
|-|-|
|`draft`|Not implemented|
|`active`|Being implemented|
|`completed`|Completed or discontinued (patient deceased)|

*Note: The status should be semantically aligned with that of the decided Therapieplan (therapy plan) (see [Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.html)).*

### Content

Mapping dataset to FHIR

<span style="color:red;font-weight:bold">TODO: FHIR LM for combination therapy</span>

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

3. The search parameter "identifier" MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?identifier=urn:fdc:medizininformatik-initiative.de:mtb-medications|0001```

    Usage notes: Further information on searching by "identifier" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "intent" MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?intent=final```

    Usage notes: Further information on searching by "intent" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?subject=Patient/example```

    Usage notes: Further information on searching by "subject" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

6. The search parameter "action-resource" MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?action-resource=MedicationRequest/example```

    Usage notes: Further information on searching by "action-resource" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

Example: Recommendation of a combination therapy consisting of Dabrafenib and Trametinib for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.html))

The respective `MedicationRequest`s:

And the `Medication`s:

---

---

### Description

RequestGroup-based profile for combination therapy recommendations.

See also: [TherapieempfehlungKombination](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.html)
