<!-- markdownlint-disable MD041 -->
<!-- Default-language (English) page. Structure ported from kerndatensatz-basis
     input/pagecontent/changes.md (branch main) — one section per version,
     newest first — and from the MII IG release-notes template
     (kerndatensatz-meta/implementation-guides/MedizininformatikInitiative-ImplementationGuide-Template/
     MII-IG-Modul--Modul/Release-notes.page.md), which prescribes Keep a Changelog.
     German mirror: input/translations/de/pagecontent/changes.md — both files
     must say the same thing.

     Maintenance rule: add a new `#### Version <x>` section on top for every
     release, in BOTH languages, as part of the release pull request. Never edit
     a released section afterwards. -->

### Changelog

This page records the changes between the released versions of the
**Molecular Tumor Board** module, newest version first. It follows
[Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the KDS calendar
versioning scheme described on the [Versioning](version-history.html) page.

Each version gets its own section with the release date and the changes grouped
by category:

* **Added** — new profiles, extensions, value sets, search parameters, pages.
* **Changed** — modified constraints, bindings, guidance or documentation.
* **Deprecated** — artifacts that still exist but should no longer be used.
* **Removed** — artifacts that were withdrawn.
* **Fixed** — corrections of defects.
* **Security** — changes with a security or data-protection impact.

Leave out the categories with nothing to report. Where a change is driven by an
issue or a pull request, link it.

<div class="ig-highlight ig-highlight-red">
<h5>Breaking changes MUST be reported and explained</h5>
<p>A version section that contains a breaking change is not complete until it
answers, explicitly and in this changelog:</p>
<ul>
<li><b>What exactly changed</b> between the two versions — the artifact, the
element, the old and the new constraint (not just "profile X was revised").</li>
<li><b>What it means for existing data:</b> does data that conformed to the
previous version still validate against the new one? If not, which resources
and elements are affected, and how does the failure show up?</li>
<li><b>What implementers should do:</b> the authors' recommendation for
migrating existing data to the new version — transformation steps, default
values, re-coding guidance — or an explicit statement that no migration path
is provided and why.</li>
</ul>
<p><b>What counts as breaking</b> — treat a change as breaking if it does any
of the following, even when it looks small: tightens a cardinality
(<code>0..*</code> → <code>1..1</code>), raises a binding strength (example →
required), removes codes from a required value set, removes or renames an
element or a slice, narrows a type, adds an invariant or a must-support
obligation, or changes a canonical URL. When in doubt, report it as
breaking.</p>
<p><b>Breaking for whom:</b> state both perspectives — <i>stored data</i>
(instances valid against the old version) and <i>implementations</i> (clients
and servers built against it; a removed search parameter breaks
implementations while every stored instance stays valid).</p>
<p><b>The version number will not warn anyone.</b> The KDS calendar versioning
scheme (<code>YYYY.n.n</code>) carries no major-version signal the way SemVer
does — this changelog section is the <i>only</i> warning a reader gets.</p>
<p><b>Link the technical delta.</b> From the second formal publication on,
enable the IG Publisher's version comparison (<code>version-comparison</code>
in <code>sushi-config.yaml</code> — see the <a href="version-history.html">
Versioning</a> page for the setup and its prerequisites); it publishes a
machine-generated comparison at
<code>comparison-v&lt;previous&gt;/index.html</code>. Link it from the version
section, so the prose explanation and the technical diff sit side by side.</p>
<p>Mark such entries clearly (for example, prefix them with
<b>BREAKING:</b>) so a reader scanning the section cannot miss them.</p>
</div>

---

<!-- Migrated from the Simplifier IG (ReleaseNotes). TODO:REVIEW machine-translated. -->

#### Version 2026.0.1 (2026-03-30)

Dependency updates and documentation improvements.

##### Dependency updates

- `fix` **Oncology**: update from 2026.0.1 to 2026.0.3 (AppleDouble cleanup, snapshot corrections, extension-version fix)
- `fix` **Consent**: update from 2025.0.4 to 2026.0.0 (2026 release)

##### Documentation

