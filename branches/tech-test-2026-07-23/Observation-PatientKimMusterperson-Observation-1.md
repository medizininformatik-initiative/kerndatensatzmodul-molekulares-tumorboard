# PatientKimMusterperson-Observation-1 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-1**

## Example Observation: PatientKimMusterperson-Observation-1

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-1.md)

**status**: Final

**code**: Metastatic malignant neoplasm (disorder)

**value**: kein Hinweis auf thorakale Metastasierung



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-1",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-1"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "128462008",
      "display" : "Metastatic malignant neoplasm (disorder)"
    }]
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "41647002",
      "display" : "No evidence of (contextual qualifier) (qualifier value)"
    }],
    "text" : "kein Hinweis auf thorakale Metastasierung"
  }
}

```
