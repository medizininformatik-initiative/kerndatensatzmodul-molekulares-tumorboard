# PatientKimMusterperson-Observation-13 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-13**

## Example Observation: PatientKimMusterperson-Observation-13

-------

**English**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-3.md)

**status**: Final

**code**: regrediente Milchglasinfiltrate im linken Oberlappen

**value**: a.e. atypisch entzündlich



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-13",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-3"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "255227004",
      "display" : "Recurrent"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "1217294009",
      "display" : "Ground glass opacity"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "44714003",
      "display" : "Structure of upper lobe of left lung"
    }],
    "text" : "regrediente Milchglasinfiltrate im linken Oberlappen"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "112231000",
      "display" : "Atypical"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "257552002",
      "display" : "Inflammation"
    }],
    "text" : "a.e. atypisch entzündlich"
  }
}

```
