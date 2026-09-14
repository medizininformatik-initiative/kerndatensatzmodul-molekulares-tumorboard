<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Molekularer-Biomarker-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This abstract profile describes a molecular biomarker in the NGS-Bericht (NGS report). In terms of content, it is based on the molecular biomarker definition of the Clinical Genomic Reporting Implementation Guide STU3, without directly inheriting from it in the commenting version.
It is the basis both for the gene-spanning biomarkers such as HRD, MSI, TMB and BRCAness, and for immunohistochemistry and in-situ hybridization.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molekularer-biomarker```

    Usage notes: Further information on searching by "_profile" can be found in the 
    [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose```

    Usage notes: Further information on searching by "focus" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

---
