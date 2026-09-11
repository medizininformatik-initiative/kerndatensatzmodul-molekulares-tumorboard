# MII PR MTB Systemische Therapie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Systemische Therapie**

## Resource Profile: MII PR MTB Systemische Therapie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Systemische_Therapie |

 
Systemische Therapie im Follow-Up nach Abschluss des MTB 

-------

### Content

This profile describes a systemic therapy that was recorded in the Follow-Up process (Follow-Up ClinicalImpression). This actually implemented therapy is to be compared with the recommendations of the Molekulares Tumorboard (molecular tumor board), so that one can see whether the recommended therapies were implemented. Like the systemic therapies from the Oncology module, the Procedure resource forms the superstructure for individual medication administrations, which in individual MedicationStatements

### Links to other resources

Medication administrations are preferably to be represented with references to the profile MII_PR_MTB_Systemische_Therapie_Medication_Statement. It is to be distinguished from an oncology systemic therapy based on the oBDS in that this Procedure resource refers via `Procedure.basedOn` to an MTB Therapieplan (therapy plan) and via `Procedure.extension::causedBy` to a specific therapy recommendation.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the MTB module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Procedure?_id=12345`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "based-on" MUST be supported:Examples:`GET [base]/Procedure?based-on=MII_PR_MTB_Therapieplan/example`Usage notes: Further information on searching for "Procedure.basedOn" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "part-of" MUST be supported:Examples:`GET [base]/Procedure?part-of=Observation/example`Usage notes: Further information on searching for "Procedure.partOf" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "status" MUST be supported:Examples:`GET [base]/Procedure?status=completed`Usage notes: Further information on searching for "Procedure.status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "status-reason" MUST be supported:Examples:`GET [base]/Procedure?status-reason=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-systemische-therapie-status-grund|payment-refused`Usage notes: Further information on searching for "Procedure.statusReason" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "category" MUST be supported:Examples:`GET [base]/Procedure?category=http://snomed.info/sct|103693007`Usage notes: Further information on searching for "Procedure.category" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37`Usage notes: Further information on searching for "Procedure.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "date" MUST be supported:Examples:`GET [base]/Procedure?date=2022-01-01`Usage notes: Further information on searching for "Procedure.performed" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Procedure?subject=Patient/example`Usage notes: Further information on searching for "Procedure.subject" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "encounter" MUST be supported:Examples:`GET [base]/Procedure?subject=Encounter/example`Usage notes: Further information on searching for "Procedure.encounter" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "reason-reference" MUST be supported:Examples:`GET [base]/Procedure?subject=Condition/example`Usage notes: Further information on searching for "Procedure.reasonReference" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "bodySite" MUST be supported:Examples:`GET [base]/Procedure?bodySite=http://snomed.info/sct|80891009`Usage notes: Further information on searching for "Procedure.bodySite" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "outcome" MUST be supported:Examples:`GET [base]/Procedure?outcome=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus|R1`Usage notes: Further information on searching for "Procedure.outcome" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "note" MUST be supported:Examples:`GET [base]/Procedure?note=diesdas`Usage notes: Further information on searching for "Procedure.outcome" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).

**Examples**

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Response Befund](StructureDefinition-mii-pr-mtb-response-befund.md)
* Examples for this Profile: [Procedure/MII-EXA-MTB-Systemische-Therapie-1](Procedure-MII-EXA-MTB-Systemische-Therapie-1.md) and [Procedure/MII-EXA-MTB-Systemtherapie-Beispiel-1](Procedure-MII-EXA-MTB-Systemtherapie-Beispiel-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-systemische-therapie.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-systemische-therapie.csv), [Excel](../StructureDefinition-mii-pr-mtb-systemische-therapie.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-systemische-therapie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-systemische-therapie",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Systemische_Therapie",
  "title" : "MII PR MTB Systemische Therapie",
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
  "description" : "Systemische Therapie im Follow-Up nach Abschluss des MTB",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.extension:causedBy",
      "path" : "Procedure.extension",
      "sliceName" : "causedBy",
      "short" : "Therapieempfehlung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapieempfehlung"
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
            "valueString" : "Therapy recommendation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf die MTB Therapieempfehlung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf die MTB Therapieempfehlung"
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
            "valueString" : "Reference to the MTB therapy recommendation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/procedure-causedBy"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:causedBy.value[x]",
      "path" : "Procedure.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest"]
      }]
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "short" : "MTB Therapieplan",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "MTB Therapieplan"
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
            "valueString" : "MTB therapy plan"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Therapieplan gemäß Beschluss des Molekularen Tumorboards",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapieplan gemäß Beschluss des Molekularen Tumorboards"
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
            "valueString" : "Therapy plan according to the molecular tumor board decision"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan",
        "http://hl7.org/fhir/StructureDefinition/CarePlan"]
      }]
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "not-done | in-progress | stopped | completed",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "nicht durchgeführt | laufend | abgebrochen | abgeschlossen"
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
            "valueString" : "not-done | in-progress | stopped | completed"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status der Systemischen Therapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status der Systemischen Therapie"
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
            "valueString" : "Status of the systemic therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "\n        not-done: Die Therapie wurde nie angefangen und wird auch nicht mehr angefangen,\n        in-progress: Die Therapie hat noch nicht angefangen oder läuft bereits,\n        stopped: Die Therapie wurde bereits angefangen aber vorzeitig abgebrochen,\n        completed: Die Therapie wurde plangemäß abgeschlossen",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-systemische-therapie-status"
      }
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "short" : "Status Grund",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status Grund"
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
            "valueString" : "Status reason"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Grund des Status der Therapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund des Status der Therapie"
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
            "valueString" : "Reason for the therapy status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason.coding",
      "path" : "Procedure.statusReason.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-therapiestatusgrund"
      }
    },
    {
      "id" : "Procedure.statusReason.coding.system",
      "path" : "Procedure.statusReason.coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund"
    },
    {
      "id" : "Procedure.statusReason.coding.code",
      "path" : "Procedure.statusReason.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.note",
      "path" : "Procedure.note",
      "short" : "Bemerkungen",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Bemerkungen"
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
            "valueString" : "Remarks"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "max" : "1"
    }]
  }
}

```
