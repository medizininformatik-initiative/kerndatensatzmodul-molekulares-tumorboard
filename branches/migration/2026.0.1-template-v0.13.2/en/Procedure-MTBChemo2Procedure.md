# MTBChemo2Procedure - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTBChemo2Procedure**

## Example Procedure: MTBChemo2Procedure

-------

**English**

-------

Profile: [MII PR MTB Systemische Vortherapie](StructureDefinition-mii-pr-mtb-systemische-vortherapie.md) version: 2026.0.1

**MII EX Onko Systemische Therapie Intention**: kurativ

**basedOn**: [CarePlan: status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2023-03-28](CarePlan-mii-exa-mtb-kim-musterperson-therapieplan.md)

**status**: Completed

**category**: Therapeutic procedure

**code**: Chemotherapy

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**performed**: 2023-06-24 --> 2023-10-12

**outcome**: Reguläres Ende



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "MTBChemo2Procedure",
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
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-mtb-kim-musterperson-therapieplan"
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
    "start" : "2023-06-24",
    "end" : "2023-10-12"
  },
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund",
      "code" : "E"
    }],
    "text" : "Reguläres Ende"
  }
}

```
