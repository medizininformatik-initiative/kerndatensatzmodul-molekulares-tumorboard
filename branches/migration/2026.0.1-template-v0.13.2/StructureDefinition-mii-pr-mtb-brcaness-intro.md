<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/BRCAness-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes BRCAness. BRCAness describes that the tumor exhibits characteristics resembling those of a BRCA mutation (regardless of whether a BRCA mutation is actually present or the characteristics have another cause). Tumors with BRCAness exhibit a homologous recombination deficiency (HRD).

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Molekulares Tumorboard (molecular tumor board) module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-brcaness```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

3. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Usage notes: Further information on searching for "subject" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

4. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example```

    Usage notes: Further information on searching for "subject" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example```

    Usage notes: Further information on searching for "focus" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

6. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/example```

    Usage notes: Further information on searching for "encounter" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

7. The search parameter "interpretation" MUST be supported:

    Examples:

    ```GET [base]/Observation?interpretation=http://snomed.info/sct|55446002```

    Usage notes: Further information on searching for "interpretation" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

8. The search parameter "specimen" MUST be supported:

    Examples:

    ```GET [base]/Observation?specimen=Specimen/example```

    Usage notes: Further information on searching for "specimen" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

---
