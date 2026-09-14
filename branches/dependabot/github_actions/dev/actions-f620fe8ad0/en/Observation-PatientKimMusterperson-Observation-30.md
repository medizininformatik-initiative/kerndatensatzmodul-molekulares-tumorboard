# PatientKimMusterperson-Observation-30 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-30**

## Example Observation: PatientKimMusterperson-Observation-30

-------

**English**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-7.md)

**status**: Final

**code**: mediastinale Lymphknoten

**value**: nicht mehr KM-aufnehmende



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-30",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-7"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "245276004",
      "display" : "Mediastinal lymph node group"
    }],
    "text" : "mediastinale Lymphknoten"
  },
  "valueCodeableConcept" : {
    "coding" : [{
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
    "text" : "nicht mehr KM-aufnehmende"
  }
}

```
