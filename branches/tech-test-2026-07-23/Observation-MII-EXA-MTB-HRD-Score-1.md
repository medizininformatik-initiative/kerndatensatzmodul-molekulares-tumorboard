# Beispiel HRD-Score - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel HRD-Score**

## Example Observation: Beispiel HRD-Score

Profile: [MII PR MTB HRD Score](StructureDefinition-mii-pr-mtb-hrd-score.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, Genetik, A characterization of a given biomarker observation.

**code**: Homologous recombination deficiency status analysis [Presence] in Tissue by Molecular genetics method

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**encounter**: [Encounter/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Encounter/example)

**performer**: [Practitioner/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Practitioner/example)

**value**: 43

**interpretation**: High

**specimen**: [Specimen/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Specimen/example)

> **component****code**: Loss of Heterozygosity**value**: 14

> **component****code**: Telomeric Allelic Imbalance Region**value**: 12

> **component****code**: Large-Scale State Transition**value**: 17



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MII-EXA-MTB-HRD-Score-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-hrd-score|2026.0.1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
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
      "system" : "http://loinc.org",
      "code" : "107286-7",
      "display" : "Homologous recombination deficiency status analysis [Presence] in Tissue by Molecular genetics method"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "encounter" : {
    "reference" : "Encounter/example"
  },
  "performer" : [{
    "reference" : "Practitioner/example"
  }],
  "valueInteger" : 43,
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
        "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
        "code" : "C18016",
        "display" : "Loss of Heterozygosity"
      }]
    },
    "valueInteger" : 14
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
        "code" : "C129774",
        "display" : "Telomeric Allelic Imbalance Region"
      }]
    },
    "valueInteger" : 12
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
        "code" : "C120466",
        "display" : "Large-Scale State Transition"
      }]
    },
    "valueInteger" : 17
  }]
}

```
