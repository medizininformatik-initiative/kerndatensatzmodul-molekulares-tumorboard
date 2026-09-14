# PatientKimMusterperson-Observation-26 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-26**

## Example Observation: PatientKimMusterperson-Observation-26

-------

**English**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-7.md)

**status**: Final

**code**: kleinen Becken

**value**: geringer Aszites



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-26",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-7"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80266002",
      "display" : "True pelvis"
    }],
    "text" : "kleinen Becken"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "255606000",
      "display" : "Minor"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "389026000",
      "display" : "Ascites"
    }],
    "text" : "geringer Aszites"
  }
}

```
