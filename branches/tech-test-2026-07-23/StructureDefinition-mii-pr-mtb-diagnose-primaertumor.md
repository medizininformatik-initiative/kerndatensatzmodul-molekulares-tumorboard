# MII PR MTB Diagnose Primärtumor - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Diagnose Primärtumor**

## Resource Profile: MII PR MTB Diagnose Primärtumor 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_PR_MTB_Diagnose_Primaertumor |

 
Diagnose zum Primärtumor 

**Usages:**

* Refer to this Profile: [MII EX MTB Diagnose](StructureDefinition-mii-ex-mtb-diagnose.md), [MII PR MTB Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md), [MII PR MTB Copy Number Variant](StructureDefinition-mii-pr-mtb-copy-number-variant.md), [MII PR MTB Diagnostische Implikation](StructureDefinition-mii-pr-mtb-diagnostische-implikation.md)... Show 8 more, [MII PR MTB DNA Fusion](StructureDefinition-mii-pr-mtb-dna-fusion.md), [MII PR MTB Einfache Variante](StructureDefinition-mii-pr-mtb-einfache-variante.md), [MII PR MTB Molekularer Biomarker](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md), [MII PR MTB Response Befund](StructureDefinition-mii-pr-mtb-response-befund.md), [MII PR MTB RNA Fusion](StructureDefinition-mii-pr-mtb-rna-fusion.md), [MII PR MTB RNA Seq](StructureDefinition-mii-pr-mtb-rna-seq.md), [MII PR MTB Studieneinschluss Anfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md) and [MII PR MTB Therapeutische Implikation](StructureDefinition-mii-pr-mtb-therapeutische-implikation.md)
* Examples for this Profile: [Condition/mii-exa-mtb-kim-diagnose](Condition-mii-exa-mtb-kim-diagnose.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-molekulares-tumorboard|current/StructureDefinition/StructureDefinition-mii-pr-mtb-diagnose-primaertumor.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.csv), [Excel](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.xlsx), [Schematron](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-diagnose-primaertumor",
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Diagnose_Primaertumor",
  "title" : "MII PR MTB Diagnose Primärtumor",
  "status" : "active",
  "date" : "2026-07-23T12:42:46+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Diagnose zum Primärtumor",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "MII-FHIR-to-MVGenomSeq",
    "name" : "Onkologie LogicalModel MII Onkologie Mapping"
  },
  {
    "identity" : "oBDS",
    "name" : "Mapping FHIR zu oBDS"
  },
  {
    "identity" : "LogicalModel",
    "name" : "FHIR-Profil zu LogicalModel Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.stage",
      "path" : "Condition.stage",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding"
        }],
        "description" : "Slice für Stage/Grad",
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:WHOGradZNS",
      "path" : "Condition.stage",
      "sliceName" : "WHOGradZNS",
      "short" : "WHO Grad Tumor ZNS",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "WHO Grad Tumor ZNS"
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
            "valueString" : "WHO Grade CNS Tumor"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Grad eines Tumors nach WHO-Klassifikation der Tumoren des zentralen Nervensystems",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grad eines Tumors nach WHO-Klassifikation der Tumoren des zentralen Nervensystems"
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
            "valueString" : "Grade of a tumor according to the WHO classification of central nervous system tumors"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:WHOGradZNS.assessment",
      "path" : "Condition.stage.assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-who-grad-tumor-zns"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:WHOGradZNS.type",
      "path" : "Condition.stage.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:WHOGradZNS.type.coding",
      "path" : "Condition.stage.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "396920006",
        "display" : "WHO grade for central nervous system tumor"
      }
    },
    {
      "id" : "Condition.stage:OncoTree",
      "path" : "Condition.stage",
      "sliceName" : "OncoTree",
      "short" : "OncoTree Classification",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "OncoTree Klassifikation"
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
            "valueString" : "OncoTree Classification"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Klassifizierung eines Tumors nach OncoTree",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Klassifizierung eines Tumors nach OncoTree"
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
            "valueString" : "Classification of a tumor according to OncoTree"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:OncoTree.assessment",
      "path" : "Condition.stage.assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-oncotree"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:OncoTree.type",
      "path" : "Condition.stage.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:OncoTree.type.coding",
      "path" : "Condition.stage.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "371441004",
        "display" : "Histologic type of proliferative mass"
      }
    },
    {
      "id" : "Condition.stage:ErstdiagnoseZeitpunkt",
      "path" : "Condition.stage",
      "sliceName" : "ErstdiagnoseZeitpunkt",
      "short" : "Tumorausbreitung Erstdiagnose",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumorausbreitung Erstdiagnose"
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
            "valueString" : "Tumor Spread at Initial Diagnosis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Tumorausbreitung zum Zeitpunkt der Erstdiagnose",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumorausbreitung zum Zeitpunkt der Erstdiagnose"
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
            "valueString" : "Tumor spread at the time of initial diagnosis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:ErstdiagnoseZeitpunkt.assessment",
      "path" : "Condition.stage.assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:ErstdiagnoseZeitpunkt.type",
      "path" : "Condition.stage.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:ErstdiagnoseZeitpunkt.type.coding",
      "path" : "Condition.stage.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
        "code" : "C19251",
        "display" : "Stage at Diagnosis"
      }
    },
    {
      "id" : "Condition.stage:MolekularesTumorboardZeitpunkt",
      "path" : "Condition.stage",
      "sliceName" : "MolekularesTumorboardZeitpunkt",
      "short" : "Tumorausbreitung Molekulares Tumorboard",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumorausbreitung Molekulares Tumorboard"
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
            "valueString" : "Tumor Spread at Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Tumorausbreitung zum Zeitpunkt des Molekularen Tumorboard",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumorausbreitung zum Zeitpunkt des Molekularen Tumorboard"
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
            "valueString" : "Tumor spread at the time of the Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:MolekularesTumorboardZeitpunkt.assessment",
      "path" : "Condition.stage.assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:MolekularesTumorboardZeitpunkt.type",
      "path" : "Condition.stage.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:MolekularesTumorboardZeitpunkt.type.coding",
      "path" : "Condition.stage.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "93771000119109",
        "display" : "Diagnosis deferred"
      }
    }]
  }
}

```
