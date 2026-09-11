<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/RNA-Fusion-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the RNA fusion in the NGS-Bericht (NGS report).
The correct, precise, and standardized representation of fusion variants has so far not been possible via the Clinical Genomics Reporting Implementation Guide. Internationally, the GA4GH is working on a precise, human- and machine-readable representation (Variation Representation Specification, VRS), which is establishing itself as the standard for exchange between the publicly accessible databases (ClinVar, OnkoKB, VICC).
 
In order to be able to describe RNA fusions already now, a simplified approach is taken here, based on the dnpm definition, using the formal description of the involved 5' and 3' elements chromosome, gene, and coordinates.

The 5' fusion partner is represented by several elements in the component slice: \
MII_PR_MTB_RNA_Fusion.component[five-prime-gene], MII_PR_MTB_RNA_Fusion.component[five-prime-transcript-id],
MII_PR_MTB_RNA_Fusion.component[five-prime-exon-id], MII_PR_MTB_RNA_Fusion.component[five-prime-position] and MII_PR_MTB_RNA_Fusion.component[five-prime-strand].
The 3' fusion partner analogously with MII_PR_MTB_RNA_Fusion.component[three-prime-...].

#### Coding of the strand orientation

For coding the strand orientation (plus/minus strand), the [Sequence Ontology](http://www.sequenceontology.org) is used:

| Strand | Synonyms | Sequence Ontology Code |
|--------|----------|------------------------|
| Plus (+) | Watson, sense, coding, 5'→3' | `SO:0002262` (Watson_strand) |
| Minus (-) | Crick, antisense, template, 3'←5' | `SO:0002263` (Crick_strand) |

System URL: `http://www.sequenceontology.org`

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

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-rna-fusion```

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

8. The search parameter "method" MUST be supported:

    Examples:

    ```GET [base]/Observation?method=http://loinc.org|LA26398-0```

    Usage notes: Further information on searching by "method" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

9. The search parameter "specimen" MUST be supported:

    Examples:

    ```GET [base]/Observation?specimen=Specimen/example-mii-mtb-specimen```

    Usage notes: Further information on searching by "specimen" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

10. The search parameter "device" MUST be supported:

    Examples:

    ```GET [base]/Observation?device=Device/example-mii-molgen-device-sequencer```

    Usage notes: Further information on searching by "device" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

11. The search parameter "component-code" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-code=http://loinc.org|48018-6```

    Usage notes: Further information on searching by "component-code" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

12. The search parameter "component-code-value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-code-value-concept=http://loinc.org|    48018-6$http://www.genenames.org/geneId|HGNC:1097```

    Usage notes: Further information on searching by "component-code-value-concept" can be found
    in the 
    [FHIR base specification - section "composite"](https://hl7.org/fhir/search.html#composite).

13. The search parameter "component-code-value-quantity" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-code-value-quantity=http://loinc.org|81258-6$ap30%|    http://unitsofmeasure.org|%25```

    Usage notes: Further information on searching by "component-code-value-quantity" can be found
    in the 
    [FHIR base specification - section "composite"](https://hl7.org/fhir/search.html#composite).

14. The search parameter "component-value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-value-concept=http://sequenceontology.org|SO:SO:1000008```

    Usage notes: Further information on searching by "component-value-concept" can be found
    in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

15. The search parameter "component-value-quantity" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-value-quantity=ap30%|http://unitsofmeasure.org|%25```

    Usage notes: Further information on searching by "component-value-quantity" can be found
    in the 
    [FHIR base specification - section "composite"](https://hl7.org/fhir/search.html#composite).

**Examples**

---
