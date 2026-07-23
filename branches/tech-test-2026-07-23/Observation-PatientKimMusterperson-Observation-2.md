# PatientKimMusterperson-Observation-2 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-2**

## Example Observation: PatientKimMusterperson-Observation-2

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-1.md)

**status**: Final

**code**: Recurrent

**value**: kein Hinweis auf Lokalrezidiv



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-2",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-1"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "255227004",
      "display" : "Recurrent"
    }]
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "41647002",
      "display" : "No evidence of (contextual qualifier) (qualifier value)"
    }],
    "text" : "kein Hinweis auf Lokalrezidiv"
  }
}

```
