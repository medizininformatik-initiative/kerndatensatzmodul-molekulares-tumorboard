# MTBChemo1Procedure - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MTBChemo1Procedure**

## Beispiel Procedure: MTBChemo1Procedure

-------

**German**

-------

Profile: [MII PR MTB Systemische Vortherapie](StructureDefinition-mii-pr-mtb-systemische-vortherapie.md) version: 2026.0.1

**MII EX Onko Systemische Therapie Intention**: kurativ

**status**: Completed

**category**: Therapeutic procedure

**code**: Chemotherapy

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**performed**: 2023-01-04 --> 2023-05-24

**outcome**: Reguläres Ende mit Substanzwechsel



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "MTBChemo1Procedure",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie|2026.0.1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K"
      }]
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "277132007"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "367336001"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "code" : "CH"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "performedPeriod" : {
    "start" : "2023-01-04",
    "end" : "2023-05-24"
  },
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund",
      "code" : "W"
    }],
    "text" : "Reguläres Ende mit Substanzwechsel"
  }
}

```
