# PatientKimMusterperson-Observation-27 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-27**

## Example Observation: PatientKimMusterperson-Observation-27

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-7.md)

**status**: Final

**code**: vormals KM-aufnehmendes Lokalrezidiv im kleinen Becken

**value**: aktuell metrisch nur noch schwer fassbar

**bodySite**: True pelvis



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-27",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-7"
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
      "code" : "246455001",
      "display" : "Recurrence"
    }],
    "text" : "vormals KM-aufnehmendes Lokalrezidiv im kleinen Becken"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "246455001",
      "display" : "Recurrence"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "263920009",
      "display" : "Unrecordable"
    }],
    "text" : "aktuell metrisch nur noch schwer fassbar"
  },
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80266002",
      "display" : "True pelvis"
    }]
  }
}

```
