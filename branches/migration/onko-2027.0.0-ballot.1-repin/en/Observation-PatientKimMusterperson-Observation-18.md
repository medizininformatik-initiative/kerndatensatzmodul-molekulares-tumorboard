# PatientKimMusterperson-Observation-18 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Observation-18**

## Example Observation: PatientKimMusterperson-Observation-18

-------

**English**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-4.md)

**status**: Final

**code**: Peritonealkarzinose

**value**: Progress



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-18",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "836274002",
      "display" : "Carcinomatosis of peritoneum"
    }],
    "text" : "Peritonealkarzinose"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "255314001",
      "display" : "Progressive"
    }],
    "text" : "Progress"
  }
}

```
