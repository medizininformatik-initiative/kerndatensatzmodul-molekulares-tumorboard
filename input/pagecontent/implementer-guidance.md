<!-- markdownlint-disable MD041 -->
<!-- Migrated from the Simplifier IG (TechnischeImplementierung: Profile-Inhalt-und-Vererbung,
     Profile-Beziehungen-und-Referenzen, QA-Validierung). TODO:REVIEW machine-translated. -->

Technical guidance for DIC implementers on implementing the profiles of the **Molecular Tumor Board** module (ETL from primary systems, FHIR API, validation).

### Profile Content and Inheritance

The following overview shows the module's profiles, their content and their inheritance relations. The image can be viewed and downloaded [individually](MII_MTB_Overview.svg) (provided as `.svg`).

<a target="_blank" href="MII_MTB_Overview.svg"><img style="width: 100%;" alt="Overview of profile inheritance" src="MII_MTB_Overview.svg"/></a>

### Profile Relations and References

The following overview shows the references between the resources. The image file can be viewed and downloaded [individually](MII-Kerndatensatz-Molekulares-Tumorboard-Beziehungen-und-Referenzen.svg) (provided as `.svg`).

<a target="_blank" href="MII-Kerndatensatz-Molekulares-Tumorboard-Beziehungen-und-Referenzen.svg"><img alt="MTB relations and references" src="MII-Kerndatensatz-Molekulares-Tumorboard-Beziehungen-und-Referenzen.svg" width="100%"/></a>

### QA and Validation

This section documents the FHIR validation status of the MII module Molecular Tumor Board (MTB).

The module is continuously validated against the FHIR R4 standard and the defined profiles. The validation status is documented here transparently.

#### Terminology server and validation configuration

