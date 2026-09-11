# Changelog - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* **Changelog**

## Changelog

### Changelog

This page records the changes between the released versions of the **Molecular Tumor Board** module, newest version first. It follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the KDS calendar versioning scheme described on the [Versioning](version-history.md) page.

Each version gets its own section with the release date and the changes grouped by category:

* **Added** — new profiles, extensions, value sets, search parameters, pages.
* **Changed** — modified constraints, bindings, guidance or documentation.
* **Deprecated** — artifacts that still exist but should no longer be used.
* **Removed** — artifacts that were withdrawn.
* **Fixed** — corrections of defects.
* **Security** — changes with a security or data-protection impact.

Leave out the categories with nothing to report. Where a change is driven by an issue or a pull request, link it.

##### Breaking changes MUST be reported and explained

A version section that contains a breaking change is not complete until it answers, explicitly and in this changelog:

* **What exactly changed** between the two versions — the artifact, the element, the old and the new constraint (not just "profile X was revised").
* **What it means for existing data:** does data that conformed to the previous version still validate against the new one? If not, which resources and elements are affected, and how does the failure show up?
* **What implementers should do:** the authors' recommendation for migrating existing data to the new version — transformation steps, default values, re-coding guidance — or an explicit statement that no migration path is provided and why.

**What counts as breaking** — treat a change as breaking if it does any of the following, even when it looks small: tightens a cardinality (`0..*` → `1..1`), raises a binding strength (example → required), removes codes from a required value set, removes or renames an element or a slice, narrows a type, adds an invariant or a must-support obligation, or changes a canonical URL. When in doubt, report it as breaking.

**Breaking for whom:** state both perspectives — *stored data* (instances valid against the old version) and *implementations* (clients and servers built against it; a removed search parameter breaks implementations while every stored instance stays valid).

**The version number will not warn anyone.** The KDS calendar versioning scheme (`YYYY.n.n`) carries no major-version signal the way SemVer does — this changelog section is the *only* warning a reader gets.

**Link the technical delta.** From the second formal publication on, enable the IG Publisher's version comparison (`version-comparison` in `sushi-config.yaml` — see the [ Versioning](version-history.md) page for the setup and its prerequisites); it publishes a machine-generated comparison at `comparison-v<previous>/index.html`. Link it from the version section, so the prose explanation and the technical diff sit side by side.

Mark such entries clearly (for example, prefix them with **BREAKING:**) so a reader scanning the section cannot miss them.

-------

#### Version 2026.0.1 (2026-03-30)

Dependency updates and documentation improvements.

##### Dependency updates

* `fix` **Oncology**: update from 2026.0.1 to 2026.0.3 (AppleDouble cleanup, snapshot corrections, extension-version fix)
* `fix` **Consent**: update from 2025.0.4 to 2026.0.0 (2026 release)

##### Documentation

* `feat` **QA validation**: page completely reworked — all `advisor.json` filters documented, LOINC LIST-filter errors described, external dependencies updated (see [QA and Validation](implementer-guidance.md))

##### Build system

* `fix` **package.bake.yaml**: adjustment for local builds with `--input fsh-generated/resources` and `sushi --snapshot`

##### Dependencies

* de.basisprofil.r4 1.5.4
* kerndatensatz.biobank 2026.0.0
* kerndatensatz.consent 2026.0.0
* kerndatensatz.base 2026.0.0
* kerndatensatz.medikation 2026.0.0
* kerndatensatz.meta 2026.0.0
* kerndatensatz.molgen 2026.0.4
* kerndatensatz.onkologie 2026.0.3
* kerndatensatz.patho 2026.0.0
* kerndatensatz.studie 2026.0.2
* hl7.fhir.uv.genomics-reporting 3.0.0

#### Version 2026.0.0 (2026-01-20)

First stable version of the MII CDS module Molecular Tumor Board after the successful ballot phase.

##### New profiles and functionality

The module comprises profiles for the structured capture of:

###### NGS findings and genomic analyses

* `feat` **[NGSBericht](StructureDefinition-mii-pr-mtb-ngs-bericht.md)**: structured capture of next-generation-sequencing reports with GenomicStudy-based analyses
* `feat` **[GenomicStudy](StructureDefinition-mii-pr-mtb-genomic-study.md)**: integration with HL7 Genomics Reporting STU3 for genomic studies and analyses
* `feat` **Genomic Study Device**: structured capture of sequencing devices (sequencer, library preparation kit, sequencing kit) in NGS workflows
* `feat` **Genomic variants**: profiles for SNVs ([EinfacheVariante](StructureDefinition-mii-pr-mtb-einfache-variante.md)), CNVs ([CopyNumberVariant](StructureDefinition-mii-pr-mtb-copy-number-variant.md)), DNA fusions ([DNAFusion](StructureDefinition-mii-pr-mtb-dna-fusion.md)), RNA fusions ([RNAFusion](StructureDefinition-mii-pr-mtb-rna-fusion.md))
* `feat` **Biomarkers**: tumor mutational burden ([Mutationslast](StructureDefinition-mii-pr-mtb-mutationslast.md)), microsatellite instability ([Mikrosatelliteninstabilitaet](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.md), [MSI](StructureDefinition-mii-pr-mtb-msi.md)), HRD score ([HRDScore](StructureDefinition-mii-pr-mtb-hrd-score.md)), BRCAness ([BRCAness](StructureDefinition-mii-pr-mtb-brcaness.md)), ploidy ([Ploidie](StructureDefinition-mii-pr-mtb-ploidie.md))
* `feat` **Molecular biomarkers**: structured capture with a value set for HGNC gene symbols and pharmacogenetic markers

