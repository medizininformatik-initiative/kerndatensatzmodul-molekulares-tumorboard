# PatientKimMusterperson-Observation-29 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-29**

## Example Observation: PatientKimMusterperson-Observation-29

-------

**English**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-7.md)

**status**: Final

**code**: mediastinale Lymphknoten

**value**: formal noch vermehrte



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-29",
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
      "code" : "35105006",
      "display" : "Increased"
    }],
    "text" : "formal noch vermehrte"
  }
}

```
