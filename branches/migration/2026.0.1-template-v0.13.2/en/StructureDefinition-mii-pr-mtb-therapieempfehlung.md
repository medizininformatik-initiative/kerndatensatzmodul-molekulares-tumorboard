# MII PR MTB Therapieempfehlung Systemische Therapie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Therapieempfehlung Systemische Therapie**

## Resource Profile: MII PR MTB Therapieempfehlung Systemische Therapie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Therapieempfehlung |

 
Therapieempfehlung für eine medikamentöse Systemische Therapie 

-------

### Content

This profile describes a therapy recommendation for systemic (drug-based) therapy. It is based on the MedicationRequest profile of the base module Medication.

With `MedicationRequest`, both recommendations and prescriptions can theoretically be represented. However, since the Molekulares Tumorboard (molecular tumor board) is frequently not located in the same institution as the treating oncologists, the recommendations are modeled as such (`intent = proposal`).

The specification of the active substances SHOULD, where possible, be done via ATC, although other classification systems can theoretically also be used. It should be noted that a therapy recommendation can frequently be issued at the level of an active substance group - in that case the active substance group can be coded as ATC. If a specific active substance is named in the recommendation, both the substance class and the substance can be represented within the same coding.

Recommendations for combination therapies are represented using the Kombinationstherapie-Empfehlung (combination therapy recommendation) profile, since the evidence for single and combination therapies frequently differs.

### Status

The status of a therapy recommendation refers to its state of implementation. It is recommended to use the following status values for the situations described:

| | |
| :--- | :--- |
| `draft` | Not implemented |
| `active` | Being implemented |
| `completed` | Completed or discontinued (patient deceased) |

**Note: The status should be semantically aligned with that of the decided Therapieplan (therapy plan) (see [Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)).**

### Relationships to other resources

A Therapieplan can reference any number of `MedicationRequest`s under `CarePlan.activity.reference`. Systemic therapies and medication administrations that were actually carried out reference the request via `Procecure.basedOn` and `MedicationStatement.basedOn`, respectively. This assignment is facilitated when the ATC active substance group is coded in both the `MedicationRequest` and the `MedicationStatement`.

Via `MedicationRequest.reasonReference`, relevant findings as well as the diagnosis can be linked.

### Content

