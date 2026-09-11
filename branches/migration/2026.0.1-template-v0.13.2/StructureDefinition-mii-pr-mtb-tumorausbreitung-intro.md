<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Tumorausbreitung-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the general tumor spread, e.g. at the time of diagnosis or of registration for the Molekulares Tumorboard (molecular tumor board).

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

3. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|105511-0```

    Usage notes: Further information on searching by "code" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Observation?category=http://snomed.info/sct|473302008```

    Usage notes: Further information on searching by "category" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example```

    Usage notes: Further information on searching by "subject" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

6. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/example```

    Usage notes: Further information on searching by "encounter" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

7. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Observation?date=eq2021-06-10```

    Usage notes: Further information on searching by "date" can be found in the [FHIR base specification - section "Date Search"](https://hl7.org/fhir/R4/search.html#date).

8. The search parameter "combo-value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?combo-value-concept=http://snomed.info/sct|255127006```

    Usage notes: Further information on searching by "combo-value-concept" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

**Examples**

Example: MTB case decision for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.html))

[mii-vs-mtb-tumorausbreitung](ValueSet-mii-vs-mtb-tumorausbreitung.html)
