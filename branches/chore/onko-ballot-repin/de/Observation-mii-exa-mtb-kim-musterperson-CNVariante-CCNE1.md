# CCNE1 Einfache Variante 2 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **CCNE1 Einfache Variante 2**

## Beispiel Observation: CCNE1 Einfache Variante 2

-------

**German**

-------

Profile: [MII PR MTB Copy Number Variant](StructureDefinition-mii-pr-mtb-copy-number-variant.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, Genetik

**code**: Genetic variant assessment

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**value**: Present

> **component****code**: Gene studied [ID]**value**: CCNE1

> **component****code**: type**value**: high-level-gain

> **component****code**: Genomic structural variant copy number**value**: 7 1 (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mtb-kim-musterperson-CNVariante-CCNE1",
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
    "reference" : "Patient/PatientKimMusterperson"
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
        "system" : "http://loinc.org",
        "code" : "48018-6",
        "display" : "Gene studied [ID]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.genenames.org/geneId",
        "code" : "HGNC:1589",
        "display" : "CCNE1"
      }]
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
        "system" : "http://loinc.org",
        "code" : "82155-3",
        "display" : "Genomic structural variant copy number"
      }]
    },
    "valueQuantity" : {
      "value" : 7,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  }]
}

```
