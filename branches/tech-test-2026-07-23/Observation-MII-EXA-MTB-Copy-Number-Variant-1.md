# Beispiel fuer Copy Number Variant - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel fuer Copy Number Variant**

## Example Observation: Beispiel fuer Copy Number Variant

Profile: [MII PR MTB Copy Number Variant](StructureDefinition-mii-pr-mtb-copy-number-variant.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, Genetik

**code**: Genetic variant assessment

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

> **component****code**: Chromosome [Identifier] in Blood or Tissue by Molecular genetics method**value**: Chromosome 17

> **component****code**: Genomic allele start-end**value**: 43044295-43125364

> **component****code**: Genomic structural variant copy number**value**: 3 1 (Details: UCUM code1 = '1')

> **component****code**: Relative Copy Number of Allele A and B**value**: 1.5 1 (Details: UCUM code1 = '1')

> **component****code**: Copy Number of Allele B**value**: 1 1 (Details: UCUM code1 = '1')

> **component****code**: Copy Number of Allele A**value**: 2 1 (Details: UCUM code1 = '1')

> **component****code**: Gene studied [ID]**value**: BRCA1

> **component****code**: Reported focality**value**: 100 % (Details: UCUM code% = '%')

> **component****code**: type**value**: high-level-gain

> **component****code**: Copy Number Neutral Loss of Heterozygosity**value**: Yes



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MII-EXA-MTB-Copy-Number-Variant-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-copy-number-variant|2026.0.1"]
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
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "69548-6",
      "display" : "Genetic variant assessment"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48000-4"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA21270-6",
        "display" : "Chromosome 17"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81254-5"
      }]
    },
    "valueRange" : {
      "low" : {
        "value" : 43044295
      },
      "high" : {
        "value" : 43125364
      }
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "82155-3"
      }]
    },
    "valueQuantity" : {
      "value" : 3,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "relative-copy-number"
      }]
    },
    "valueQuantity" : {
      "value" : 1.5,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "copy-number-allele-a"
      }]
    },
    "valueQuantity" : {
      "value" : 1,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "copy-number-allele-b"
      }]
    },
    "valueQuantity" : {
      "value" : 2,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  {
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
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "reported-focality"
      }]
    },
    "valueQuantity" : {
      "value" : 100,
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://bwhc.de/mtb/genetics-copy-number-variant",
        "code" : "type"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://bwhc.de/mtb/genetics-copy-number-variant",
        "code" : "high-level-gain",
        "display" : "high-level-gain"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "copy-number-neutral-loh"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA33-6"
      }]
    }
  }]
}

```
