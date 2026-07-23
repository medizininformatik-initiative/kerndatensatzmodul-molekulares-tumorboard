# 10.03.2023 Krankenkassenantrag gestellt Mirvetuximab soravtansine - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **10.03.2023 Krankenkassenantrag gestellt Mirvetuximab soravtansine**

## Example Claim: 10.03.2023 Krankenkassenantrag gestellt Mirvetuximab soravtansine

Profile: [MII PR MTB Antrag Kostenuebernahme](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md) version: 2026.0.1

**status**: Active

**type**: institutional

**use**: Claim

**patient**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**created**: 2023-03-10

**provider**: [Organization Example General Hospital](Organization-MyHospital.md)

**priority**: Normal

### Relateds

| | |
| :--- | :--- |
| - | **Relationship** |
| * | initial-claim |

**prescription**: [MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28](MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.md)

### CareTeams

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Provider** | **Responsible** |
| * | 1 | [Organization Example Health Insurance Co.](Organization-MyInsurer.md) | true |

### Insurances

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** | **ClaimResponse** |
| * | 1 | true | [Coverage: status = active; type = extended healthcare; period = 2023-01-01 --> 2025-12-31](Coverage-MyCoverage.md) | [ClaimResponse: status = active; type = institutional; use = claim; created = 2023-05-01; outcome = complete](ClaimResponse-MII-EXA-MTB-Antwort-Kostenuebernahme-1.md) |



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "MII-EXA-MTB-Antrag-Kostenuebernahme-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme|2026.0.1"]
  },
  "status" : "active",
  "type" : {
    "coding" : [{
      "code" : "institutional"
    }]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "created" : "2023-03-10",
  "provider" : {
    "reference" : "Organization/MyHospital"
  },
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
      "code" : "normal"
    }]
  },
  "related" : [{
    "relationship" : {
      "coding" : [{
        "code" : "initial-claim"
      }]
    }
  }],
  "prescription" : {
    "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
  },
  "careTeam" : [{
    "sequence" : 1,
    "provider" : {
      "reference" : "Organization/MyInsurer"
    },
    "responsible" : true
  }],
  "insurance" : [{
    "sequence" : 1,
    "focal" : true,
    "coverage" : {
      "reference" : "Coverage/MyCoverage"
    },
    "claimResponse" : {
      "reference" : "ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-1"
    }
  }]
}

```
