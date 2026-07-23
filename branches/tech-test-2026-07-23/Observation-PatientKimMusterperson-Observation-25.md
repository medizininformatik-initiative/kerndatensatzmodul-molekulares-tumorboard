# PatientKimMusterperson-Observation-25 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-25**

## Example Observation: PatientKimMusterperson-Observation-25

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-6.md)

**status**: Final

**code**: Lokalrezidiv

**value**: regredientes Lokalrezidiv ohne KM-Aufnahme im kleinen Becken



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-25",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-6"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "255227004",
      "display" : "Recurrent"
    }],
    "text" : "Lokalrezidiv"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "37865006",
      "display" : "Regressive"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "373067005",
      "display" : "No"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "385420005",
      "display" : "Contrast media"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "151174005",
      "display" : "Drug intake observed"
    }],
    "text" : "regredientes Lokalrezidiv ohne KM-Aufnahme im kleinen Becken"
  }
}

```
