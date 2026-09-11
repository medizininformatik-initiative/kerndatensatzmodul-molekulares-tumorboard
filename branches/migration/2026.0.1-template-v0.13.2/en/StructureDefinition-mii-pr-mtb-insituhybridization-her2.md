# MII PR MTB In Situ Hybridization HER2 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB In Situ Hybridization HER2**

## Resource Profile: MII PR MTB In Situ Hybridization HER2 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization-her2 | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_INSITUHYBRIDIZATION_HER2 |

 
HER2/ERBB2 In Situ Hybridization (FISH) Bericht. Basiert auf LOINC Panel 74885-5. 

-------

### Description

Specialized profile for HER2 in-situ hybridization (ISH/FISH).

**Usages:**

* Examples for this Profile: [Observation/PatientKimMusterperson-MolecularPathologyObs-FISH-0a-Her2neu-](Observation-PatientKimMusterperson-MolecularPathologyObs-FISH-0a-Her2neu-.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-insituhybridization-her2.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-insituhybridization-her2.csv), [Excel](../StructureDefinition-mii-pr-mtb-insituhybridization-her2.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-insituhybridization-her2.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-insituhybridization-her2",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization-her2",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_INSITUHYBRIDIZATION_HER2",
  "title" : "MII PR MTB In Situ Hybridization HER2",
  "status" : "active",
  "date" : "2026-09-11T14:44:50+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "HER2/ERBB2 In Situ Hybridization (FISH) Bericht. Basiert auf LOINC Panel 74885-5.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 2
    },
    {
      "id" : "Observation.code.coding:spezifisch",
      "path" : "Observation.code.coding",
      "sliceName" : "spezifisch",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "49683-6",
        "display" : "ERBB2 gene copy number/Chromosome 17 copy number in Tissue by FISH"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueRatio",
      "path" : "Observation.value[x]",
      "sliceName" : "valueRatio",
      "short" : "HER2/CEP17 Ratio",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "HER2/CEP17 Verhaeltnis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "HER2/CEP17 Ratio"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1303773004",
          "display" : "Fluorescence in situ hybridization technique (qualifier value)"
        }]
      }
    },
    {
      "id" : "Observation.component:gene-studied",
      "path" : "Observation.component",
      "sliceName" : "gene-studied"
    },
    {
      "id" : "Observation.component:gene-studied.value[x]",
      "path" : "Observation.component.value[x]",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://www.genenames.org/geneId",
          "code" : "HGNC:3430",
          "display" : "ERBB2"
        }]
      }
    },
    {
      "id" : "Observation.component:biomarker-category",
      "path" : "Observation.component",
      "sliceName" : "biomarker-category"
    },
    {
      "id" : "Observation.component:biomarker-category.value[x].coding.code",
      "path" : "Observation.component.value[x].coding.code",
      "patternCode" : "inSituHybridization"
    },
    {
      "id" : "Observation.component:target-signals",
      "path" : "Observation.component",
      "sliceName" : "target-signals",
      "short" : "ERBB2 Signale pro Zellkern",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ERBB2 Signale pro Zellkern"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ERBB2 signals per cell nucleus"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:target-signals.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "74860-8",
          "display" : "ERBB2 gene copy number/nucleus in Tissue by FISH"
        }]
      }
    },
    {
      "id" : "Observation.component:target-signals.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:target-signals.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "#"
    },
    {
      "id" : "Observation.component:target-signals.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:reference-signals",
      "path" : "Observation.component",
      "sliceName" : "reference-signals",
      "short" : "CEP17 Signale pro Zellkern",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "CEP17 Signale pro Zellkern"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "CEP17 signals per cell nucleus"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:reference-signals.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "74861-6",
          "display" : "Chromosome 17 copy number/nucleus in Tissue by FISH"
        }]
      }
    },
    {
      "id" : "Observation.component:reference-signals.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:reference-signals.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "#"
    },
    {
      "id" : "Observation.component:reference-signals.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:cells-counted",
      "path" : "Observation.component",
      "sliceName" : "cells-counted",
      "short" : "Anzahl gezählter Zellkerne",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Anzahl gezaehlter Zellkerne"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Number of counted cell nuclei"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cells-counted.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "62361-1",
          "display" : "Cells counted [#]"
        }]
      }
    },
    {
      "id" : "Observation.component:cells-counted.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:cells-counted.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "#"
    },
    {
      "id" : "Observation.component:cells-counted.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    }]
  }
}

```
