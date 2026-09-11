# MII PR MTB Human-genetische Beratung Auftrag - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Human-genetische Beratung Auftrag**

## Resource Profile: MII PR MTB Human-genetische Beratung Auftrag 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Humangenetische_Beratung_Auftrag |

 
Auftrag zur (erneuten) Human-genetischen Beratung 

-------

### Content

This profile describes a recommendation for human genetic counseling.

This can occur, for example, when germline variants are reported in close relatives, as well as for clarification of an increased risk for certain cancer entities. It can also occur on the basis of an incidental finding from a more comprehensive sequencing (e.g. whole exome), if the patient has consented to being notified about incidental findings.

### Status

The status of an order for human genetic counseling refers to its implementation state. It is recommended to use the following status values for the situations described:

| | |
| :--- | :--- |
| `draft` | Not implemented |
| `active` | Being implemented |
| `completed` | Completed or discontinued (patient deceased) |

**Note: The status should be semantically aligned with that of the decided Therapieplan (therapy plan) (see [Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)).**

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/ServiceRequest?_id=12345`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/ServiceRequest?code=http://snomed.info/sct|788339009`Usage notes: Further information on searching for "code" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#token)
1. The search parameter "reason-code" MUST be supported:Examples:`GET [base]/ServiceRequest?reason-code=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-auftrag-begruendung|other`Usage notes: Further information on searching for "reason-code" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#token)
1. The search parameter "specimen" MUST be supported:Examples:`GET [base]/ServiceRequest?specimen=Specimen/example`Usage notes: Further information on searching for "specimen" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference)

**Examples**

Example: Order for human genetic counseling for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.md))

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)
* Examples for this Profile: [ServiceRequest/mii-exa-mtb-kim-humangenetische-beratung-aszites](ServiceRequest-mii-exa-mtb-kim-humangenetische-beratung-aszites.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.csv), [Excel](../StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-humangenetische-beratung-auftrag",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Humangenetische_Beratung_Auftrag",
  "title" : "MII PR MTB Human-genetische Beratung Auftrag",
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
  "description" : "Auftrag zur (erneuten) Human-genetischen Beratung",
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.meta",
      "path" : "ServiceRequest.meta",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.meta.profile",
      "path" : "ServiceRequest.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
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
      "definition" : "Status der Umsetzung der Empfehlung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status der Umsetzung der Empfehlung"
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
            "valueString" : "Status of the recommendation implementation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "\n    draft: Nicht umgesetzt,\n    active: In Umsetzung,\n    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "fixedCode" : "proposal"
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "Empfehlung zur Humangenetischen Beratung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Empfehlung zur Humangenetischen Beratung"
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
      "definition" : "Empfehlung zur Humangenetischen Beratung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Empfehlung zur Humangenetischen Beratung"
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
      "min" : 1,
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "788339009",
          "display" : "Genetic consultation (procedure)"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-auftrag-begruendung"
      }
    },
    {
      "id" : "ServiceRequest.specimen",
      "path" : "ServiceRequest.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore",
        "http://hl7.org/fhir/StructureDefinition/Specimen"]
      }],
      "mustSupport" : true
    }]
  }
}

```
