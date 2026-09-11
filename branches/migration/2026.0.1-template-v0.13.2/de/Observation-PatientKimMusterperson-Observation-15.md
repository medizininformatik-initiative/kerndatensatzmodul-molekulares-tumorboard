# PatientKimMusterperson-Observation-15 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Observation-15**

## Beispiel Observation: PatientKimMusterperson-Observation-15

-------

**German**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-3.md)

**status**: Final

**code**: mediastinaler Lymphknoten

**value**: ohne pathologische Vergrößerung



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-15",
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
      "code" : "373067005",
      "display" : "No"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "15454001",
      "display" : "Increased size"
    }],
    "text" : "ohne pathologische Vergrößerung"
  }
}

```
