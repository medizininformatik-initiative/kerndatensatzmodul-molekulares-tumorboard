# PatientKimMusterperson-Observation-22 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-22**

## Example Observation: PatientKimMusterperson-Observation-22

-------

**English**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-5.md)

**status**: Final

**code**: zahlenmäßig vermehrten LK im Mediastinum

**value**: noch flaue, aber insgesamt regrediente KM-Aufnhame



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-22",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-5"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "274744005",
      "display" : "Localized enlarged lymph nodes"
    }],
    "text" : "zahlenmäßig vermehrten LK im Mediastinum"
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
    "text" : "noch flaue, aber insgesamt regrediente KM-Aufnhame"
  }
}

```
