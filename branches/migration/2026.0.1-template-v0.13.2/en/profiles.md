# Profiles - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

This page lists the FHIR profiles of the **Molecular Tumor Board** module (naming convention `MII_PR_MTB_<Name>`). The IG Publisher generates the technical detail pages automatically; the complete list is on the [artifacts summary](artifacts.md). The module's extensions are listed on the [Extensions](extensions.md) page.

> **Written during migration - review before release.** The profiles are organized in four groups mirroring the module's information model:

* **Behandlungsepisode (treatment episode)** — diagnosis, prior therapies, specimens, consent and the MTB decision (therapy plan with therapy, study enrolment and further recommendations).
* **NGS-Bericht (NGS report)** — genomic study and analyses, variants (SNV, CNV, DNA/RNA fusion), molecular biomarkers and genetic implications.
* **Molekular-Pathologie-Befund (molecular pathology report)** — immunohistochemistry and in-situ hybridization.
* **Follow-Up** — implemented therapies, response findings and cost coverage.

### Genetic implications

Genetic implications describe the clinical significance of genetic variants. In the context of the molecular tumor board two kinds of implication are distinguished:

**Diagnostic implication**: describes the diagnostic relevance of a variant, e.g. for classifying a tumor or confirming a diagnosis — [DiagnostischeImplikation](StructureDefinition-mii-pr-mtb-diagnostische-implikation.md).

**Therapeutic implication**: describes the therapeutic relevance of a variant, e.g. as a predictive biomarker for the response to a targeted therapy — [TherapeutischeImplikation](StructureDefinition-mii-pr-mtb-therapeutische-implikation.md).

For describing the functional consequences of a variant on protein structure and function, the profile [Molekulare Konsequenz](https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz&fhirVersion=R4) from the MolGen module is used.

The genetic implications are typically linked with the variant profiles: [Einfache Variante](StructureDefinition-mii-pr-mtb-einfache-variante.md), [Copy Number Variant](StructureDefinition-mii-pr-mtb-copy-number-variant.md), [DNA-Fusion](StructureDefinition-mii-pr-mtb-dna-fusion.md), [RNA-Fusion](StructureDefinition-mii-pr-mtb-rna-fusion.md).

### In-situ hybridization (ISH)

In-situ hybridization (ISH) is a molecular-biology method for detecting nucleic acids (DNA/RNA) directly in the tissue section. In oncology it is frequently used to detect gene amplifications, chromosomal translocations and fusion genes.

| | |
| :--- | :--- |
| [MII_PR_MTB_Biomarker_InSituHybridization](StructureDefinition-mii-pr-mtb-insituhybridization.md) | Generic ISH profile for all ISH methods |
| [MII_PR_MTB_INSITUHYBRIDIZATION_HER2](StructureDefinition-mii-pr-mtb-insituhybridization-her2.md) | Specialized profile for HER2/ERBB2 FISH |

Supported methods:

* **FISH** (fluorescence in situ hybridization) — the standard for HER2 amplification
* **CISH** (chromogenic in situ hybridization) — evaluable by light microscopy
* **SISH** (silver in situ hybridization) — silver-enhanced detection

Clinical applications:

* HER2/ERBB2 amplification in breast and gastric carcinoma
* ALK translocations in NSCLC
* ROS1 rearrangements
* BCR-ABL fusions
* MYC/BCL2/BCL6 in lymphomas