- `feat` **QA validation**: page completely reworked — all `advisor.json` filters documented, LOINC LIST-filter errors described, external dependencies updated (see [QA and Validation](implementer-guidance.html))

##### Build system

- `fix` **package.bake.yaml**: adjustment for local builds with `--input fsh-generated/resources` and `sushi --snapshot`

##### Dependencies

- de.basisprofil.r4 1.5.4
- kerndatensatz.biobank 2026.0.0
- kerndatensatz.consent 2026.0.0
- kerndatensatz.base 2026.0.0
- kerndatensatz.medikation 2026.0.0
- kerndatensatz.meta 2026.0.0
- kerndatensatz.molgen 2026.0.4
- kerndatensatz.onkologie 2026.0.3
- kerndatensatz.patho 2026.0.0
- kerndatensatz.studie 2026.0.2
- hl7.fhir.uv.genomics-reporting 3.0.0

#### Version 2026.0.0 (2026-01-20)

First stable version of the MII CDS module Molecular Tumor Board after the successful ballot phase.

##### New profiles and functionality

The module comprises profiles for the structured capture of:

###### NGS findings and genomic analyses
- `feat` **[NGSBericht](StructureDefinition-mii-pr-mtb-ngs-bericht.html)**: structured capture of next-generation-sequencing reports with GenomicStudy-based analyses
- `feat` **[GenomicStudy](StructureDefinition-mii-pr-mtb-genomic-study.html)**: integration with HL7 Genomics Reporting STU3 for genomic studies and analyses
- `feat` **Genomic Study Device**: structured capture of sequencing devices (sequencer, library preparation kit, sequencing kit) in NGS workflows
- `feat` **Genomic variants**: profiles for SNVs ([EinfacheVariante](StructureDefinition-mii-pr-mtb-einfache-variante.html)), CNVs ([CopyNumberVariant](StructureDefinition-mii-pr-mtb-copy-number-variant.html)), DNA fusions ([DNAFusion](StructureDefinition-mii-pr-mtb-dna-fusion.html)), RNA fusions ([RNAFusion](StructureDefinition-mii-pr-mtb-rna-fusion.html))
- `feat` **Biomarkers**: tumor mutational burden ([Mutationslast](StructureDefinition-mii-pr-mtb-mutationslast.html)), microsatellite instability ([Mikrosatelliteninstabilitaet](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.html), [MSI](StructureDefinition-mii-pr-mtb-msi.html)), HRD score ([HRDScore](StructureDefinition-mii-pr-mtb-hrd-score.html)), BRCAness ([BRCAness](StructureDefinition-mii-pr-mtb-brcaness.html)), ploidy ([Ploidie](StructureDefinition-mii-pr-mtb-ploidie.html))
- `feat` **Molecular biomarkers**: structured capture with a value set for HGNC gene symbols and pharmacogenetic markers

###### Molecular pathology
- `feat` **Immunohistochemistry**: profiles for IHC stains ([Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.html)), specialized profiles for HER2 ([IHC_HER2](StructureDefinition-mii-pr-mtb-immunohistochemistry-her2.html)), MMR ([IHC_MMR](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.html)), PD-L1 ([IHC_PDL1](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.html)), phosphorylation ([IHC_Phosphorylation](StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.html))
- `feat` **In-situ hybridization**: profiles for ISH examinations ([InSituHybridization](StructureDefinition-mii-pr-mtb-insituhybridization.html)) with a specialized HER2 ISH profile ([ISH_HER2](StructureDefinition-mii-pr-mtb-insituhybridization-her2.html))
- `feat` **HER2 status**: combined biomarker profile ([BiomarkerHER2Status](StructureDefinition-mii-pr-mtb-biomarker-her2-status.html)) for diagnostic and therapeutic implications
- `feat` **[MolecularPathologyReport](StructureDefinition-mii-pr-mtb-molecular-pathology-report.html)**: DiagnosticReport for molecular-pathology findings integrating IHC/ISH results

