<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/Copy-Number-Variant-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the copy number variant.
A CNV can encompass only a single gene segment, a gene, or a chromosome segment with multiple genes. 
To account for this fact, the following data points were developed by dnpm in addition to the HL7 Clinical Genomics Reporting Implementation Guide: 
* Total number of CNVs
* Number of the individual alleles A and B
* Relative copy number
* Focality
* Affected genes
* Copy-number-neutral loss of heterozygosity

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=1234```

    Usage notes: Further information on searching for "_id" can be found in the 
    [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-copy-number-variant```

    Usage notes: Further information on searching for "_profile" can be found in the 
    [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

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

    ```GET [base]/Observation?code=http://loinc.org|69548-6```

    Usage notes: Further information on searching for "code" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

6. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example-mii-mtb-patient```

    Usage notes: Further information on searching for "subject" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

7. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose```

    Usage notes: Further information on searching for "focus" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

8. The search parameter "method" MUST be supported:

    Examples:

    ```GET [base]/Observation?method=http://loinc.org|LA26398-0```

    Usage notes: Further information on searching for "method" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

9. The search parameter "specimen" MUST be supported:

    Examples:

    ```GET [base]/Observation?specimen=Specimen/example-mii-mtb-specimen```

    Usage notes: Further information on searching for "specimen" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

10. The search parameter "device" MUST be supported:

    Examples:

    ```GET [base]/Observation?device=Device/example-mii-molgen-device-sequencer```

    Usage notes: Further information on searching for "device" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

11. The search parameter "component-code" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-code=http://loinc.org|48018-6```

    Usage notes: Further information on searching for "component-code" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

12. The search parameter "component-code-value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-code-value-concept=http://loinc.org|    48018-6$http://www.genenames.org/geneId|HGNC:1097```

    Usage notes: Further information on searching for "component-code-value-concept" can be found
    in the 
    [FHIR base specification - section "composite"](https://hl7.org/fhir/search.html#composite).

13. The search parameter "component-code-value-quantity" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-code-value-quantity=http://loinc.org|81258-6$ap30%|    http://unitsofmeasure.org|%25```

    Usage notes: Further information on searching for "component-code-value-quantity" can be found
    in the 
    [FHIR base specification - section "composite"](https://hl7.org/fhir/search.html#composite).

14. The search parameter "component-value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-value-concept=http://sequenceontology.org|SO:SO:1000008```

    Usage notes: Further information on searching for "component-value-concept" can be found
    in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

15. The search parameter "component-value-quantity" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-value-quantity=ap30%|http://unitsofmeasure.org|%25```

    Usage notes: Further information on searching for "component-value-quantity" can be found
    in the 
    [FHIR base specification - section "composite"](https://hl7.org/fhir/search.html#composite).

**Examples**

---
