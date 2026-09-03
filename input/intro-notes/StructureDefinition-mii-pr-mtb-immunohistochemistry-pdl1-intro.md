<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-PDL1-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes a PD-L1 test in the IHC report.
PD-L1 (Programmed-Death Ligand 1) refers to an immunohistochemical detection of the protein.
In particular, the expression pattern on cancer cells as well as the ratio among them is determined. For this purpose

The following scores are represented under `Observation.component`:
* Tumor Proportion Score (TPS) - Score for PD-L1 expression in tumor cells. The TPS is the proportion of PD-L1-positive tumor cells relative to the total cells. 
* Combined Positive Score (CPS) - Score for PD-L1 expression in tumor cells and immune cells. The CPS is the proportion of PD-L1-positive tumor cells and immune cells relative to the total cells.
* Immune Cell Score (ICS) - Score for PD-L1 expression in immune cells. The ICS is the proportion of PD-L1-positive immune cells relative to the total cells. 
* Tumor Cell Score (TC-Score) - Score for PD-L1 expression in tumor cells. The TC-Score is the proportion of PD-L1-positive tumor cells relative to the total cells. 

### Links to other resources
The PD-L1 resource can be included in a molecular pathology report. It can serve as the basis for therapeutic implications. 

### Content

Mapping dataset to FHIR
<--

--->

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://snomed.info/sct|1234806008```

    Usage notes: Further information on searching for "code" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

3. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose```

    Usage notes: Further information on searching for "focus" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

4. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Observation?date=2024-02-08```

    Usage notes: Further information on searching for "date" can be found in the 
    [FHIR base specification - section "date"](https://hl7.org/fhir/R4/search.html#date).

5. The search parameter "interpretation" MUST be supported:

    Examples:

    ```GET [base]/Observation?interpretation=http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs|high```

    Usage notes: Further information on searching for "interpretation" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

6. The search parameter "specimen" MUST be supported:

    Examples:

    ```GET [base]/Observation?specimen=Specimen/1234```

    Usage notes: Further information on searching for "specimen" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

---
