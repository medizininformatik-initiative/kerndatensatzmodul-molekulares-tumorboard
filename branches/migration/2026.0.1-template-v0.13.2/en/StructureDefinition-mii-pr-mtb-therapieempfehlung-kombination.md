# MII PR MTB Therapieempfehlung Kombinationstherapie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Therapieempfehlung Kombinationstherapie**

## Resource Profile: MII PR MTB Therapieempfehlung Kombinationstherapie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Therapieempfehlung_Kombination |

 
Therapieempfehlung für eine medikamentöse Kombinationstherapie 

-------

### Content

This profile describes a therapy recommendation for systemic therapy with a combination of several medications.

### Status

The status of a combination therapy recommendation refers to its implementation state. It is recommended to use the following status values for the described situations:

| | |
| :--- | :--- |
| `draft` | Not implemented |
| `active` | Being implemented |
| `completed` | Completed or discontinued (patient deceased) |

**Note: The status should be semantically aligned with that of the decided Therapieplan (therapy plan) (see [Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)).**

### Content

Mapping dataset to FHIR

TODO: FHIR LM for combination therapy

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/RequestGroup?_id=12345`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/RequestGroup?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung`Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "identifier" MUST be supported:Examples:`GET [base]/RequestGroup?identifier=urn:fdc:medizininformatik-initiative.de:mtb-medications|0001`Usage notes: Further information on searching by "identifier" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "intent" MUST be supported:Examples:`GET [base]/RequestGroup?intent=final`Usage notes: Further information on searching by "intent" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/RequestGroup?subject=Patient/example`Usage notes: Further information on searching by "subject" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "action-resource" MUST be supported:Examples:`GET [base]/RequestGroup?action-resource=MedicationRequest/example`Usage notes: Further information on searching by "action-resource" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

Example: Recommendation of a combination therapy consisting of Dabrafenib and Trametinib for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.md))

The respective `MedicationRequest`s:

And the `Medication`s:

-------

-------

### Description

RequestGroup-based profile for combination therapy recommendations.

See also: [TherapieempfehlungKombination](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md)

**Usages:**

* Refer to this Profile: [MII PR MTB Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)
* Examples for this Profile: [RequestGroup/mii-exa-mtb-request-group-adavosertib-carboplatin](RequestGroup-mii-exa-mtb-request-group-adavosertib-carboplatin.md), [RequestGroup/mii-exa-mtb-request-group-lunresertib-camonsertib](RequestGroup-mii-exa-mtb-request-group-lunresertib-camonsertib.md) and [RequestGroup/mii-exa-mtb-therapieempfehlung-kombinationstherapie](RequestGroup-mii-exa-mtb-therapieempfehlung-kombinationstherapie.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.csv), [Excel](../StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-therapieempfehlung-kombination",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Therapieempfehlung_Kombination",
  "title" : "MII PR MTB Therapieempfehlung Kombinationstherapie",
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
  "description" : "Therapieempfehlung für eine medikamentöse Kombinationstherapie",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RequestGroup",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RequestGroup",
      "path" : "RequestGroup"
    },
    {
      "id" : "RequestGroup.meta",
      "path" : "RequestGroup.meta",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.extension:Prioritaet",
      "path" : "RequestGroup.extension",
      "sliceName" : "Prioritaet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.extension:Evidenzgraduierung",
      "path" : "RequestGroup.extension",
      "sliceName" : "Evidenzgraduierung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.extension:Publikation",
      "path" : "RequestGroup.extension",
      "sliceName" : "Publikation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.status",
      "path" : "RequestGroup.status",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
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
            "valueString" : "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status der Umsetzung der Therapieempfehlung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status der Umsetzung der Therapieempfehlung"
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
            "valueString" : "Status of therapy recommendation implementation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "\n    draft: Nicht umgesetzt,\n    active: In Umsetzung,\n    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"
    },
    {
      "id" : "RequestGroup.intent",
      "path" : "RequestGroup.intent",
      "short" : "proposal | option",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "proposal | option"
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
            "valueString" : "proposal | option"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Da das MTB nur Empfehlungen abgibt, wird hier typischerweise 'proposal' stehen. Es sei denn,\ndiese Therapieempfehlung ist selbst nochmal Teil einer RequestGroup. In dem Fall muss hier 'option' stehen.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Da das MTB nur Empfehlungen abgibt wird hier typischerweise proposal stehen. Es sei denn diese Therapieempfehlung ist selbst nochmal Teil einer RequestGroup. In dem Fall muss hier option stehen."
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
            "valueString" : "Since the MTB only provides recommendations this will typically be proposal. Unless this therapy recommendation is itself part of a RequestGroup. In that case option must be used."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "RequestGroup.author",
      "path" : "RequestGroup.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }]
    },
    {
      "id" : "RequestGroup.action",
      "path" : "RequestGroup.action",
      "min" : 1
    },
    {
      "id" : "RequestGroup.action.resource",
      "path" : "RequestGroup.action.resource",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.action.action",
      "path" : "RequestGroup.action.action",
      "max" : "0"
    }]
  }
}

```
