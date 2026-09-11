<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Histologie-Evaluation-Auftrag-ServiceRequest.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes a recommendation for a histological re-evaluation.

This can be done, among other reasons, when the original findings were not conclusive or when, due to certain markers, a specific detection method for proteins (e.g. via IHC), nucleic acids (e.g. via ISH), or other special stains becomes necessary.

### Status

The status of a histology evaluation request refers to its state of implementation. It is recommended to use the following status values for the situations described:

|Value of `status`|Description|
|-|-|
|`draft`|Not implemented|
|`active`|Being implemented|
|`completed`|Completed or discontinued (patient deceased)|

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

    ```GET [base]/ServiceRequest?code=http://snomed.info/sct|183825009```

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

Example: Request for histological evaluation for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.html))

---
