# PatientKimMusterperson-Observation-9 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Observation-9**

## Beispiel Observation: PatientKimMusterperson-Observation-9

-------

**German**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-3.md)

**status**: Final

**code**: Status post (contextual qualifier) (qualifier value)

**value**: regrediente Flüssigkeitskollektion am Leberrand

**bodySite**: Entire liver



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-9",
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
      "code" : "309201001",
      "display" : "Ascitic fluid specimen"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "249567002",
      "display" : "Liver edge (finding)"
    }],
    "text" : "regrediente Flüssigkeitskollektion am Leberrand"
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
