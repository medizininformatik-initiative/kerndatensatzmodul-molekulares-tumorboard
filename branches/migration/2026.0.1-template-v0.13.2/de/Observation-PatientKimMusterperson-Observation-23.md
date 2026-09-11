# PatientKimMusterperson-Observation-23 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Observation-23**

## Beispiel Observation: PatientKimMusterperson-Observation-23

-------

**German**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-5.md)

**status**: Final

**code**: Läsion

**value**: keine neue



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-23",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-5"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "52988006",
      "display" : "Lesion"
    }],
    "text" : "Läsion"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "373067005",
      "display" : "No"
    }],
    "text" : "keine neue"
  }
}

```
