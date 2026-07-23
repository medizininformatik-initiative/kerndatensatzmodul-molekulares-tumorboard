# PatientKimMusterperson-Observation-21 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-21**

## Example Observation: PatientKimMusterperson-Observation-21

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-5.md)

**status**: Final

**code**: im kleinen Becken

**value**: rückläufige KM-Aufnahme der lokalrezidivsuspekten Raumforderung



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-21",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-5"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80266002",
      "display" : "True pelvis"
    }],
    "text" : "im kleinen Becken"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "37865006",
      "display" : "Regressive"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "385420005",
      "display" : "Contrast media"
    }],
    "text" : "rückläufige KM-Aufnahme der lokalrezidivsuspekten Raumforderung"
  }
}

```
