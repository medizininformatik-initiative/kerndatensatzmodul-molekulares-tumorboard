# PatientKimMusterperson-Observation-6 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Observation-6**

## Beispiel Observation: PatientKimMusterperson-Observation-6

-------

**German**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-2.md)

**status**: Final

**code**: Ascites

**value**: kein Aszites



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-6",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-2"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "389026000",
      "display" : "Ascites"
    }]
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "860638000",
      "display" : "No ascites"
    }],
    "text" : "kein Aszites"
  }
}

```
