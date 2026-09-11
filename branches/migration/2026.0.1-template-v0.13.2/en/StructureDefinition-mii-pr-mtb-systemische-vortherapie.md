# MII PR MTB Systemische Vortherapie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Systemische Vortherapie**

## Resource Profile: MII PR MTB Systemische Vortherapie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Systemische_Vortherapie |

 
Systemische Vortherapie zum Molekularen Tumorboard 

-------

### Content

This profile describes a systemic (medication-based) prior therapy from the perspective of the Molekulares Tumorboard (molecular tumor board).

It is based on the profile for systemic therapy from the Oncology module, whereby supplementary information on guideline therapy, i.e. the **therapy line** and the **approval status**, can be provided. Beyond that

### Links to other resources

Where possible, data duplication with already existing procedures (e.g. systemic therapy Procedures) and medication administrations (e.g. MedicationStatements) from the Oncology module should be avoided. Instead, already existing resources can be tested with additional information such as therapy line and approval status.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Procedure?_id=103270`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "based-on" MUST be supported:Examples:`GET [base]/Procedure?based-on=CarePlan/example`Usage notes: Further information on searching for "based-on" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "part-of" MUST be supported:Examples:`GET [base]/Procedure?part-of=Observation/example`Usage notes: Further information on searching for "part-of" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "status" MUST be supported:Examples:`GET [base]/Procedure?status=completed`Usage notes: Further information on searching for "status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "status-reason" MUST be supported:Examples:`GET [base]/Procedure?status-reason=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund|patient-wish`Usage notes: Further information on searching for "status-reason" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "category" MUST be supported:Examples:`GET [base]/Procedure?category=http://snomed.info/sct|103693007`Usage notes: Further information on searching for "Procedure.category" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37`Usage notes: Further information on searching for "Procedure.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Procedure?subject=Patient/example`Usage notes: Further information on searching for "Procedure.subject" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "encounter" MUST be supported:Examples:`GET [base]/Procedure?encounter=Encounter/example`Usage notes: Further information on searching for "encounter" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "date" MUST be supported:Examples:`GET [base]/Procedure?date=eq2025-01-01`Usage notes: Further information on searching for "date" can be found in the [FHIR base specification - section "Date Search"](https://hl7.org/fhir/R4/search.html#date).
1. The search parameter "reason-reference" MUST be supported:Examples:`GET [base]/Procedure?reason-reference=Condition/example`Usage notes: Further information on searching for "reason-reference" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "bodySite" MUST be supported:Examples:`GET [base]/Procedure?bodySite=http://snomed.info/sct|430304001`Usage notes: Further information on searching for "Procedure.bodySite" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "outcome" MUST be supported:Examples:`GET [base]/Procedure?outcome=http://snomed.info/sct|80891009`Usage notes: Further information on searching for "outcome" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "note" MUST be supported:Examples:`GET [base]/Procedure?note=contains:Carbo`Usage notes: Further information on searching for "note" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).
1. The search parameter "dokumentationsdatum" MUST be supported:Examples:`GET [base]/Procedure?dokumentationsdatum=2022-01-01`Usage notes: Further information on searching for "dokumentationsdatum" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).
1. The search parameter "durchfuehrungsabsicht" MUST be supported:Examples:`GET [base]/Procedure?durchfuehrungsabsicht=http://snomed.info/sct|262202000`Usage notes: Further information on searching for "durchfuehrungsabsicht" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "extension-intention" MUST be supported:

```
Examples:

```GET [base]/Procedure?extension-intention=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention|K```

Usage notes: Further information on searching for "extension-intention" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

```

1. The search parameter "extension-intention" MUST be supported:

```
Examples:

```GET [base]/Procedure?extension-stellung=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-stellung-zur-op|N```

Usage notes: Further information on searching for "extension-intention" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

```

**Examples**

Example: Decision on the MTB case for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.md))

[mii-cs-mtb-therapiestatusgrund](CodeSystem-mii-cs-mtb-therapiestatusgrund.md)

**Usages:**

* Refer to this Profile: [MII PR MTB Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md)
* Examples for this Profile: [Procedure/MTBChemo1Procedure](Procedure-MTBChemo1Procedure.md) and [Procedure/MTBChemo2Procedure](Procedure-MTBChemo2Procedure.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-systemische-vortherapie.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-systemische-vortherapie.csv), [Excel](../StructureDefinition-mii-pr-mtb-systemische-vortherapie.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-systemische-vortherapie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-systemische-vortherapie",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Systemische_Vortherapie",
  "title" : "MII PR MTB Systemische Vortherapie",
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
  "description" : "Systemische Vortherapie zum Molekularen Tumorboard",
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
      "id" : "Procedure.extension:Leitlinie",
      "path" : "Procedure.extension",
      "sliceName" : "Leitlinie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this"
        }],
        "description" : "Slice für referenzierten Therapieplan",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Procedure.basedOn:Therapieplan",
      "path" : "Procedure.basedOn",
      "sliceName" : "Therapieplan",
      "short" : "Therpieplan",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapieplan"
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
            "valueString" : "Therapy Plan"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf den im Molekularen Tumorboard beschlossenen Therpieplan",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf den im Molekularen Tumorboard beschlossenen Therapieplan"
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
            "valueString" : "Reference to the therapy plan decided by the Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "short" : "Abbruchsgrund Systemische Therapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Abbruchsgrund Systemische Therapie"
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
            "valueString" : "Discontinuation Reason for Systemic Therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Falls abgebrochen: Angabe zum Abbruchsgrund der Systemischen Therapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Falls abgebrochen: Angabe zum Abbruchsgrund der Systemischen Therapie"
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
            "valueString" : "If discontinued: specification of the reason for discontinuation of systemic therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason.coding",
      "path" : "Procedure.statusReason.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice für den Grund des Therapiestatus",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason.coding.system",
      "path" : "Procedure.statusReason.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason.coding.code",
      "path" : "Procedure.statusReason.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason.coding:Therapiestatusgrund",
      "path" : "Procedure.statusReason.coding",
      "sliceName" : "Therapiestatusgrund",
      "short" : "Therapiestatusgrund",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapiestatusgrund"
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
            "valueString" : "Therapy Status Reason"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Grund für den Status der Systemischen Therapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund für den Status der Systemischen Therapie"
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
            "valueString" : "Reason for the status of the systemic therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-therapiestatusgrund"
      }
    },
    {
      "id" : "Procedure.statusReason.coding:Therapiestatusgrund.system",
      "path" : "Procedure.statusReason.coding.system",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund"
    }]
  }
}

```
