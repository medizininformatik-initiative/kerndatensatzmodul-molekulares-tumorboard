# Beispiel RNA-Fusion - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel RNA-Fusion**

## Example Observation: Beispiel RNA-Fusion

Profile: [MII PR MTB RNA Fusion](StructureDefinition-mii-pr-mtb-rna-fusion.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, Genetik

**code**: Genetic variant assessment

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**value**: Present

> **component****code**: Five Prime Gene**value**: EML4

> **component****code**: Five Prime Transcript ID**value**: NM_019063.4

> **component****code**: Five Prime Exon ID**value**: Exon 13

> **component****code**: Five Prime Position**value**: 42396490-42396490

> **component****code**: Five Prime Strand**value**: Watson_strand

> **component****code**: Three Prime Gene**value**: ALK

> **component****code**: Three Prime Transcript ID**value**: NM_004304.5

> **component****code**: Three Prime Exon ID**value**: Exon 20

> **component****code**: Three Prime Position**value**: 29446394-29446394

> **component****code**: Three Prime Strand**value**: Watson_strand

> **component****code**: Discrete genetic variant**value**: EML4-ALK fusion

> **component****code**: Allelic read depth**value**: 250 reads (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MII-EXA-MTB-RNA-Fusion-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-rna-fusion|2026.0.1"]
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
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA9633-4",
      "display" : "Present"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "five-prime-gene"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.genenames.org/geneId",
        "code" : "HGNC:1316",
        "display" : "EML4"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "five-prime-transcript-id"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.ncbi.nlm.nih.gov/refseq/",
        "code" : "NM_019063.4"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "five-prime-exon-id"
      }]
    },
    "valueCodeableConcept" : {
      "text" : "Exon 13"
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
        "value" : 42396490
      },
      "high" : {
        "value" : 42396490
      }
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "five-prime-strand"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.sequenceontology.org",
        "code" : "SO:0002262",
        "display" : "Watson_strand"
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
        "system" : "http://www.genenames.org/geneId",
        "code" : "HGNC:427",
        "display" : "ALK"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "three-prime-transcript-id"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.ncbi.nlm.nih.gov/refseq/",
        "code" : "NM_004304.5"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "three-prime-exon-id"
      }]
    },
    "valueCodeableConcept" : {
      "text" : "Exon 20"
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
        "value" : 29446394
      },
      "high" : {
        "value" : 29446394
      }
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
        "code" : "three-prime-strand"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.sequenceontology.org",
        "code" : "SO:0002262",
        "display" : "Watson_strand"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81252-9"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://cancer.sanger.ac.uk/cosmic",
        "code" : "COSF1171",
        "display" : "EML4-ALK fusion"
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
      "value" : 250,
      "unit" : "reads",
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  }]
}

```
