# Tumorzellgehalt Aszites - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Tumorzellgehalt Aszites**

## Beispiel Observation: Tumorzellgehalt Aszites

-------

**German**

-------

Profile: [MII PR MTB Tumorzellgehalt](StructureDefinition-mii-pr-mtb-tumorzellgehalt.md) version: 2026.0.1

**status**: Final

**code**: Cells with cytogenetic abnormality [#] in Blood or Tissue by Molecular genetics method

**value**: 0.028 % (Details: UCUM code% = '%')

**method**: Histologisch



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mtb-kim-tumorzellgehalt-aszites",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt|2026.0.1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "93356-4",
      "display" : "Cells with cytogenetic abnormality [#] in Blood or Tissue by Molecular genetics method"
    }]
  },
  "valueQuantity" : {
    "value" : 0.028,
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-bestimmungsmethode-tumorzellgehalt",
      "code" : "histologic"
    }]
  }
}

```
