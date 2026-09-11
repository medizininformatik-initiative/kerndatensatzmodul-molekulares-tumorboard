<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genetische-Implikationen/Diagnostische-Implikation-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

The profile describes the annotation of therapy options based on molecular characteristics (e.g. genetic variants, immunohistochemical findings).
This particularly concerns the presumed pathogenicities of the present variants / genotypes. An implication can arise from individual variants / biomarkers or from the combination of several of them.

Diagnostic implications are knowledge artifacts that can change with the current state of knowledge. This, together with the fact that an evidence item may be updated regularly, led to the Clinical Genomics team's modeling decision to keep the diagnostic implication separate from the actual variant description. This profile is related to the therapeutic implication profile, which is used primarily for the notation of therapy options.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=example-mii-molgen-variante-1```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnostische-implikation```

    Usage notes: Further information on searching by "_profile" can be found in the 
    [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Usage notes: Further information on searching by "category" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|diagnostic-implication```

    Usage notes: Further information on searching by "code" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example-mii-mtb-patient```

    Usage notes: Further information on searching by "subject" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

6. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose```

    Usage notes: Further information on searching by "focus" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

7. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/12345```

    Usage notes: Further information on searching by "encounter" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

---
