# MII PR MTB Consent - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Consent**

## Resource Profile: MII PR MTB Consent 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-consent-given | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Consent_Given |

 
Beschreibt, ob und wann der Consent zum Einschluss ins MTB gegeben wurde. 

-------

### Content

This profile describes a consent that is a prerequisite for admission to the Molekulares Tumorboard (molecular tumor board).

Formally, a `Consent` resource together with `Provenance` resources would be conceivable here. However, different data protection conditions apply at each site, due to both site-specific and federal-state particularities, which is why the specific elaboration of the individual consents will have to be carried out individually at the respective sites in the future.

In order to provide a basis for calculating the consent rate, the consent has for now been modeled here as an `Observation`.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Observation?_id=12345`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-consent-given`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Observation?code=http://loinc.org|105511-0`Usage notes: Further information on searching for "code" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Observation?subject=Patient/example`Usage notes: Further information on searching for "subject" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "encounter" MUST be supported:Examples:`GET [base]/Observation?encounter=Encounter/example`Usage notes: Further information on searching for "encounter" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "combo-value-concept" MUST be supported:Examples:`GET [base]/Observation?combo-value-concept=http://loinc.org|LA33-6`Usage notes: Further information on searching for "combo-value-concept" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

**Examples**

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md)
* Examples for this Profile: [Observation/mii-exa-mtb-kim-musterperson-aufklaerung](Observation-mii-exa-mtb-kim-musterperson-aufklaerung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-consent-given.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-consent-given.csv), [Excel](../StructureDefinition-mii-pr-mtb-consent-given.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-consent-given.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-consent-given",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-consent-given",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Consent_Given",
  "title" : "MII PR MTB Consent",
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
  "description" : "Beschreibt, ob und wann der Consent zum Einschluss ins MTB gegeben wurde.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.meta",
      "path" : "Observation.meta",
      "mustSupport" : true
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "patternCode" : "final"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "105511-0",
        "display" : "Was consent given"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient",
        "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "short" : "Gesundheitseinrichtungskontakt",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesundheitseinrichtungskontakt"
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
            "valueString" : "Healthcare Facility Encounter"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Kontakt zur Gesundheitseinrichtung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kontakt zur Gesundheitseinrichtung"
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
            "valueString" : "Encounter with the healthcare facility"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding",
      "path" : "Observation.value[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice für mögliche Antwort zum Consent",
        "ordered" : false,
        "rules" : "closed"
      },
      "short" : "Dokumentierter Consent",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Dokumentierter Consent"
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
            "valueString" : "Documented Consent"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Dokumentation der Zustimmung der Ablehnung eines Consents",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Dokumentation der Zustimmung der Ablehnung eines Consents"
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
            "valueString" : "Documentation of consent approval or rejection"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding:SCT",
      "path" : "Observation.value[x].coding",
      "sliceName" : "SCT",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.value[x].coding:SCT.system",
      "path" : "Observation.value[x].coding.system",
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.value[x].coding:SCT.code",
      "path" : "Observation.value[x].coding.code",
      "comment" : "SNOMED CT: Yes (qualifier value) - 373066001, No (qualifier value) - 373067005"
    }]
  }
}

```
