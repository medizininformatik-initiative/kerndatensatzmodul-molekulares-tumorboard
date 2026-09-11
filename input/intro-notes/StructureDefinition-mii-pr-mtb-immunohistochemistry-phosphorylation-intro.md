<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-Phosphorylation-Observation.page.md; MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/P-Immunhistochemie-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Description

Immunohistochemistry profile for phosphorylation stains.

---

### Content

This profile describes the IHC finding that detects a protein specifically in its phosphorylated form. There are currently no internationally recognized HL7 specifications for the precise and harmonized representation of post-translational modifications.

This profile is therefore intended to provide a first concept for the generalized representation of post-translational modifications, using phosphorylation as an example.
In simplified form, phosphorylated proteins are frequently denoted with the prefix `p-`, e.g. p-AKT.

This coding may be implicitly understandable in everyday clinical-pathological practice and in standardized diagnostic workflows. However, if the information comes from a pathology system in this form, it is not evident downstream (for DIC staff, researchers, etc.) at which position a phosphorylation is present. Therefore, with the dnpm coding, a precise indication of a phosphorylation site is not possible.

Example: The gene Rb-1 has, with serine, a possible phosphorylation site at position 949 (see the p-RB page on UniProt, under the section PRTM/Processing https://www.uniprot.org/uniprotkb/Q13733/entry).
The proteins AKT1, AKT2, and AKT3, on the other hand, have two potential phosphorylation sites that are activated by different enzymes: Thr308 and Ser473, whereby a negative prognosis exists in particular for the detection of the latter mutation.

Several approaches exist for nevertheless distinguishing it from the non-phosphorylated version. For details, refer to the discussion of post-translational modifications on the UniProt page https://www.uniprot.org/help/mod_res:
- Specification of the antibody clone for unambiguous identification of the antibody product used (e.g. via https://www.cellsignal.com/learn-and-support/phosphositeplus-ptm-database or comparable databases)

- Representation of the altered spatial structure of the protein via UniProt
- Reference to a preceding activity

MOD

### Content

Mapping of the data set to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://snomed.info/sct|1234806008```

    Usage notes: Further information on searching by "code" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

3. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose```

    Usage notes: Further information on searching by "focus" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

4. The search parameter "interpretation" MUST be supported:

    Examples:

    ```GET [base]/Observation?interpretation=http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs|high```

    Usage notes: Further information on searching by "interpretation" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "specimen" MUST be supported:

    Examples:

    ```GET [base]/Observation?specimen=Specimen/1234```

    Usage notes: Further information on searching by "specimen" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

---
