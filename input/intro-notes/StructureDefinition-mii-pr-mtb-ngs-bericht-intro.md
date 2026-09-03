<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/NGS-Bericht-DiagnosticReport.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the NGS-Bericht (NGS report), which references the patient and the specimen and contains several Observations as result elements.
The metadata of the report (devices, kits, library) are coded via GenomicStudy / GenomicStudyAnalysis.  

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?_id=1234```

    Usage notes: Further information on searching for "_id" can be found in the 
    [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht```

    Usage notes: Further information on searching for "_profile" can be found in the 
    [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?subject=Patient/example-mii-mtb-patient```

    Usage notes: Further information on searching for "subject" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

4. The search parameter "issued" MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?issued=2022-07-13```

    Usage notes: Further information on searching for "issued" can be found in the 
    [FHIR base specification - section "date"](https://hl7.org/fhir/R4/search.html#date).

5. The search parameter "specimen" MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?specimen=Specimen/example-mii-mtb-specimen```

    Usage notes: Further information on searching for "specimen" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

6. The search parameter "result" MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?result=Observation/example-mii-mtb-variante-1```

    Usage notes: Further information on searching for "result" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

---
