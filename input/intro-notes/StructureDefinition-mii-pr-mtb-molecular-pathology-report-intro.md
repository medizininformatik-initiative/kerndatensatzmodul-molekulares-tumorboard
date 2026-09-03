<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Molekular-Pathologie-Befund-DiagnosticReport.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the molecular pathology report.

### Content

Mapping of the data set to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molecular-pathology-report```

    Usage notes: Further information on searching by "_profile" can be found in the 
    [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?subject=Patient/example-mii-mtb-patient```

    Usage notes: Further information on searching by "subject" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

4. The search parameter "issued" MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?issued=2025-05-22```

    Usage notes: Further information on searching by "issued" can be found in the 
    [FHIR base specification - section "date"](https://hl7.org/fhir/R4/search.html#date).

**Examples**

---
