# DNPM Transformation - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **DNPM Transformation**

## DNPM Transformation

This page describes the transformation of [DNPM DIP](https://dnpm-dip.net/) MTB patient records into MII-CDS-conformant FHIR bundles using [FHIR StructureMaps](https://www.hl7.org/fhir/R4/structuremap.html) and the [Matchbox](https://matchbox.health/) FHIR server.

* [Logical data model (DNPM)](#logical-data-model-dnpm)
* [Mapping table: DNPM to MII FHIR](#mapping-table-dnpm-to-mii-fhir)
* [StructureMaps (FML)](#structuremaps-fml)
* [Transformation with Matchbox](#transformation-with-matchbox)

### Logical data model (DNPM)

The DNPM source data model represents the JSON structure of the [DNPM DIP MTB API](https://dnpm-dip.net/api/mtb/fake/data/patient-record) as a FHIR logical model. Source: [DAM data model V2.1 incl. MVGenomSeq adjustments](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/698777783/Datenmodell+V2.1+-+inkl.+MVGenomSeq-Anpassungen)

### Mapping table: DNPM to MII FHIR

The mapping table shows the element assignment between the DNPM source data model and the MII FHIR profiles from various MII modules (Person, MTB, Oncology, MolGen report, Pathology).

### StructureMaps (FML)

The transformation is split modularly into individual StructureMaps:

| | |
| :--- | :--- |
| `dnpm-to-mii-mtb` | Orchestrator: calls all sub-maps and produces a transaction bundle |
| `sm-patient-demographics` | Patient, EpisodeOfCare, FamilyMemberHistory |
| `sm-diagnosis` | Diagnoses, ECOG performance status |
| `sm-specimen-histology-ihc-msi` | Specimens, histology, IHC, MSI |
| `sm-ngs-report` | NGS reports incl. variants, CNV, fusions, TMB, HRD |
| `sm-careplan` | MTB decision, therapy recommendations, study enrolment |
| `sm-guideline-therapy` | Guideline therapies and procedures |
| `sm-follow-up` | Follow-up documentation |
| `sm-systemic-therapy` | Systemic therapies, response findings |
| `sm-claims` | Cost-coverage applications and responses |

The FML files live under `input/maps/` in the repository and can be executed directly with Matchbox.

#### Example: patient demographics

The following StructureMap exemplifies the transformation of DNPM patient data into an MII-CDS-conformant FHIR Patient:

```
group MapPatient(source src : BackboneElement, target tgt : Patient) {

  src.id as srcId -> tgt.id = cast(srcId, "id") "patientId";
  src.birthDate as birthDateDt -> tgt.birthDate = cast(birthDateDt, 'date') "birthDate";

  // Profile meta - MII KDS Person Patient
  src -> tgt.meta as m then {
    src -> m.profile = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient' "patientProfile";
  } "patientMeta";

  // Gender: DNPM codes -> FHIR administrative-gender
  src.gender as g where g.code = 'female'  -> tgt.gender = 'female'  "genderFemale";
  src.gender as g where g.code = 'male'    -> tgt.gender = 'male'    "genderMale";
  src.gender as g where g.code = 'other'   -> tgt.gender = 'other'   "genderOther";
  src.gender as g where g.code = 'unknown' -> tgt.gender = 'unknown' "genderUnknown";

  // Vital status
  src.vitalStatus as vs where vs.code = 'deceased' -> tgt.deceased = true  "deceasedTrue";
  src.vitalStatus as vs where vs.code = 'alive'    -> tgt.deceased = false "deceasedFalse";

  // Address: municipalityCode -> AGS extension
  src.address as srcAddr -> tgt.address as tgtAddr then MapAddress(srcAddr, tgtAddr) "address";
}

```

### Transformation with Matchbox

[Matchbox](https://matchbox.health/) is a FHIR server based on HAPI FHIR that supports StructureMap-based transformations (`$transform`).

#### 1. Start Matchbox

```
docker compose -f scripts/docker-compose.matchbox.yaml up -d

```

The server is reachable at `http://localhost:8080/matchbox/fhir`. Readiness can be checked with:

```
curl -sf http://localhost:8080/matchbox/fhir/metadata

```

#### 2. Load StructureMaps

FML files are sent as `text/fhir-mapping` to the StructureMap endpoint. Matchbox automatically compiles the FML syntax into a StructureMap resource:

```
curl -X POST \
  -H "Content-Type: text/fhir-mapping" \
  -H "Accept: application/fhir+json" \
  --data-binary @input/maps/sm-patient-demographics.fml \
  http://localhost:8080/matchbox/fhir/StructureMap

```

#### 3. Run the transformation

A DNPM patient record is transformed into an MII MTB FHIR bundle via `$transform`:

```
curl -X POST \
  -H "Content-Type: application/fhir+json" \
  -H "Accept: application/fhir+json" \
  -d @dnpm-patient-record.json \
  "http://localhost:8080/matchbox/fhir/StructureMap/\$transform?source=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/dnpm-to-mii-mtb"

```

#### 4. Automated

The script `scripts/fetch-and-transform.sh` runs all steps automatically:

1. fetch a DNPM test record from the API
1. load all FML StructureMaps into Matchbox
1. run the transformation
1. store the resulting bundle at`scripts/output/mii-mtb-bundle.json`

```
./scripts/fetch-and-transform.sh

```

The result can then be validated against the MII MTB profiles with `scripts/validate-output.sh`.

