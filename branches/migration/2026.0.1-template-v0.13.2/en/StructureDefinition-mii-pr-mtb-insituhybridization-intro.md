<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/In-Situ-Hybridization-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes a generic representation of results based on molecular pathology in-situ hybridization tests on tissue sections.

The profile supports various ISH methods:
* **FISH** (Fluorescence In Situ Hybridization)
* **CISH** (Chromogenic In Situ Hybridization)
* **SISH** (Silver In Situ Hybridization)

### Profile structure

Analogous to the IHC modeling, the following structure was chosen:

* **`code`**: Slicing with `spezifisch` and `generisch`
  * **Specific**: Concrete LOINC or SNOMED code for the test (e.g. `49683-6 ERBB2 gene copy number/Chromosome 17 copy number in Tissue by FISH`)
  * **Generic**: Fallback code `51864006 Nucleic acid hybridization, function (observable entity)` if no specific code is available

* **`method`** (mandatory field): Specification of the ISH method from the ValueSet `MII_VS_MTB_ISH_Method`:
  * `1303773004` - Fluorescence in situ hybridization technique (FISH)
  * `787997001` - Chromogenic in situ hybridization (CISH)
  * `787998006` - Silver in situ hybridization (SISH)

* **`value[x]`**: Supports various result types:
  * `valueRatio` - for ratio measurements (e.g. HER2/CEP17)
  * `valueQuantity` - for individual signal counts
  * `valueCodeableConcept` - for categorical results (positive/negative)

### Components for signal counts

For detailed FISH evaluations, the following components are supported:

| Component | LOINC | Description |
|------------|-------|--------------|
| `target-signals` | 74860-8 | Target probe signals per cell nucleus (e.g. ERBB2) |
| `reference-signals` | 74861-6 | Reference probe signals per cell nucleus (e.g. CEP17) |
| `cells-counted` | 62361-1 | Number of cells evaluated |
| `gene-studied` | 48018-6 | Gene studied (HGNC-coded) |

This structure is based on the LOINC panel for HER2 FISH (`74885-5 ERBB2 gene (HER2) duplication associated observations panel - Tissue by FISH`).

### Links to other resources

The in-situ hybridization, like immunohistochemical results, is linked from the molecular pathology report via DiagnosticReport.result. It can in turn be referenced by diagnostic or therapeutic implications.

### Specialized profiles

Specialized child profiles exist for common ISH tests:
* **MII_PR_MTB_INSITUHYBRIDIZATION_HER2** - HER2/ERBB2 FISH with ratio calculation

### ValueSet: ISH methods

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://snomed.info/sct|51864006```

    Usage notes: Further information on searching for "code" can be found in the
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

3. The search parameter "method" MUST be supported:

    Examples:

    ```GET [base]/Observation?method=http://snomed.info/sct|1303773004```

    Usage notes: Search for the ISH method used (FISH, CISH, SISH).

4. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose```

    Usage notes: Further information on searching for "focus" can be found in the
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "interpretation" MUST be supported:

    Examples:

    ```GET [base]/Observation?interpretation=http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs|high```

    Usage notes: Further information on searching for "interpretation" can be found in the
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

**Examples**