###### Molecular pathology

* `feat` **Immunohistochemistry**: profiles for IHC stains ([Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md)), specialized profiles for HER2 ([IHC_HER2](StructureDefinition-mii-pr-mtb-immunohistochemistry-her2.md)), MMR ([IHC_MMR](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.md)), PD-L1 ([IHC_PDL1](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.md)), phosphorylation ([IHC_Phosphorylation](StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.md))
* `feat` **In-situ hybridization**: profiles for ISH examinations ([InSituHybridization](StructureDefinition-mii-pr-mtb-insituhybridization.md)) with a specialized HER2 ISH profile ([ISH_HER2](StructureDefinition-mii-pr-mtb-insituhybridization-her2.md))
* `feat` **HER2 status**: combined biomarker profile ([BiomarkerHER2Status](StructureDefinition-mii-pr-mtb-biomarker-her2-status.md)) for diagnostic and therapeutic implications
* `feat` **[MolecularPathologyReport](StructureDefinition-mii-pr-mtb-molecular-pathology-report.md)**: DiagnosticReport for molecular-pathology findings integrating IHC/ISH results

###### Treatment episode and therapy management

* `feat` **[Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md)**: ClinicalImpression-based capture of MTB recommendations and therapy decisions
* `feat` **Therapy recommendations**: profiles for single therapies ([TherapieempfehlungMedikation](StructureDefinition-mii-pr-mtb-therapieempfehlung.md)) and combination therapies ([TherapieempfehlungKombination](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md))
* `feat` **Evidence grading**: extension for documenting the level of evidence per NCT criteria with addendum references
* `feat` **[Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)**: CarePlan for structured therapy planning
* `feat` **[SystemischeTherapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md)**: MedicationStatement for administered systemic therapies with a dose-density extension
* `feat` **[ResponseBefund](StructureDefinition-mii-pr-mtb-response-befund.md)**: Observation for therapy response with RECIST/iRECIST assessment
* `feat` **[FollowUpClinicalImpression](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.md)**: ClinicalImpression for follow-up documentation with implementation status

###### Cost coverage and study enrolment

* `feat` **[AntragKostenuebernahme](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md)**: Claim for cost-coverage applications for off-label/compassionate use with an application-stage extension
* `feat` **[AntwortKostenuebernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.md)**: ClaimResponse for health-insurance decisions with a rejection-reason extension
* `feat` **[StudieneinschlussAnfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md)**: ServiceRequest for study-enrolment requests
* `feat` **[Studie](StructureDefinition-mii-pr-mtb-studie.md)**: ResearchStudy profile for clinical studies

###### Diagnostic requests

* `feat` **[BiopsieAuftrag](StructureDefinition-mii-pr-mtb-biopsie-auftrag.md)**: ServiceRequest for re-biopsy/new biopsy with a justification extension
* `feat` **[HistologieEvaluationAuftrag](StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.md)**: ServiceRequest for histological re-evaluations
* `feat` **[HumangenetischeBeratungAuftrag](StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.md)**: ServiceRequest for human-genetic counselling

###### Further profiles

* `feat` **[DiagnosePrimaertumor](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md)**: Condition profile with OncoTree coding and tumor spread
* `feat` **[Tumorzellgehalt](StructureDefinition-mii-pr-mtb-tumorzellgehalt.md)**: Observation for tumor-cell content with determination method
* `feat` **[DiagnostischeImplikation](StructureDefinition-mii-pr-mtb-diagnostische-implikation.md)**: diagnostic significance of genomic findings
* `feat` **[TherapeutischeImplikation](StructureDefinition-mii-pr-mtb-therapeutische-implikation.md)**: therapeutic significance of genomic findings with an approval-status extension

##### Terminology and CodeSystems

* `feat` **MTB-specific CodeSystems**: 18 CodeSystems for MTB-specific concepts (evidence levels, therapy-status reason, recommendation status, follow-up status, genomic-analysis method types, etc.)
* `feat` **ValueSets**: 29 ValueSets for structured coding incl. OncoTree, WHO grade CNS, molecular biomarkers, MSI, MMR expression
* `feat` **ConceptMaps**: mappings of therapy-status reason to SNOMED CT and oBDS

##### Technical functionality

* `feat` **Multilingualism (i18n)**: complete translations (de-DE, en) for all 52 profiles, 18 CodeSystems and 29 ValueSets
* `feat` **QA validation**: documentation of known validation limitations (see [QA and Validation](implementer-guidance.md))
* `feat` **Example data**: 120+ example instances demonstrate typical MTB scenarios
* `feat` **CapabilityStatement**: complete server-capability documentation

##### Dependencies

* de.basisprofil.r4 1.5.4
* kerndatensatz.biobank 2026.0.0
* kerndatensatz.consent 2025.0.4
* kerndatensatz.base 2026.0.0
* kerndatensatz.medikation 2026.0.0
* kerndatensatz.meta 2026.0.0
* kerndatensatz.molgen 2026.0.4
* kerndatensatz.onkologie 2026.0.0
* kerndatensatz.patho 2026.0.0
* kerndatensatz.studie 2026.0.1
* hl7.fhir.uv.genomics-reporting 3.0.0

#### Version 2025.0.0-ballot (2025-05-26)

Initial ballot version for the MII commenting phase.

