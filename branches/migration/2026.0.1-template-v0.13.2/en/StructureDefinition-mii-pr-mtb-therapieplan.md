# MII PR MTB Therapieplan - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Therapieplan**

## Resource Profile: MII PR MTB Therapieplan 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Therapieplan |

 
Therapieplan gemäß Beschluss des Molekularen Tumorboards 

-------

### Content

This profile describes a Therapieplan (therapy plan) according to the decision of the Molekulares Tumorboard (molecular tumor board).

In terms of content, it is based on the tumor board profile of the Oncology module, in which therapy decisions could already be coded according to the categories of the oBDS. However, since a follow-up monitoring is planned within the scope of the Molekulares Tumorboard, among other things to check the status of the therapy recommendations, the recommendations were modeled here as individual data elements so that they in turn are individually referenceable.

This applies both to (drug-based) **therapy recommendations** (`MedicationRequest`, or `RequestGroup` for combination therapies) as well as to **study enrollment recommendations** and other **diagnostic procedures and services** such as rebiopsies and human genetic counseling (`ServiceRequest)`.

### Status

The status of a Therapieplan refers to the implementation state of all contained recommendations (see element `activity`). It is recommended to use the following status values for the situations described:

| | |
| :--- | :--- |
| `active` | Recommendation or therapy option being implemented (normal case) |
| `revoked` | Molecular tumor board case is closed |
| `completed` | All recommendations or therapy options exhausted, or patient deceased |

**Note: The status of a Therapieplan should be semantically consistent with the contained recommendations (the `status` fields).**

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, also in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/CarePlan?_id=12345`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/CarePlan?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "identifier" MUST be supported:Examples:`GET [base]/CarePlan?identifier=123456`Usage notes: Further information on searching for "identifier" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "status" MUST be supported:Examples:`GET [base]/CarePlan?status=active`Usage notes: Further information on searching for "status" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "intent" MUST be supported:Examples:`GET [base]/CarePlan?intent=proposal`Usage notes: Further information on searching for "intent" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "category" MUST be supported:Examples:`GET [base]/CarePlan?category=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ|praeth`Usage notes: Further information on searching for "category" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "description" MUST be supported:Examples:`GET [base]/CarePlan?description=contains:Musterperson`Usage notes: Further information on searching for "description" can be found in the [FHIR base specification - section "String Search"](https://hl7.org/fhir/R4/search.html#string).
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/CarePlan?subject=Patient/example`Usage notes: Further information on searching for "subject" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "encounter" MUST be supported:Examples:`GET [base]/CarePlan?encounter=Encounter/example`Usage notes: Further information on searching for "encounter" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "created" MUST be supported:Examples:`GET [base]/CarePlan?created=eq2021-06-10`Usage notes: Further information on searching for "created" can be found in the [FHIR base specification - section "Date Search"](https://hl7.org/fhir/R4/search.html#date).
1. The search parameter "contributor" MUST be supported:Examples:`GET [base]/CarePlan?contributor=Practitioner/example`Usage notes: Further information on searching for "contributor" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "condition" MUST be supported:Examples:`GET [base]/CarePlan?condition=Condition/example`Usage notes: Further information on searching for "condition" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "activity-reference" MUST be supported:Examples:`GET [base]/CarePlan?activity-reference=MedicationRequest/example`Usage notes: Further information on searching for "activity-reference" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "activity-code" MUST be supported:Examples:`GET [base]/CarePlan?activity-code=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ|CH`Usage notes: Further information on searching for "activity-code" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "outcome-reference" MUST be supported:Examples:`GET [base]/CarePlan?outcome-reference=MedicationStatement/example`Usage notes: Further information on searching for "outcome-reference" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

TODO: SP CarePlan.supportingInfo

**Examples**

Example: decision on the MTB case for Kim Musterperson dated 2023-03-28 (see [scenarios](guidance.md))

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md), [MII PR MTB Systemische Therapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md) and [MII PR MTB Systemische Vortherapie](StructureDefinition-mii-pr-mtb-systemische-vortherapie.md)
* Examples for this Profile: [CarePlan/mii-exa-mtb-kim-musterperson-therapieplan](CarePlan-mii-exa-mtb-kim-musterperson-therapieplan.md) and [CarePlan/mii-exa-mtb-therapieplan-kombinationstherapie](CarePlan-mii-exa-mtb-therapieplan-kombinationstherapie.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-therapieplan.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-therapieplan.csv), [Excel](../StructureDefinition-mii-pr-mtb-therapieplan.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-therapieplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-therapieplan",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Therapieplan",
  "title" : "MII PR MTB Therapieplan",
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
  "description" : "Therapieplan gemäß Beschluss des Molekularen Tumorboards",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "oBDS",
    "name" : "Mapping FHIR zu oBDS"
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.meta",
      "path" : "CarePlan.meta",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
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
      "definition" : "Status der Umsetzung des beschlossenen Therapieplans",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status der Umsetzung des beschlossenen Therapieplans"
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
            "valueString" : "Status of the approved therapy plan implementation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "\n    active: Empfehlung bzw. Therapieoption in Umsetzung (Regelfall),\n    revoked: Molekularer Tumorboard-Fall ist abgeschlossen,\n    completed: Alle Empfehlungen bzw. Therapieoptionen ausgeschöpft oder Patient verstorben"
    },
    {
      "id" : "CarePlan.description",
      "path" : "CarePlan.description",
      "short" : "Protokollauszug",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Protokollauszug"
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
            "valueString" : "Protocol Excerpt"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Protokollauszug aus dem Beschluss des Molekularen Tumorboards",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Protokollauszug aus dem Beschluss des Molekularen Tumorboards"
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
            "valueString" : "Protocol excerpt from the Molecular Tumor Board decision"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.created",
      "path" : "CarePlan.created",
      "short" : "Erstellungsdatum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Erstellungsdatum"
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
            "valueString" : "Creation Date"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Erstellungsdatum des Therapieplans gemäß Beschluss des Molekularen Tumorboards",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Erstellungsdatum des Therapieplans gemäß Beschluss des Molekularen Tumorboards"
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
            "valueString" : "Creation date of the therapy plan as per Molecular Tumor Board decision"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "CarePlan.supportingInfo",
      "path" : "CarePlan.supportingInfo",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "description" : "Slice für weitere Informationen",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "CarePlan.supportingInfo:Behandlungsepisode",
      "path" : "CarePlan.supportingInfo",
      "sliceName" : "Behandlungsepisode",
      "short" : "Behandlungsepisode",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Behandlungsepisode"
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
            "valueString" : "Treatment Episode"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen"
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
            "valueString" : "Current disease status and previous treatment measures"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode",
        "http://hl7.org/fhir/StructureDefinition/ClinicalImpression"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/Therapieempfehlung",
      "path" : "CarePlan.activity",
      "sliceName" : "extended/Therapieempfehlung",
      "short" : "Therapieempfehlung Systemische Therapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapieempfehlung Systemische Therapie"
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
            "valueString" : "Therapy Recommendation Systemic Therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Therapieempfehlung für eine medikamentöse Systemische Therapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapieempfehlung für eine medikamentöse Systemische Therapie"
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
            "valueString" : "Therapy recommendation for a systemic drug therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/Therapieempfehlung.reference",
      "path" : "CarePlan.activity.reference",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
        "http://hl7.org/fhir/StructureDefinition/RequestGroup"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/Therapieempfehlung.detail",
      "path" : "CarePlan.activity.detail",
      "max" : "0"
    },
    {
      "id" : "CarePlan.activity:extended/HumangenetischeBeratung",
      "path" : "CarePlan.activity",
      "sliceName" : "extended/HumangenetischeBeratung",
      "short" : "Empfehlung Human-genetische Beratung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Empfehlung Human-genetische Beratung"
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
            "valueString" : "Recommendation for Human Genetic Counseling"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Auftrag zur (erneuten) Human-genetischen Beratung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Auftrag zur erneuten Human-genetischen Beratung"
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
            "valueString" : "Request for repeat human genetic counseling"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/HumangenetischeBeratung.reference",
      "path" : "CarePlan.activity.reference",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/HumangenetischeBeratung.detail",
      "path" : "CarePlan.activity.detail",
      "max" : "0"
    },
    {
      "id" : "CarePlan.activity:extended/HistologieEvaluation",
      "path" : "CarePlan.activity",
      "sliceName" : "extended/HistologieEvaluation",
      "short" : "Empfehlung Histologie-Evaluation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Empfehlung Histologie-Evaluation"
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
            "valueString" : "Recommendation for Histology Evaluation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Auftrag zur (erneuten) Histologie-Evaluation",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Auftrag zur erneuten Histologie-Evaluation"
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
            "valueString" : "Request for repeat histology evaluation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/HistologieEvaluation.reference",
      "path" : "CarePlan.activity.reference",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/HistologieEvaluation.detail",
      "path" : "CarePlan.activity.detail",
      "max" : "0"
    },
    {
      "id" : "CarePlan.activity:extended/Biopsie",
      "path" : "CarePlan.activity",
      "sliceName" : "extended/Biopsie",
      "short" : "Empfehlung Biopsie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Empfehlung Biopsie"
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
            "valueString" : "Recommendation for Biopsy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Auftrag zur (erneuten) Biopsie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Auftrag zur erneuten Biopsie"
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
            "valueString" : "Request for repeat biopsy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/Biopsie.reference",
      "path" : "CarePlan.activity.reference",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/Biopsie.detail",
      "path" : "CarePlan.activity.detail",
      "max" : "0"
    },
    {
      "id" : "CarePlan.activity:extended/Studieneinschlussempfehlung",
      "path" : "CarePlan.activity",
      "sliceName" : "extended/Studieneinschlussempfehlung",
      "short" : "Studieneinschlussempfehlung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Studieneinschlussempfehlung"
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
            "valueString" : "Study Enrollment Recommendation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Anfrage zum Studieneinschluss",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Anfrage zum Studieneinschluss"
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
            "valueString" : "Request for study enrollment"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/Studieneinschlussempfehlung.reference",
      "path" : "CarePlan.activity.reference",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/Studieneinschlussempfehlung.detail",
      "path" : "CarePlan.activity.detail",
      "max" : "0"
    }]
  }
}

```
