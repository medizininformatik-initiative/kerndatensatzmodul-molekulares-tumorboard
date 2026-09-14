# PatientKimMusterperson-Observation-24 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-24**

## Example Observation: PatientKimMusterperson-Observation-24

-------

**English**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-6.md)

**status**: Final

**code**: Ascites

**value**: kein Aszites



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-24",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-6"
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
