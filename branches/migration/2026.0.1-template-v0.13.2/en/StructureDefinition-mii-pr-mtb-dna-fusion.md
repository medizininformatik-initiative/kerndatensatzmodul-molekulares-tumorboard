# MII PR MTB DNA Fusion - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB DNA Fusion**

## Resource Profile: MII PR MTB DNA Fusion 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-dna-fusion | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_DNA_Fusion |

 
DNA-Fusion 

-------

### Content

This profile describes the DNA fusion in the NGS-Bericht (NGS report). A correct, precise and standardized representation of fusion variants has so far not been possible via the Clinical Genomics Reporting Implementation Guide. Internationally, the GA4GH is working on a precise, human- and machine-readable representation (Variation Representation Specification, VRS), which is establishing itself as the standard for exchange between the publicly accessible databases (ClinVar, OnkoKB, VICC).

In order to be able to describe DNA fusions already now, a simplified approach based on the dnpm definition is used here, relying on the formal description of the involved 5' and 3' elements chromosome, gene and coordinates.

The 5' domain is represented by several elements in the component slice: 
 MII_PR_MTB_DNA_Fusion.component[five-prime-gene], MII_PR_MTB_DNA_Fusion.component[five-prime-position] and MII_PR_MTB_DNA_Fusion.component[five-prime-chromosome]. 
 The 3' fusion partner analogously with MII_PR_MTB_DNA_Fusion.component[three-prime-…].

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Observation?_id=1234`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-dna-fusion`Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "status" MUST be supported:Examples:`GET [base]/Observation?status=final`Usage notes: Further information on searching by "status" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "category" MUST be supported:Examples:`GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory`Usage notes: Further information on searching by "category" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Observation?code=http://loinc.org|69548-6`Usage notes: Further information on searching by "code" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Observation?subject=Patient/example-mii-mtb-patient`Usage notes: Further information on searching by "subject" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "focus" MUST be supported:Examples:`GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose`Usage notes: Further information on searching by "focus" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "method" MUST be supported:Examples:`GET [base]/Observation?method=http://loinc.org|LA26398-0`Usage notes: Further information on searching by "method" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "specimen" MUST be supported:Examples:`GET [base]/Observation?specimen=Specimen/example-mii-mtb-specimen`Usage notes: Further information on searching by "specimen" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "device" MUST be supported:Examples:`GET [base]/Observation?device=Device/example-mii-molgen-device-sequencer`Usage notes: Further information on searching by "device" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "component-code" MUST be supported:Examples:`GET [base]/Observation?component-code=http://loinc.org|48018-6`Usage notes: Further information on searching by "component-code" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "component-code-value-concept" MUST be supported:Examples:`GET [base]/Observation?component-code-value-concept=http://loinc.org| 48018-6$http://www.genenames.org/geneId|HGNC:1097`Usage notes: Further information on searching by "component-code-value-concept" can be found in the [FHIR base specification - section "composite"](https://hl7.org/fhir/search.html#composite).
1. The search parameter "component-code-value-quantity" MUST be supported:Examples:`GET [base]/Observation?component-code-value-quantity=http://loinc.org|81258-6$ap30%| http://unitsofmeasure.org|%25`Usage notes: Further information on searching by "component-code-value-quantity" can be found in the [FHIR base specification - section "composite"](https://hl7.org/fhir/search.html#composite).
1. The search parameter "component-value-concept" MUST be supported:Examples:`GET [base]/Observation?component-value-concept=http://sequenceontology.org|SO:SO:1000008`Usage notes: Further information on searching by "component-value-concept" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "component-value-quantity" MUST be supported:Examples:`GET [base]/Observation?component-value-quantity=ap30%|http://unitsofmeasure.org|%25`Usage notes: Further information on searching by "component-value-quantity" can be found in the [FHIR base specification - section "composite"](https://hl7.org/fhir/search.html#composite).

**Examples**

-------

**Usages:**

* Refer to this Profile: [MII PR MTB NGS-Bericht](StructureDefinition-mii-pr-mtb-ngs-bericht.md)
* Examples for this Profile: [Observation/MII-EXA-MTB-DNA-Fusion-1](Observation-MII-EXA-MTB-DNA-Fusion-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-dna-fusion.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-dna-fusion.csv), [Excel](../StructureDefinition-mii-pr-mtb-dna-fusion.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-dna-fusion.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-dna-fusion",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-dna-fusion",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_DNA_Fusion",
  "title" : "MII PR MTB DNA Fusion",
  "status" : "active",
  "date" : "2026-09-11T15:11:15+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "DNA-Fusion",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "MII-KDS",
    "name" : "MII KDS Mapping"
  },
  {
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
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.meta",
      "path" : "Observation.meta",
      "mustSupport" : true
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "short" : "VariantenId im Kontext des NGS-Befundes",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "VariantenId im Kontext des NGS-Befundes"
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
            "valueString" : "Variant ID in the context of the NGS report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Eindeutige ID der Variante im Kontext des NGS-Befundes.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Eindeutige ID der Variante im Kontext des NGS-Befundes."
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
            "valueString" : "Unique ID of the variant in the context of the NGS report."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "min" : 6
    },
    {
      "id" : "Observation.component:allelic-read-depth",
      "path" : "Observation.component",
      "sliceName" : "allelic-read-depth",
      "short" : "Number reported reads",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Anzahl berichteter Lesevorgaenge"
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
            "valueString" : "Number reported reads"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.component:allelic-read-depth.code",
      "path" : "Observation.component.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:allelic-read-depth.value[x]",
      "path" : "Observation.component.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:five-prime-chromosome",
      "path" : "Observation.component",
      "sliceName" : "five-prime-chromosome",
      "short" : "5' Domain - Chromosom",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "5' Domaene - Chromosom"
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
            "valueString" : "5' Domain - Chromosome"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:five-prime-chromosome.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
          "code" : "five-prime-chromosome"
        }]
      }
    },
    {
      "id" : "Observation.component:five-prime-chromosome.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:five-prime-chromosome.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:three-prime-chromosome",
      "path" : "Observation.component",
      "sliceName" : "three-prime-chromosome",
      "short" : "3' Domain - Chromosom",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "3' Domaene - Chromosom"
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
            "valueString" : "3' Domain - Chromosome"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:three-prime-chromosome.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
          "code" : "three-prime-chromosome"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:three-prime-chromosome.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:three-prime-chromosome.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:five-prime-position",
      "path" : "Observation.component",
      "sliceName" : "five-prime-position",
      "short" : "5' Domain - Position",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "5' Domaene - Position"
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
            "valueString" : "5' Domain - Position"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:five-prime-position.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
          "code" : "five-prime-position"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:five-prime-position.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:five-prime-position.value[x]:valueRange",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueRange",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:three-prime-position",
      "path" : "Observation.component",
      "sliceName" : "three-prime-position",
      "short" : "3' Domain - Position",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "3' Domaene - Position"
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
            "valueString" : "3' Domain - Position"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:three-prime-position.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
          "code" : "three-prime-position"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:five-prime-gene",
      "path" : "Observation.component",
      "sliceName" : "five-prime-gene",
      "short" : "5' Domain - Gen",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "5' Domaene - Gen"
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
            "valueString" : "5' Domain - Gene"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:five-prime-gene.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
          "code" : "five-prime-gene"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:three-prime-gene",
      "path" : "Observation.component",
      "sliceName" : "three-prime-gene",
      "short" : "3' Domain - Gen",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "3' Domaene - Gen"
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
            "valueString" : "3' Domain - Gene"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:three-prime-gene.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
          "code" : "three-prime-gene"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:three-prime-gene.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:three-prime-gene.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    }]
  }
}

```