###### Treatment episode and therapy management
- `feat` **[Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.html)**: ClinicalImpression-based capture of MTB recommendations and therapy decisions
- `feat` **Therapy recommendations**: profiles for single therapies ([TherapieempfehlungMedikation](StructureDefinition-mii-pr-mtb-therapieempfehlung.html)) and combination therapies ([TherapieempfehlungKombination](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.html))
- `feat` **Evidence grading**: extension for documenting the level of evidence per NCT criteria with addendum references
- `feat` **[Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.html)**: CarePlan for structured therapy planning
- `feat` **[SystemischeTherapie](StructureDefinition-mii-pr-mtb-systemische-therapie.html)**: MedicationStatement for administered systemic therapies with a dose-density extension
- `feat` **[ResponseBefund](StructureDefinition-mii-pr-mtb-response-befund.html)**: Observation for therapy response with RECIST/iRECIST assessment
- `feat` **[FollowUpClinicalImpression](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.html)**: ClinicalImpression for follow-up documentation with implementation status

###### Cost coverage and study enrolment
- `feat` **[AntragKostenuebernahme](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.html)**: Claim for cost-coverage applications for off-label/compassionate use with an application-stage extension
- `feat` **[AntwortKostenuebernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.html)**: ClaimResponse for health-insurance decisions with a rejection-reason extension
- `feat` **[StudieneinschlussAnfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.html)**: ServiceRequest for study-enrolment requests
- `feat` **[Studie](StructureDefinition-mii-pr-mtb-studie.html)**: ResearchStudy profile for clinical studies

###### Diagnostic requests
- `feat` **[BiopsieAuftrag](StructureDefinition-mii-pr-mtb-biopsie-auftrag.html)**: ServiceRequest for re-biopsy/new biopsy with a justification extension
- `feat` **[HistologieEvaluationAuftrag](StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.html)**: ServiceRequest for histological re-evaluations
- `feat` **[HumangenetischeBeratungAuftrag](StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.html)**: ServiceRequest for human-genetic counselling

###### Further profiles
- `feat` **[DiagnosePrimaertumor](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.html)**: Condition profile with OncoTree coding and tumor spread
- `feat` **[Tumorzellgehalt](StructureDefinition-mii-pr-mtb-tumorzellgehalt.html)**: Observation for tumor-cell content with determination method
- `feat` **[DiagnostischeImplikation](StructureDefinition-mii-pr-mtb-diagnostische-implikation.html)**: diagnostic significance of genomic findings
- `feat` **[TherapeutischeImplikation](StructureDefinition-mii-pr-mtb-therapeutische-implikation.html)**: therapeutic significance of genomic findings with an approval-status extension

##### Terminology and CodeSystems

- `feat` **MTB-specific CodeSystems**: 18 CodeSystems for MTB-specific concepts (evidence levels, therapy-status reason, recommendation status, follow-up status, genomic-analysis method types, etc.)
- `feat` **ValueSets**: 29 ValueSets for structured coding incl. OncoTree, WHO grade CNS, molecular biomarkers, MSI, MMR expression
- `feat` **ConceptMaps**: mappings of therapy-status reason to SNOMED CT and oBDS

##### Technical functionality

- `feat` **Multilingualism (i18n)**: complete translations (de-DE, en) for all 52 profiles, 18 CodeSystems and 29 ValueSets
- `feat` **QA validation**: documentation of known validation limitations (see [QA and Validation](implementer-guidance.html))
- `feat` **Example data**: 120+ example instances demonstrate typical MTB scenarios
- `feat` **CapabilityStatement**: complete server-capability documentation

##### Dependencies

- de.basisprofil.r4 1.5.4
- kerndatensatz.biobank 2026.0.0
- kerndatensatz.consent 2025.0.4
- kerndatensatz.base 2026.0.0
- kerndatensatz.medikation 2026.0.0
- kerndatensatz.meta 2026.0.0
- kerndatensatz.molgen 2026.0.4
- kerndatensatz.onkologie 2026.0.0
- kerndatensatz.patho 2026.0.0
- kerndatensatz.studie 2026.0.1
- hl7.fhir.uv.genomics-reporting 3.0.0

#### Version 2025.0.0-ballot (2025-05-26)

Initial ballot version for the MII commenting phase.
