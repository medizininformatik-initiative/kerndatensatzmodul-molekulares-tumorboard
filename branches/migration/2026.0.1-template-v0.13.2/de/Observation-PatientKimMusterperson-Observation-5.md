# PatientKimMusterperson-Observation-5 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Observation-5**

## Beispiel Observation: PatientKimMusterperson-Observation-5

-------

**German**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-2.md)

**status**: Final

**code**: Status post (contextual qualifier) (qualifier value)

**value**: konstante Flüssigkeitskollektion angrenzend

**bodySite**: Entire duodenum



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-5",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-2"
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
      "code" : "420341009",
      "display" : "Constant"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "309201001",
      "display" : "Ascitic fluid specimen"
    }],
    "text" : "konstante Flüssigkeitskollektion angrenzend"
  },
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "181247007",
      "display" : "Entire duodenum"
    }]
  }
}

```
