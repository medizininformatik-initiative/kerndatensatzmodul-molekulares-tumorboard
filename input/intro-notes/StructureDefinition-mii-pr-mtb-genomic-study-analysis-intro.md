<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Genomics-Study-Analysis-Procedure.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the Genomics Study Analysis.

This profile describes the Genomics Study.
Since the structure, scope, and content of genomic analysis reports differ significantly from other diagnostic reports (laboratory, imaging, pathology, microbiology...), a GenomicStudy resource was introduced in FHIR R5 that contains all relevant data elements. 
* https://hl7.org/fhir/R5/genomicstudy.html
* https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study.html

Since many national and international organizations continue to rely on FHIR R4, there was an official backport, so that the contents of an R5 GenomicStudy can be represented via a superordinate GenomicStudy procedure and subordinate GenomicStudyAnalysis procedures. 
The GenomicStudyAnalysis contains precise data on the devices used, methodology, reference genome, etc. 

### Links to other resources

The GenomicStudyAnalysis is linked to the NGS-Bericht (NGS report) via the GenomicStudy. 
The GenomicStudyAnalysis itself contains references to other devices and materials, which are represented in FHIR as Device resources. For this purpose, in the present 

### Content

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/genomic-study-analysis```

    Usage notes: Further information on searching for "_profile" can be found in the 
    [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Procedure?focus=Condition/example-mii-mtb-diagnose```

    Usage notes: Further information on searching for "focus" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

4. The search parameter "specimen" MUST be supported:

    Examples:

    ```GET [base]/Procedure?specimen=Specimen/example-mii-mtb-specimen```

    Usage notes: Further information on searching for "specimen" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "device" MUST be supported:

    Examples:

    ```GET [base]/Procedure?device=Device/example-mii-molgen-device-sequencer```

    Usage notes: Further information on searching for "device" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

6. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Procedure?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Usage notes: Further information on searching for "category" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

**Examples**
### GenomicStudy

---
