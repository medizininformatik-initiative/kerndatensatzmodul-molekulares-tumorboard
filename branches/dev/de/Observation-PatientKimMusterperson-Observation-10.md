# PatientKimMusterperson-Observation-10 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Observation-10**

## Beispiel Observation: PatientKimMusterperson-Observation-10

-------

**German**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-3.md)

**status**: Final

**code**: Status post (contextual qualifier) (qualifier value)

**value**: Darüberhinaus kein Hinweis auf Leberfilialisierung.

**bodySite**: Entire liver



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-10",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-3"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "237679004",
      "display" : "Status post (contextual qualifier) (qualifier value)"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "112231000",
      "display" : "Atypical"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "174430004",
      "display" : "Resection of segment of liver (procedure)"
    }]
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "94381002",
      "display" : "Metastatic malignant neoplasm to liver (disorder)"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "41647002",
      "display" : "No evidence of (contextual qualifier) (qualifier value)"
    }],
    "text" : "Darüberhinaus kein Hinweis auf Leberfilialisierung."
  },
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "181268008",
      "display" : "Entire liver"
    }]
  }
}

```
