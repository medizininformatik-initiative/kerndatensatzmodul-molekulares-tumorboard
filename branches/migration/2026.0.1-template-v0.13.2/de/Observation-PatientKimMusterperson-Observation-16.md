# PatientKimMusterperson-Observation-16 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Observation-16**

## Beispiel Observation: PatientKimMusterperson-Observation-16

-------

**German**

-------

**partOf**: [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-4.md)

**status**: Final

**code**: Progredienter Aszites

**value**: 700 ml (Details: UCUM codemL = 'mL')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Observation-16",
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "255314001",
      "display" : "Progressive"
    }],
    "text" : "Progredienter Aszites"
  },
  "valueQuantity" : {
    "value" : 700,
    "unit" : "ml",
    "system" : "http://unitsofmeasure.org",
    "code" : "mL"
  }
}

```
