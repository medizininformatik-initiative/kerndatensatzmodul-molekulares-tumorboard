# PatientKimMusterperson-Observation-14 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-14**

## Example Observation: PatientKimMusterperson-Observation-14

-------

**English**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-3.md)

**status**: Final

**code**: mediastinaler Lymphknoten

**value**: vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-14",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-3"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "245276004",
      "display" : "Mediastinal lymph node group"
    }],
    "text" : "mediastinaler Lymphknoten"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "258283002",
      "display" : "Lymphomatous nodal involvement"
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
    "text" : "vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme"
  }
}

```
