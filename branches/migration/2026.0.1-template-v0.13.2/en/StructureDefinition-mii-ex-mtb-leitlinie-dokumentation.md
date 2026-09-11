# MII EX MTB Leitlinie Dokumentation - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX MTB Leitlinie Dokumentation**

## Extension: MII EX MTB Leitlinie Dokumentation 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_EX_MTB_Leitlinie_Dokumentation |

Dokumentation zur Leitlinien-konformen Umsetzung der Prozedur

**Context of Use**

### Content

This extension is used to annotate prior therapies with the corresponding **therapy line** and **approval status**.

The therapy line is specified as an integer. Via the approval status, a medication administration can be marked as in-label, off-label, or guideline-compliant.

In the first version, no requirements are made regarding the logic by which the exact determination of the therapy lines is to be performed (contraindications, when guideline therapy has been exhausted, etc.).

This requires overarching coordination, in which the MII is happy to participate with its experience, but which must be understood uniformly across sectors and sites.

#### Guideline documentation

[mii-cs-mtb-zulassungsstatus](CodeSystem-mii-cs-mtb-zulassungsstatus.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR MTB Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md) and [MII PR MTB Systemische Vortherapie](StructureDefinition-mii-pr-mtb-systemische-vortherapie.md)
* Examples for this Extension: [ClinicalImpression/mii-exa-mtb-behandlungsepisode-1](ClinicalImpression-mii-exa-mtb-behandlungsepisode-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-ex-mtb-leitlinie-dokumentation.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-mtb-leitlinie-dokumentation.csv), [Excel](../StructureDefinition-mii-ex-mtb-leitlinie-dokumentation.xlsx), [Schematron](../StructureDefinition-mii-ex-mtb-leitlinie-dokumentation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-mtb-leitlinie-dokumentation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation",
  "version" : "2026.0.1",
  "name" : "MII_EX_MTB_Leitlinie_Dokumentation",
  "title" : "MII EX MTB Leitlinie Dokumentation",
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
  "description" : "Dokumentation zur Leitlinien-konformen Umsetzung der Prozedur",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX MTB Leitlinie Dokumentation",
      "definition" : "Dokumentation zur Leitlinien-konformen Umsetzung der Prozedur"
    },
    {
      "id" : "Extension.extension:Therapielinie",
      "path" : "Extension.extension",
      "sliceName" : "Therapielinie",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:Therapielinie.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Therapielinie.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "Therapielinie"
    },
    {
      "id" : "Extension.extension:Therapielinie.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Therapielinie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapielinie"
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
            "valueString" : "Therapy Line"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Therapielinie 0 bis 9",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapielinie 0 bis 9"
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
            "valueString" : "Therapy line 0 to 9"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "type" : [{
        "code" : "unsignedInt"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:Zulassungsstatus",
      "path" : "Extension.extension",
      "sliceName" : "Zulassungsstatus",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:Zulassungsstatus.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Zulassungsstatus.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "Zulassungsstatus"
    },
    {
      "id" : "Extension.extension:Zulassungsstatus.value[x]",
      "path" : "Extension.extension.value[x]",
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
      "id" : "Extension.extension:Zulassungsstatus.value[x]:valueCodeableConcept",
      "path" : "Extension.extension.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:Zulassungsstatus.value[x]:valueCodeableConcept.coding",
      "path" : "Extension.extension.value[x].coding",
      "short" : "Zulassungsstatus",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zulassungsstatus"
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
            "valueString" : "Approval Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zulassungsstatus der Leitlinientherapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zulassungsstatus der Leitlinientherapie"
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
            "valueString" : "Approval status of the guideline therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:Zulassungsstatus.value[x]:valueCodeableConcept.coding.system",
      "path" : "Extension.extension.value[x].coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-zulassungsstatus"
    },
    {
      "id" : "Extension.extension:Zulassungsstatus.value[x]:valueCodeableConcept.coding.code",
      "path" : "Extension.extension.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-zulassungsstatus"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
