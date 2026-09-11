<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Mikrosatelliteninstabilitaet-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes microsatellite instability (MSI). It allows the raw measured value to be given as a Quantity, as well as the clinically more relevant interpretation.

Two different interpretation scales exist: on the one hand `MSI-H | MSI-L | Stable`, on the other hand `Stable | Unstable | Indeterminate`. The present profile permits both kinds of interpretation.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=1234```

    Usage notes: Further information on searching by "_id" can be found in the 
    [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet```

    Usage notes: Further information on searching by "_profile" can be found in the 
    [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/Observation?status=final```

    Usage notes: Further information on searching by "status" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Usage notes: Further information on searching by "category" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|69548-6```

    Usage notes: Further information on searching by "code" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

6. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example-mii-mtb-patient```

    Usage notes: Further information on searching by "subject" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

7. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose```

    Usage notes: Further information on searching by "focus" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

8. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/12345```

    Usage notes: Further information on searching by "encounter" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

9. The search parameter "interpretation" MUST be supported:

    Examples:

    ```GET [base]/Observation?interpretation=http://loinc.org|LA14122-8```

    Usage notes: Further information on searching by "interpretation" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

10. The search parameter "method" MUST be supported:

    Examples:

    ```GET [base]/Observation?method=http://loinc.org|LA26398-0```

    Usage notes: Further information on searching by "method" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

11. The search parameter "specimen" MUST be supported:

    Examples:

    ```GET [base]/Observation?specimen=Encounter/12345```

    Usage notes: Further information on searching by "specimen" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

---
