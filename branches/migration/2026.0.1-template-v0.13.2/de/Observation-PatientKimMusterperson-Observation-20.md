# PatientKimMusterperson-Observation-20 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Observation-20**

## Beispiel Observation: PatientKimMusterperson-Observation-20

-------

**German**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-5.md)

**status**: Final

**code**: Aszites

**value**: Regredient



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-20",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-5"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "389026000",
      "display" : "Ascites"
    }],
    "text" : "Aszites"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "37865006",
      "display" : "Regressive"
    }],
    "text" : "Regredient"
  }
}

```