Mapping of the data set to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/MedicationRequest?_id=12345`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/MedicationRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung`Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "identifier" MUST be supported:Examples:`GET [base]/MedicationRequest?identifier=urn:fdc:medizininformatik-initiative.de:mtb-medications|0001`Usage notes: Further information on searching by "identifier" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "status" MUST be supported:Examples:`GET [base]/MedicationRequest?status=final`Usage notes: Further information on searching by "status" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "intent" MUST be supported:Examples:`GET [base]/MedicationRequest?intent=final`Usage notes: Further information on searching by "intent" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "medication" MUST be supported:Examples:`GET [base]/MedicationRequest?medication=Medication/example`Usage notes: Further information on searching by "medication" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/MedicationRequest?subject=Patient/example`Usage notes: Further information on searching by "subject" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "encounter" MUST be supported:Examples:`GET [base]/MedicationRequest?encounter=Encounter/example`Usage notes: Further information on searching by "encounter" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "authoredOn" MUST be supported:Examples:`GET [base]/MedicationRequest?authoredon=eq2025-01-14`Usage notes: Further information on searching by "authoredon" can be found in the [FHIR base specification - section "date"](https://hl7.org/fhir/R4/search.html#date).
1. The search parameter "requester" MUST be supported:Examples:`GET [base]/MedicationRequest?requester=Practitioner/example`Usage notes: Further information on searching by "requester" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "supporting-info" MUST be supported:Examples:`GET [base]/MedicationRequest?supporting-info=Observation/example`Usage notes: Further information on searching by "supporting-info" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

Example: Recommendation of a systemic therapy with mirvetuximab soravtansine for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.md))

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Systemische Therapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md), [MII PR MTB Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md) and [MII PR MTB Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)
* Examples for this Profile: [MedicationRequest/mii-exa-mtb-medication-request-adavosertib](MedicationRequest-mii-exa-mtb-medication-request-adavosertib.md), [MedicationRequest/mii-exa-mtb-medication-request-camonsertib](MedicationRequest-mii-exa-mtb-medication-request-camonsertib.md), [MedicationRequest/mii-exa-mtb-medication-request-carboplatin](MedicationRequest-mii-exa-mtb-medication-request-carboplatin.md), [MedicationRequest/mii-exa-mtb-medication-request-cobimetinib](MedicationRequest-mii-exa-mtb-medication-request-cobimetinib.md)... Show 5 more, [MedicationRequest/mii-exa-mtb-medication-request-lunresertib](MedicationRequest-mii-exa-mtb-medication-request-lunresertib.md), [MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab](MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.md), [MedicationRequest/mii-exa-mtb-medication-request-trastuzumab-deruxtecan](MedicationRequest-mii-exa-mtb-medication-request-trastuzumab-deruxtecan.md), [MedicationRequest/mii-exa-mtb-therapieempfehlung-dabrafenib](MedicationRequest-mii-exa-mtb-therapieempfehlung-dabrafenib.md) and [MedicationRequest/mii-exa-mtb-therapieempfehlung-trametinib](MedicationRequest-mii-exa-mtb-therapieempfehlung-trametinib.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-therapieempfehlung.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-therapieempfehlung.csv), [Excel](../StructureDefinition-mii-pr-mtb-therapieempfehlung.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-therapieempfehlung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-therapieempfehlung",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Therapieempfehlung",
  "title" : "MII PR MTB Therapieempfehlung Systemische Therapie",
  "status" : "active",
  "date" : "2026-09-11T14:44:50+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Therapieempfehlung für eine medikamentöse Systemische Therapie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest"
    },
    {
      "id" : "MedicationRequest.extension:Prioritaet",
      "path" : "MedicationRequest.extension",
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
      "id" : "MedicationRequest.extension:Evidenzgraduierung",
      "path" : "MedicationRequest.extension",
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
      "id" : "MedicationRequest.extension:Publikation",
      "path" : "MedicationRequest.extension",
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
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown"
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
            "valueString" : "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown"
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
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
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
      "definition" : "Da das MTB nur Empfehlungen abgibt, wird hier typischerweise 'proposal' stehen. Es sei denn,\n        diese Therapieempfehlung ist Teil einer RequestGroup (z.B. Kombinationstherapie). In dem Fall muss hier 'option' stehen.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Da das MTB nur Empfehlungen abgibt wird hier typischerweise proposal stehen. Es sei denn diese Therapieempfehlung ist Teil einer RequestGroup - z.B. Kombinationstherapie. In dem Fall muss hier option stehen."
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
            "valueString" : "Since the MTB only provides recommendations this will typically be proposal. Unless this therapy recommendation is part of a RequestGroup - e.g. combination therapy. In that case option must be used."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this.resolve()"
        }],
        "description" : "Slice für stützende Angaben zur Systemischen Therapie auf Basis des referenzierten Ressourcentyps",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationRequest.reasonReference:StuetzendeMolekulareAlteration",
      "path" : "MedicationRequest.reasonReference",
      "sliceName" : "StuetzendeMolekulareAlteration",
      "short" : "Stützende molekulare Alteration(en)",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Stützende molekulare Alterationen"
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
            "valueString" : "Supporting Molecular Alterations"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf entsprechendes Feld in NGS Bericht und/oder IHC (Verweis auf KDS Molekular-Pathologischer Befundbericht)",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf entsprechendes Feld in NGS Bericht und/oder IHC - Verweis auf KDS Molekular-Pathologischer Befundbericht"
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
            "valueString" : "Reference to corresponding field in NGS report and/or IHC - reference to KDS Molecular Pathology Report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mustSupport" : true
    }]
  }
}

```
