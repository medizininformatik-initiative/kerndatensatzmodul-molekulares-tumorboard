# Beispiel fuer BRCAness-Analyse - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel fuer BRCAness-Analyse**

## Beispiel Observation: Beispiel fuer BRCAness-Analyse

-------

**German**

-------

Profile: [MII PR MTB BRCAness](StructureDefinition-mii-pr-mtb-brcaness.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, Genetik, A characterization of a given biomarker observation.

**code**: BRCAness

**subject**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

**encounter**: [Encounter/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Encounter/example)

**interpretation**: High

**specimen**: [Specimen/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Specimen/example)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Gene studied [ID] | BRCA1 |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MII-EXA-MTB-BRCAness-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-brcaness|2026.0.1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "GE"
    }]
  },
  {
    "coding" : [{
      "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
      "code" : "biomarker-category"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
      "code" : "brcaness",
      "display" : "BRCAness"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mtb-patient"
  },
  "encounter" : {
    "reference" : "Encounter/example"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "specimen" : {
    "reference" : "Specimen/example"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48018-6"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "HGNC:1100",
        "display" : "BRCA1"
      }]
    }
  }]
}

```
