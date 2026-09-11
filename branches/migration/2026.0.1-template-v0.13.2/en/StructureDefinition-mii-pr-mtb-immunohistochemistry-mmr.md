# MII PR MTB Immunohistochemistry Mismatch Repair Status - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Immunohistochemistry Mismatch Repair Status**

## Resource Profile: MII PR MTB Immunohistochemistry Mismatch Repair Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-mmr | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Immunohistochemistry_MMR |

 
Immunhistorchemistry report 

-------

### Content

This profile describes DNA mismatch repair (MMR) and microsatellite instability (MSI) in the IHC report.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, also in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Observation?_id=12345`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-msi`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](https://hl7.org/fhir/R4/search.html#all).
1. The search parameter "status" MUST be supported:Examples:`GET [base]/Observation?status=final`Usage notes: Further information on searching for "status" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "category" MUST be supported:Examples:`GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory`Usage notes: Further information on searching for "category" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Observation?code=http://snomed.info/sct|1234806008`Usage notes: Further information on searching for "code" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Observation?subject=Patient/1234`Usage notes: Further information on searching for "subject" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "encounter" MUST be supported:Examples:`GET [base]/Observation?encounter=Encounter/1234`Usage notes: Further information on searching for "encounter" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "specimen" MUST be supported:Examples:`GET [base]/Observation?specimen=Specimen/1234`Usage notes: Further information on searching for "specimen" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

-------

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.csv), [Excel](../StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-immunohistochemistry-mmr",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-mmr",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Immunohistochemistry_MMR",
  "title" : "MII PR MTB Immunohistochemistry Mismatch Repair Status",
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
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molekularer-biomarker",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-mmr-proficiency"
      }
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "short" : "Probe",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Probe"
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
            "valueString" : "Specimen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Probe",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Probe"
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
            "valueString" : "Specimen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "description" : "Immunohistochemische Ergebnisse",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:mmr-mlh1",
      "path" : "Observation.component",
      "sliceName" : "mmr-mlh1",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:mmr-mlh1.code.coding",
      "path" : "Observation.component.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "81691-8",
        "display" : "DNA mismatch repair protein Mlh1 [Presence] in Cancer specimen by Immune stain"
      }
    },
    {
      "id" : "Observation.component:mmr-mlh1.value[x]",
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
      "id" : "Observation.component:mmr-mlh1.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:mmr-mlh1.value[x]:valueCodeableConcept.coding",
      "path" : "Observation.component.value[x].coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-mmr-expression"
      }
    },
    {
      "id" : "Observation.component:mmr-msh2",
      "path" : "Observation.component",
      "sliceName" : "mmr-msh2",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:mmr-msh2.code.coding",
      "path" : "Observation.component.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "81692-6",
        "display" : "DNA mismatch repair protein Msh2 [Presence] in Cancer specimen by Immune stain"
      }
    },
    {
      "id" : "Observation.component:mmr-msh2.value[x]",
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
      "id" : "Observation.component:mmr-msh2.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:mmr-msh2.value[x]:valueCodeableConcept.coding",
      "path" : "Observation.component.value[x].coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-mmr-expression"
      }
    },
    {
      "id" : "Observation.component:mmr-msh6",
      "path" : "Observation.component",
      "sliceName" : "mmr-msh6",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:mmr-msh6.code.coding",
      "path" : "Observation.component.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "81693-4",
        "display" : "DNA mismatch repair protein Msh6 [Presence] in Cancer specimen by Immune stain"
      }
    },
    {
      "id" : "Observation.component:mmr-msh6.value[x]",
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
      "id" : "Observation.component:mmr-msh6.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:mmr-msh6.value[x]:valueCodeableConcept.coding",
      "path" : "Observation.component.value[x].coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-mmr-expression"
      }
    },
    {
      "id" : "Observation.component:mmr-pms2",
      "path" : "Observation.component",
      "sliceName" : "mmr-pms2",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:mmr-pms2.code.coding",
      "path" : "Observation.component.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "81694-2",
        "display" : "Mismatch repair endonuclease PMS2 [Presence] in Cancer specimen by Immune stain"
      }
    },
    {
      "id" : "Observation.component:mmr-pms2.value[x]",
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
      "id" : "Observation.component:mmr-pms2.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:mmr-pms2.value[x]:valueCodeableConcept.coding",
      "path" : "Observation.component.value[x].coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-mmr-expression"
      }
    },
    {
      "id" : "Observation.component:mmr-msh3",
      "path" : "Observation.component",
      "sliceName" : "mmr-msh3",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:mmr-msh3.code.coding",
      "path" : "Observation.component.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "96271-2",
        "display" : "DNA mismatch repair protein Msh3 [Presence] in Cancer specimen by Immune stain"
      }
    },
    {
      "id" : "Observation.component:mmr-msh3.value[x]",
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
      "id" : "Observation.component:mmr-msh3.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:mmr-msh3.value[x]:valueCodeableConcept.coding",
      "path" : "Observation.component.value[x].coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-mmr-expression"
      }
    },
    {
      "id" : "Observation.component:mmr-mlh3",
      "path" : "Observation.component",
      "sliceName" : "mmr-mlh3",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:mmr-mlh3.code.coding",
      "path" : "Observation.component.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "96272-0",
        "display" : "DNA mismatch repair protein Mlh3 [Presence] in Cancer specimen by Immune stain"
      }
    },
    {
      "id" : "Observation.component:mmr-mlh3.value[x]",
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
      "id" : "Observation.component:mmr-mlh3.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:mmr-mlh3.value[x]:valueCodeableConcept.coding",
      "path" : "Observation.component.value[x].coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-mmr-expression"
      }
    }]
  }
}

```