**MII Terminology Server**: [https://termserv.mii.medizininformatik-initiative.de/fhir](https://termserv.mii.medizininformatik-initiative.de/fhir)

**Validation configuration**: [`advisor.json`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/blob/dev/advisor.json)

#### Filtered validation messages

These messages are suppressed via [`advisor.json`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/blob/dev/advisor.json):

| Error code | Context | Rationale |
|------------|---------|-----------|
| `Terminology_TX_NoValid_16` | ImplementationGuide, StructureDefinition, ValueSet, CodeSystem | External terminology-server limitation: the TX server cannot validate certain codes |
| `UNABLE_TO_INFER_CODESYSTEM` | ImplementationGuide, StructureDefinition, ValueSet, CodeSystem | The validator cannot automatically infer the code system |
| `Structural_VAL_Array_Empty` | ImplementationGuide.definition.page | Empty array in the IG page definition (Simplifier artifact) |
| `MSG_DRAFT` | global | Expected warning for resources in `draft` status during the development phase |
| `dom-6` | DomainResource | FHIR base invariant, known validator artifact |
| `eld-20` | ElementDefinition | ElementDefinition invariant, known validator artifact |
| `LOINC LIST filter` | Observations, Procedures | `There is no declared filter called LIST on code system http://loinc.org` — the CI TX server does not support the LOINC `LIST` filter (see below) |
| SNOMED code `1381317004` not known to the TX server | SNOMED CT | New SNOMED CT code not yet available in the TX-server version |
| `Reference_REF_CantMatchChoice` | global | The validator cannot resolve choice-type references (known limitation) |
| `Validation_VAL_Profile_NoSnapshot` | global | Referenced profile without snapshot (e.g. from dependency packages without snapshots) |

#### Profile-specific issues

| Profile | Category | Description | Status |
|---------|----------|-------------|--------|
| **Genomics Reporting** | Extension | HL7 Genomics Reporting extensions have known validation warnings | 🔵 EXTERNAL |
| **GenomicStudyAnalysis** | Profile mismatch | Bundle validation cannot resolve the profile chain (see below) | 🔵 EXTERNAL |
| **Immunohistochemistry** | Slicing | code.coding slicing with pattern discriminator and value set (see below) | 🔵 EXTERNAL |

#### Profile mismatch in bundle validation

When validating bundles with nested profile references, the FHIR validator may report `PROFILE_MISMATCH` errors although the resources are correctly profiled. This occurs in particular for the `GenomicStudyAnalysis` resource, which is referenced through a profile chain:

**Profile chain:**
- `MII_PR_MTB_NGS_Bericht` → references `MII_PR_MTB_Genomic_Study`
- `MII_PR_MTB_Genomic_Study` → references `MII_PR_MTB_Genomic_Study_Analysis`
- `MII_PR_MTB_Genomic_Study_Analysis` → based on `MII_PR_MolGen_GenomicStudyAnalysis`

**Error message:**
```
PROFILE_MISMATCH: Unable to find a profile match for Procedure/mii-exa-mtb-...-genomic-study-analysis-1
```

**Cause:** The FHIR validator cannot fully resolve this multi-level profile chain in bundle contexts, because the profile references are distributed across several IG packages (MTB → MolGen → HL7 Genomics Reporting).

**Status:** These are validator artifacts, not actual conformance problems. The profiles are correctly defined and the example resources conform.

#### Immunohistochemistry code.coding slicing

The `MII_PR_MTB_Immunohistochemistry` profile uses a slicing on `code.coding` with two slices:
- **spezifisch**: for specific LOINC/SNOMED codes (value-set bound)
- **generisch**: for the generic IHC code `1234806008` (fixed)

**Error message:**
```
Slicing cannot be evaluated: Could not match discriminator ($this) for slice spezifisch
```

**Cause:** The FHIR validator has difficulty evaluating `#pattern` discriminators on `$this` with value-set-bound slices, because the pattern cannot be derived unambiguously from the value set.

**Status:** The profile semantics are correct. The validator cannot fully evaluate the slicing, but the instances conform.

#### Terminology-related issues

| Terminology | Description | Status |
|-------------|-------------|--------|
| **HGNC** | Gene symbols not available on all TX servers | 🔵 EXTERNAL |
| **Oncotree** | Tumor classification is external, not validatable via FHIR TX | 🔵 EXTERNAL |
| **LOINC** | Panel codes for genomics partly not validatable; `LIST` filter not supported (see below) | 🔵 EXTERNAL |
| **SNOMED CT** | Newer codes (July 2025+) not available on MII TX servers | 🔵 EXTERNAL |

#### LOINC LIST-filter errors in CI

The CI validation reports 14 errors of the form:

```
Error from http://127.0.0.1:8090/fhir: Error: There is no declared filter called LIST on code system http://loinc.org
```

**Cause:** The `hl7.fhir.uv.genomics-reporting` IG (v3.0.0) uses value sets with LOINC `LIST` filter expressions. The terminology server used in CI does not support this filter. This affects all resources using LOINC codes from Genomics Reporting value sets.

**Affected resources (14):**

| Resource | Element |
|----------|---------|
| Bundle (Kim Musterperson) | GenomicStudyAnalysis, EinfacheVariante (TP53, PIK3R1), CNVariante (CCNE1) |
| Observation (Einfache Variante) | `value`, `method`, `component[0].value` |
| Observation (Copy Number Variant) | `component[0].value` |
| Observation (RNA Fusion) | `value` |
| Procedure (GenomicStudyAnalysis) | `extension.value` |

**Status:** 🔵 EXTERNAL — the error lies in the CI TX server, not in the profiles or examples. The message is filtered via `advisor.json`.

#### Non-validatable SNOMED CT codes

The following SNOMED CT codes are correct, but newer than the version available on the terminology server. They therefore cannot be validated automatically.

##### In-situ hybridization (ISH) methods

| Code | Display | Use |
|------|---------|-----|
| `1363313004` | In situ hybridization technique (qualifier value) | ISH method (generic) |
| `1303773004` | Fluorescence in situ hybridization technique (qualifier value) | FISH method |
| `787997001` | Chromogenic in situ hybridization (qualifier value) | CISH method |
| `787998006` | Silver in situ hybridization (qualifier value) | SISH method |

##### In-situ hybridization observable entities

| Code | Display | Use |
|------|---------|-----|
| `1365744007` | Ratio of erb-b2 receptor tyrosine kinase 2 to chromosome 17 centromere signals per cell in malignant neoplasm of breast in excised tissue specimen by in situ hybridization technique (observable entity) | HER2/CEP17 ratio ISH |
| `1365743001` | Human epidermal growth factor receptor 2 gene copy number in malignant neoplasm of breast in excised tissue specimen by in situ hybridization technique (observable entity) | HER2 copy number ISH |
| `1365742006` | Human epidermal growth factor receptor 2/centromeric probe 17 ratio in malignant neoplasm of breast in excised tissue specimen by in situ hybridization technique (observable entity) | HER2/CEP17 ratio (alternative) |

##### Further newer SNOMED CT codes

| Code | Display | Use |
|------|---------|-----|
| `1234806008` | Observation using immunohistochemistry (observable entity) | IHC observation (generic) |
| `12645001` | Gene amplification (finding) | ISH interpretation |

#### External dependencies

| Package | Version | Description |
|---------|---------|-------------|
| `de.medizininformatikinitiative.kerndatensatz.meta` | 2026.0.0 | MII Core Dataset Meta |
| `de.medizininformatikinitiative.kerndatensatz.base` | 2026.0.0 | MII Core Dataset Base |
| `de.medizininformatikinitiative.kerndatensatz.onkologie` | 2026.0.3 | MII Oncology module |
| `de.medizininformatikinitiative.kerndatensatz.molgen` | 2026.0.4 | MII Molecular Genetics module |
| `de.medizininformatikinitiative.kerndatensatz.patho` | 2026.0.0 | MII Pathology module |
| `de.medizininformatikinitiative.kerndatensatz.consent` | 2026.0.0 | MII Consent module |
| `hl7.fhir.uv.genomics-reporting` | 3.0.0 | HL7 Genomics Reporting IG |

#### Status legend

| Symbol | Status | Meaning |
|--------|--------|---------|
| 🔴 | **TODO** | Errors to be actively fixed |
| 🟡 | **MONITOR** | Watch, action may be required |
| 🔵 | **EXTERNAL** | External problem, outside our control |
| ⚪ | **FILTERED** | Filtered via advisor.json |

#### Continuous integration

The FHIR validation runs automatically on every push via GitHub Actions:

- **JAVA_FHIR_VALIDATION**: HL7 FHIR Validator (official)
- **DOTNET_FHIR_VALIDATION**: Firely .NET validator (alternative)

🔗 [Show current CI runs](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/actions)

The validation results, including detailed output, are available as artifacts in the workflow runs.

#### How can I help?

If you would like to contribute to improving validation:

1. **Check** the issues in the GitHub repository
2. **Look** for a `TODO`-marked error that interests you
3. **Create** an issue or pull request in the [GitHub repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard)
4. **Discuss** complex validation questions in the MII community

**Note**: this section is maintained manually. For the most current technical state see the CI runs in the repository.
