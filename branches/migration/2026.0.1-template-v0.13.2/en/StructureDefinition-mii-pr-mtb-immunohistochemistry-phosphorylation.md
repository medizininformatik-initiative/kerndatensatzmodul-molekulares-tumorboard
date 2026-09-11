# MII PR MTB Immunohistochemistry Phosphorylation - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Immunohistochemistry Phosphorylation**

## Resource Profile: MII PR MTB Immunohistochemistry Phosphorylation 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-phosphorylation | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Immunohistochemistry_Phosphorylation |

 
Immunhistorchemistry report 

-------

### Description

Immunohistochemistry profile for phosphorylation stains.

-------

### Content

This profile describes the IHC finding that detects a protein specifically in its phosphorylated form. There are currently no internationally recognized HL7 specifications for the precise and harmonized representation of post-translational modifications.

This profile is therefore intended to provide a first concept for the generalized representation of post-translational modifications, using phosphorylation as an example. In simplified form, phosphorylated proteins are frequently denoted with the prefix `p-`, e.g. p-AKT.

This coding may be implicitly understandable in everyday clinical-pathological practice and in standardized diagnostic workflows. However, if the information comes from a pathology system in this form, it is not evident downstream (for DIC staff, researchers, etc.) at which position a phosphorylation is present. Therefore, with the dnpm coding, a precise indication of a phosphorylation site is not possible.

Example: The gene Rb-1 has, with serine, a possible phosphorylation site at position 949 (see the p-RB page on UniProt, under the section PRTM/Processing https://www.uniprot.org/uniprotkb/Q13733/entry). The proteins AKT1, AKT2, and AKT3, on the other hand, have two potential phosphorylation sites that are activated by different enzymes: Thr308 and Ser473, whereby a negative prognosis exists in particular for the detection of the latter mutation.

Several approaches exist for nevertheless distinguishing it from the non-phosphorylated version. For details, refer to the discussion of post-translational modifications on the UniProt page https://www.uniprot.org/help/mod_res:

* Specification of the antibody clone for unambiguous identification of the antibody product used (e.g. via https://www.cellsignal.com/learn-and-support/phosphositeplus-ptm-database or comparable databases)
* Representation of the altered spatial structure of the protein via UniProt
* Reference to a preceding activity

MOD

### Content

Mapping of the data set to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Observation?_id=12345`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Observation?code=http://snomed.info/sct|1234806008`Usage notes: Further information on searching by "code" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "focus" MUST be supported:Examples:`GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose`Usage notes: Further information on searching by "focus" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "interpretation" MUST be supported:Examples:`GET [base]/Observation?interpretation=http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs|high`Usage notes: Further information on searching by "interpretation" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "specimen" MUST be supported:Examples:`GET [base]/Observation?specimen=Specimen/1234`Usage notes: Further information on searching by "specimen" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

-------

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.csv), [Excel](../StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-immunohistochemistry-phosphorylation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-phosphorylation",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Immunohistochemistry_Phosphorylation",
  "title" : "MII PR MTB Immunohistochemistry Phosphorylation",
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
  "description" : "Immunhistorchemistry report",
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
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.component:phosphorylation-localization",
      "path" : "Observation.component",
      "sliceName" : "phosphorylation-localization",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:phosphorylation-localization.code",
      "path" : "Observation.component.code",
      "short" : "Phosphorylation localization",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Phosphorylierungslokalisation"
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
            "valueString" : "Phosphorylation localization"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Phosphorylation localization according to UniProt",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Phosphorylierungslokalisation gemaess UniProt"
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
            "valueString" : "Phosphorylation localization according to UniProt"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:phosphorylation-localization.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.component:phosphorylation-localization.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Phosphorylation localization",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Phosphorylierungslokalisation"
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
            "valueString" : "Phosphorylation localization"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Phosphorylation localization according to UniProt",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Phosphorylierungslokalisation gemaess UniProt"
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
            "valueString" : "Phosphorylation localization according to UniProt"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:protein-isoform",
      "path" : "Observation.component",
      "sliceName" : "protein-isoform",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    }]
  }
}

```
