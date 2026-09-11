# PatientKimMusterperson-Observation-12 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Observation-12**

## Beispiel Observation: PatientKimMusterperson-Observation-12

-------

**German**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-3.md)

**status**: Final

**code**: Recurrent

**value**: kein Hinweis auf Lokalrezidiv



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-12",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-3"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "255227004",
      "display" : "Recurrent"
    }]
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "41647002",
      "display" : "No evidence of (contextual qualifier) (qualifier value)"
    }],
    "text" : "kein Hinweis auf Lokalrezidiv"
  }
}

```
