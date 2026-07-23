# Beispiel DNA-Fusion - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel DNA-Fusion**

## Example Observation: Beispiel DNA-Fusion

Profile: [MII PR MTB DNA Fusion](StructureDefinition-mii-pr-mtb-dna-fusion.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, Genetik

**code**: Genetic variant assessment

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

> **component****code**: Five Prime Chromosome**value**: Chromosome 2

> **component****code**: Three Prime Chromosome**value**: Chromosome 5

> **component****code**: Five Prime Position**value**: 12345678-12345680

> **component****code**: Three Prime Position**value**: 87654321-87654323

> **component****code**: Five Prime Gene**value**: BRCA1

> **component****code**: Three Prime Gene**value**: RET

> **component****code**: Allelic read depth**value**: 150 Number of reported reads (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MII-EXA-MTB-DNA-Fusion-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-dna-fusion|2026.0.1"]
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
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "five-prime-chromosome"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA21255-7",
        "display" : "Chromosome 2"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "three-prime-chromosome"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA21258-1",
        "display" : "Chromosome 5"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "five-prime-position"
      }]
    },
    "valueRange" : {
      "low" : {
        "value" : 12345678
      },
      "high" : {
        "value" : 12345680
      }
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "three-prime-position"
      }]
    },
    "valueRange" : {
      "low" : {
        "value" : 87654321
      },
      "high" : {
        "value" : 87654323
      }
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "five-prime-gene"
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
        "code" : "three-prime-gene"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "HGNC:9967",
        "display" : "RET"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "82121-5"
      }]
    },
    "valueQuantity" : {
      "value" : 150,
      "unit" : "Number of reported reads",
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  }]
}

```
