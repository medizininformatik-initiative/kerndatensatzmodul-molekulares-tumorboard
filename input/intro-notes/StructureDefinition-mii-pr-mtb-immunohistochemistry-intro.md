<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes a single IHC finding as part of a molecular genetic profile. 

Immunohistochemistry is tested here with a focus on oncologically relevant examinations. In the long term, a transfer to the Pathology module may be considered. 

For many immunohistochemical findings there are suitable LOINC codes that describe the presence qualitatively or semi-quantitatively (+, ++, +++, - ). However, a research-oriented IHC specification must be able to detect all possible proteins. Therefore, the following modeling was chosen: 

* **Specific** IHC can be used when a concrete coding exists in LOINC, SNOMED, or another coding system (e.g. `40557-1 Progesterone receptor Ag [Presence] in Tissue by Immune stain`. In that case the result can normally be recorded via valueCodeableConcept, e.g.: Present/absent)
* **Generic** IHC can be used above all for representing rare proteins without one. For this, the static SNOMED code `1234806008 Observation using immunohistochemistry (observable entity)` is used under `code` to indicate an immunohistochemistry. The specific protein detected can then be coded under `component[gene-studied]`. As with other biomarkers, HGNC is used for the concrete identification of the genes involved. 

Note that IHC is a **protein detection** that takes place independently of the actual coding gene. The present modeling is therefore a systematic simplification with 
It can be assumed that certain genes can produce different protein splice products. If there are examples of oncological relevance for this, this modeling can gladly be refined. 
In addition, annotation with further protein databases (e.g. UniProt) remains open.  

### Links to other resources

Since there are a number of established immunohistochemistries with specialized evaluations, specialized profiles were written for them. These can be extended in the future as needed. They include
* Her2 IHC and Her2 status, also in combination with Her2 ISH
* MMR protein detection via IHC to demonstrate MMR deficiency
* PDL1 IHC including calculation of the subscores
* The methodological special case of IHC detection of phosphorylated isoforms

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, also in combination:

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

4. The search parameter "interpretation" MUST be supported:

    Examples:

    ```GET [base]/Observation?interpretation=http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs|high```

    Usage notes: Further information on searching for "interpretation" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "specimen" MUST be supported:

    Examples:

    ```GET [base]/Observation?specimen=Specimen/1234```

    Usage notes: Further information on searching for "specimen" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

---
