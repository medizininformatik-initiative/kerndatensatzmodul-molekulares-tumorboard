# PatientKimMusterperson-Observation-20 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-20**

## Example Observation: PatientKimMusterperson-Observation-20

-------

**English**

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
