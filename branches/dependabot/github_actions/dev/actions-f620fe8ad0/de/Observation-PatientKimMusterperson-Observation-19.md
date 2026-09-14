# PatientKimMusterperson-Observation-19 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Observation-19**

## Beispiel Observation: PatientKimMusterperson-Observation-19

-------

**German**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-4.md)

**status**: Final

**code**: kleinen Becken

**value**: Lokalrezidiv bei kontrastmittelaufnehmender Raumforderung



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-19",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80266002",
      "display" : "True pelvis"
    }],
    "text" : "kleinen Becken"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "255227004",
      "display" : "Recurrent"
    }],
    "text" : "Lokalrezidiv bei kontrastmittelaufnehmender Raumforderung"
  }
}

```
