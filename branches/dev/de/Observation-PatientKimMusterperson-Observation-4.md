# PatientKimMusterperson-Observation-4 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Observation-4**

## Beispiel Observation: PatientKimMusterperson-Observation-4

-------

**German**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-1.md)

**status**: Final

**code**: Status post (contextual qualifier) (qualifier value)

**value**: Flüssigkeitskollektion angrenzend DD postoperativ

**bodySite**: Entire duodenum



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-4",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-1"
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
      "display" : "Atypical (qualifier value)"
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
      "code" : "262061000",
      "display" : "After surgery"
    }],
    "text" : "Flüssigkeitskollektion angrenzend DD postoperativ"
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
