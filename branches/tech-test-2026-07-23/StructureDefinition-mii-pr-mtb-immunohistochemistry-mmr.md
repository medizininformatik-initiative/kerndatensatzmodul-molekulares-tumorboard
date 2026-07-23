# MII PR MTB Immunohistochemistry Mismatch Repair Status - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Immunohistochemistry Mismatch Repair Status**

## Resource Profile: MII PR MTB Immunohistochemistry Mismatch Repair Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-mmr | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_PR_MTB_Immunohistochemistry_MMR |

 
Immunhistorchemistry report 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-molekulares-tumorboard|current/StructureDefinition/StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.csv), [Excel](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.xlsx), [Schematron](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.sch) 



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
  "date" : "2026-07-23T12:42:46+00:00",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
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
