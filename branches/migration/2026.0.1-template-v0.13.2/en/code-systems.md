# Code Systems - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* **Code Systems**

## Code Systems

### Code Systems

This page describes the CodeSystems of the **Molecular Tumor Board** module (naming convention `MII_CS_<Module>_<Name>`). The ValueSets built on them are described on the [Value Sets](value-sets.md) page.

**Important:** CodeSystem resources of external terminologies (e.g. ICD-10-GM, OPS, SNOMED CT) are **not** published in this module; they are obtained from the central KDS terminology service (SU-TermServ): [https://mii-termserv.de/](https://mii-termserv.de/).

The complete list of defined CodeSystems, ValueSets and ConceptMaps is generated automatically by the IG Publisher on the [artifacts summary](artifacts.md). Below are the domain notes on the module's own terminologies (description of own value sets, use of international terminologies, sources).

### Defined CodeSystems

#### Treatment episode: diagnosis: guideline-treatment status

Used in the treatment episode. Source: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Treatment episode: prior therapy: approval status (Zulassungsstatus)

Used in the guideline documentation. Source: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Treatment episode: specimen: method for determining tumor-cell content

Used in the tumor-cell content. Source: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Treatment episode: therapy plan: human-genetic counselling: reason for the request

Used in the human-genetic counselling. Source: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Treatment episode: therapy recommendation: level of evidence

Used in the therapy-recommendation evidence grading. Source: [10.1002/ijc.32358](https://doi.org/10.1002/ijc.32358)

#### Treatment episode: therapy recommendation: level-of-evidence addendum reference

Used in the evidence grading of a therapy recommendation. Source: [10.1002/ijc.32358](https://doi.org/10.1002/ijc.32358)

#### Treatment episode: therapy recommendation: reason for the status (absence of a therapy recommendation)

Used in the therapy plan. Source: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Follow-up: status

Used in the follow-up ClinicalImpression.

#### Follow-up: dose density

Used in follow-up systemic therapy (MedicationStatement). Source: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Follow-up: response finding assessment

Used in the response finding. Source: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Follow-up: response finding assessment method

Used in the response finding. Source: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Follow-up: systemic-therapy status reason

Used for the systemic therapy (both prior therapy and follow-up). Source: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Follow-up: cost-coverage application stage (Antragsstadium)

Used in the cost-coverage application.

#### Follow-up: cost-coverage response decision

Used in the cost-coverage response.

#### Follow-up: cost-coverage response rejection reason

Used in the cost-coverage response.

#### NGS report: device type

Used in the genomic study analysis.

#### NGS report: methodology

Used in the genomic study analysis. Source: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### NGS report: MSI determination: methodology

Used for the microsatellite instability. Source: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### NGS report: molecular biomarkers

Used in the molecular biomarker profile.

### Defined ValueSets

#### Diagnosis: tumor spread

Used for the tumor spread. Source: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Diagnosis: WHO grade for CNS tumors

Used for the WHO grade (CNS). Contains all child concepts of the SNOMED CT code

**396921005** **World Health Organization grade finding for central nervous system tumor (finding)**

see https://browser.ihtsdotools.org/?perspective=full&conceptId1=396921005&edition=MAIN/2025-07-01&release=&languages=en

#### NGS report: methodology

Used in the genomic study analysis. Contains all codes of the "NGS report: methodology" CodeSystem defined here plus all codes of `http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs`.

#### NGS report: microsatellite instability

Used for the microsatellite instability.

#### Follow-up: systemic-therapy status

Restricted version of the systemic-therapy status CodeSystem. Used for the systemic therapy.

#### Follow-up: cost-coverage type

Used for the cost-coverage application and response.

#### Follow-up: reason for non-implementation

Used for the follow-up ClinicalImpression.

#### Molecular pathology report: MMR expression

Used for the immunohistochemistry MMR/MSI.

#### Molecular pathology report: MMR proficiency

Used for the immunohistochemistry MMR/MSI.

#### Systemic prior therapy: therapy-status reason per oBDS

Source: [DNPM v2.1 incl. MVGenomSeq](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/698777783/Datenmodell+V2.1+-+inkl.+MVGenomSeq-Anpassungen+Stand+06.05.2025)

#### Systemic prior therapy: therapy-status reason per SNOMED CT

Source: [DNPM v2.1 incl. MVGenomSeq](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/698777783/Datenmodell+V2.1+-+inkl.+MVGenomSeq-Anpassungen+Stand+06.05.2025)

