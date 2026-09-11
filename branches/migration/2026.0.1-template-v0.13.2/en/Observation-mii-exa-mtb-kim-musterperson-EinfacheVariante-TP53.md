# TP53 Einfache Variante - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TP53 Einfache Variante**

## Example Observation: TP53 Einfache Variante

-------

**English**

-------

Profile: [MII PR MTB Einfache Variante](StructureDefinition-mii-pr-mtb-einfache-variante.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, Genetics

**code**: Genetic variant assessment

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**value**: Present

> **component****code**: Gene studied [ID]**value**: TP53

> **component****code**: Amino acid change (pHGVS)**value**: NP_000537.3:p.Arg213Ter



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53",
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
        "code" : "HGNC:11998",
        "display" : "TP53"
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
        "code" : "NP_000537.3:p.Arg213Ter"
      }]
    }
  }]
}

```
