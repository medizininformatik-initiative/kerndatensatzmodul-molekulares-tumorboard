# Beispiel fuer einen Antrag auf Kostenuebernahme - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel fuer einen Antrag auf Kostenuebernahme**

## Beispiel Claim: Beispiel fuer einen Antrag auf Kostenuebernahme

-------

**German**

-------

Profile: [MII PR MTB Antrag Kostenuebernahme](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md) version: 2026.0.1

**status**: Active

**type**: institutional

**use**: Claim

**patient**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

**created**: 2024-07-07

**provider**: [Organization Example General Hospital](Organization-MyHospital.md)

**priority**: Normal

### Relateds

| | |
| :--- | :--- |
| - | **Relationship** |
| * | initial-claim |

**prescription**: [MedicationRequest: status = active; intent = option; medication[x] = Dabrafenib; authoredOn = 2024-01-01](MedicationRequest-mii-exa-mtb-therapieempfehlung-dabrafenib.md)

### CareTeams

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Provider** | **Responsible** |
| * | 1 | [Organization Example General Hospital](Organization-MyHospital.md) | true |

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage: status = active; type = extended healthcare; period = 2023-01-01 --> 2025-12-31](Coverage-MyCoverage.md) |



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1",
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
    "reference" : "Patient/mii-exa-mtb-patient"
  },
  "created" : "2024-07-07",
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
    "reference" : "MedicationRequest/mii-exa-mtb-therapieempfehlung-dabrafenib"
  },
  "careTeam" : [{
    "sequence" : 1,
    "provider" : {
      "reference" : "Organization/MyHospital"
    },
    "responsible" : true
  }],
  "insurance" : [{
    "sequence" : 1,
    "focal" : true,
    "coverage" : {
      "reference" : "Coverage/MyCoverage"
    }
  }]
}

```
