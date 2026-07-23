# PatientKimMusterperson-Observation-8 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-8**

## Example Observation: PatientKimMusterperson-Observation-8

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-2.md)

**status**: Final

**code**: im linken Oberlappen der Lunge diskrete milchglasartige Trübung

**value**: kein Hinweis auf thorakale Filiae



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-8",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-2"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "112231000",
      "display" : "Atypical"
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
    "text" : "im linken Oberlappen der Lunge diskrete milchglasartige Trübung"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "41647002",
      "display" : "No evidence of (contextual qualifier) (qualifier value)"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "255058005",
      "display" : "Neoplasm of thorax"
    }],
    "text" : "kein Hinweis auf thorakale Filiae"
  }
}

```
