# BRAF Variante - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BRAF Variante**

## Beispiel Observation: BRAF Variante

-------

**German**

-------

Profile: [MII PR MTB Einfache Variante](StructureDefinition-mii-pr-mtb-einfache-variante.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, Genetik

**code**: Genetic variant assessment

**subject**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

**value**: Present

**method**: Sequencing

> **component****code**: Chromosome [Identifier] in Blood or Tissue by Molecular genetics method**value**: Chromosome 17

> **component****code**: Gene studied [ID]**value**: BRAF

> **component****code**: Transcript reference sequence [ID]**value**: NM_133433.4

> **component****code**: DNA region name [Identifier]**value**: Exon #15

> **component****code**: DNA region name [Identifier]**value**: Codon #582 - #612

> **component****code**: Genomic allele start-end**value**: 43044295-43125364

> **component****code**: DNA change (c.HGVS)**value**: NM_004333.4:c.1799T>A

> **component****code**: Amino acid change (pHGVS)**value**: p.(Val600Glu)

> **component****code**: Sample variant allelic frequency [NFr]**value**: 30.25 % (Details: UCUM code% = '%')

> **component****code**: Discrete genetic variant**value**: rs113488022



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MII-EXA-MTB-Einfache-Variante",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante|2026.0.1"]
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
    "reference" : "Patient/mii-exa-mtb-patient"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA9633-4",
      "display" : "Present"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA26398-0",
      "display" : "Sequencing"
    }]
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
        "code" : "48018-6",
        "display" : "Gene studied [ID]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.genenames.org/geneId",
        "code" : "HGNC:1097",
        "display" : "BRAF"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "51958-7"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.ncbi.nlm.nih.gov/refseq/",
        "code" : "NM_133433.4"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "47999-8",
        "display" : "DNA region name [Identifier]"
      }]
    },
    "valueString" : "Exon #15"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "47999-8",
        "display" : "DNA region name [Identifier]"
      }]
    },
    "valueString" : "Codon #582 - #612"
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
        "code" : "48004-6",
        "display" : "DNA change (c.HGVS)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://varnomen.hgvs.org",
        "code" : "NM_004333.4:c.1799T>A"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48005-3",
        "display" : "Amino acid change (pHGVS)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://varnomen.hgvs.org",
        "code" : "p.(Val600Glu)"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81258-6",
        "display" : "Sample variant allelic frequency [NFr]"
      }]
    },
    "valueQuantity" : {
      "value" : 30.25,
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81252-9",
        "display" : "Discrete genetic variant"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.ncbi.nlm.nih.gov/projects/SNP",
        "code" : "rs113488022"
      }]
    }
  }]
}

```
