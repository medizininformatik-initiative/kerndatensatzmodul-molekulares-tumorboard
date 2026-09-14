# Ploidie Beispiel - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ploidie Beispiel**

## Example Observation: Ploidie Beispiel

-------

**English**

-------

Profile: [MII PR MTB Ploidie](StructureDefinition-mii-pr-mtb-ploidie.md) version: 2026.0.1

**status**: Registered

**category**: Laboratory, A characterization of a given biomarker observation.

**code**: DNA Ploidy Analysis

**value**: 2.4

**interpretation**: High



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MII-EXA-MTB-Ploidie-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ploidie|2026.0.1"]
  },
  "status" : "registered",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
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
      "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
      "code" : "C18303",
      "display" : "DNA Ploidy Analysis"
    }]
  },
  "valueQuantity" : {
    "value" : 2.4
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }]
}

```
