<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Genomic-Study-Procedure.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the Genomics Study.
Since the structure, scope, and content of genomic analysis reports differ significantly from other diagnostic reports (laboratory, imaging, pathology, microbiology...), a GenomicStudy resource was introduced in FHIR R5 that contains all relevant data elements.
* https://hl7.org/fhir/R5/genomicstudy.html
* https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study.html

Since many national and international organizations continue to rely on FHIR R4, there was an official backport, so that the contents of an R5 GenomicStudy can be represented via a superordinate GenomicStudy procedure and subordinate GenomicStudyAnalysis procedures.

### Content

Mapping of the data set to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study```

    Usage notes: Further information on searching by "_profile" can be found in the 
    [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/Procedure?status=completed```

    Usage notes: Further information on searching by "Procedure.status" can be found in the 
    [FHIR base specification - section "Token Search".](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Procedure?code=Panel sequencing```

    Usage notes: Further information on searching by "code" can be found in the 
    [FHIR base specification - section "Token Search".](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Procedure?subject=Patient/1234```

    Usage notes: Further information on searching by "subject" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

6. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Procedure?encounter=Encounter/1234```

    Usage notes: Further information on searching by "encounter" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

---
