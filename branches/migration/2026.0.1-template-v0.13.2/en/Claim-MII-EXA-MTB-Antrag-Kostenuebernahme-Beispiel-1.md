# Beispiel fuer einen Antrag auf Kostenuebernahme - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel fuer einen Antrag auf Kostenuebernahme**

## Example Claim: Beispiel fuer einen Antrag auf Kostenuebernahme

-------

**English**

-------

Profile: [MII PR MTB Antrag Kostenuebernahme](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md) version: 2026.0.1

**status**: Active

**type**: institutional

**use**: Claim

**patient**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

**created**: 2024-07-07

**provider**: [Organization/InstitutionID](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/InstitutionID)

**priority**: Normal

### Relateds

| | |
| :--- | :--- |
| - | **Relationship** |
| * | initial-claim |

**prescription**: [MedicationRequest/TherapieempfehlungExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/MedicationRequest/TherapieempfehlungExample)

### CareTeams

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Provider** | **Responsible** |
| * | 1 | [Organization/ZPMExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/ZPMExample) | true |

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage/CoverageExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Coverage/CoverageExample) |



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
    "reference" : "Organization/InstitutionID"
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
    "reference" : "MedicationRequest/TherapieempfehlungExample"
  },
  "careTeam" : [{
    "sequence" : 1,
    "provider" : {
      "reference" : "Organization/ZPMExample"
    },
    "responsible" : true
  }],
  "insurance" : [{
    "sequence" : 1,
    "focal" : true,
    "coverage" : {
      "reference" : "Coverage/CoverageExample"
    }
  }]
}

```
