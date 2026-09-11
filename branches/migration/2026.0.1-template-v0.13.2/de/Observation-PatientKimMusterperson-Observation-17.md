# PatientKimMusterperson-Observation-17 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Observation-17**

## Beispiel Observation: PatientKimMusterperson-Observation-17

-------

**German**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-4.md)

**status**: Final

**code**: Peritonealblatt

**value**: Peritonealblatt mit zunehmender, unregelmäßiger KM-Aufnahme



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-17",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "362700006",
      "display" : "Entire peritoneal serous membrane of peritoneum"
    }],
    "text" : "Peritonealblatt"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385420005",
      "display" : "Contrast media"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "49608001",
      "display" : "Irregular"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "260366006",
      "display" : "Increase"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "151174005",
      "display" : "Drug intake observed"
    }],
    "text" : "Peritonealblatt mit zunehmender, unregelmäßiger KM-Aufnahme"
  }
}

```
