<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-MMR-MSI-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes DNA mismatch repair (MMR) and microsatellite instability (MSI) in the IHC report.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-msi```

    Usage notes: Further information on searching for "_profile" can be found in the 
    [FHIR base specification - section "Parameters for all resources"](https://hl7.org/fhir/R4/search.html#all).

3. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/Observation?status=final```

    Usage notes: Further information on searching for "status" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Usage notes: Further information on searching for "category" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://snomed.info/sct|1234806008```

    Usage notes: Further information on searching for "code" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

6. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/1234```

    Usage notes: Further information on searching for "subject" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

7. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/1234```

    Usage notes: Further information on searching for "encounter" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

8. The search parameter "specimen" MUST be supported:

    Examples:

    ```GET [base]/Observation?specimen=Specimen/1234```

    Usage notes: Further information on searching for "specimen" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

---
