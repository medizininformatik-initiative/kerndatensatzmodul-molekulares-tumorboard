# PatientKimMusterperson-Observation-3 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-3**

## Example Observation: PatientKimMusterperson-Observation-3

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-1.md)

**status**: Final

**code**: Ascites

**value**: kein Aszites



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-3",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-1"
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
