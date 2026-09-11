# MII EX MTB Empfehlung Evidenzgraduierung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX MTB Empfehlung Evidenzgraduierung**

## Extension: MII EX MTB Empfehlung Evidenzgraduierung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_EX_MTB_Empfehlung_Evidenzgraduierung |

Evidenzgraduierung der (einzelnen) Empfehlung

**Context of Use**

### Content

This extension specifies the level of evidence, including an optional additional reference, that was assigned to a recommendation by the Molekulares Tumorboard (molecular tumor board).

This level of evidence is based on the highest evidence that can be found for a therapy of this kind in a comparable patient cohort at the time of the MTB. It can be assumed that effective therapies will receive a stronger evidence level over time.

### Content

[mii-cs-mtb-empfehlung-evidenzgrad-nct](CodeSystem-mii-cs-mtb-empfehlung-evidenzgrad-nct.md)

[mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis](CodeSystem-mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR MTB Therapeutische Implikation](StructureDefinition-mii-pr-mtb-therapeutische-implikation.md), [MII PR MTB Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md) and [MII PR MTB Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-mtb-therapieempfehlung.md)
* Examples for this Extension: [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [MedicationRequest/mii-exa-mtb-medication-request-cobimetinib](MedicationRequest-mii-exa-mtb-medication-request-cobimetinib.md), [MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab](MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.md), [MedicationRequest/mii-exa-mtb-medication-request-trastuzumab-deruxtecan](MedicationRequest-mii-exa-mtb-medication-request-trastuzumab-deruxtecan.md)... Show 4 more, [Observation/mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1](Observation-mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1.md), [RequestGroup/mii-exa-mtb-request-group-adavosertib-carboplatin](RequestGroup-mii-exa-mtb-request-group-adavosertib-carboplatin.md), [RequestGroup/mii-exa-mtb-request-group-lunresertib-camonsertib](RequestGroup-mii-exa-mtb-request-group-lunresertib-camonsertib.md) and [RequestGroup/mii-exa-mtb-therapieempfehlung-kombinationstherapie](RequestGroup-mii-exa-mtb-therapieempfehlung-kombinationstherapie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-ex-mtb-empfehlung-evidenzgraduierung.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-mtb-empfehlung-evidenzgraduierung.csv), [Excel](../StructureDefinition-mii-ex-mtb-empfehlung-evidenzgraduierung.xlsx), [Schematron](../StructureDefinition-mii-ex-mtb-empfehlung-evidenzgraduierung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-mtb-empfehlung-evidenzgraduierung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
  "version" : "2026.0.1",
  "name" : "MII_EX_MTB_Empfehlung_Evidenzgraduierung",
  "title" : "MII EX MTB Empfehlung Evidenzgraduierung",
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
  "description" : "Evidenzgraduierung der (einzelnen) Empfehlung",
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
    "expression" : "RequestGroup"
  },
  {
    "type" : "element",
    "expression" : "MedicationRequest"
  },
  {
    "type" : "element",
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX MTB Empfehlung Evidenzgraduierung",
      "definition" : "Evidenzgraduierung der (einzelnen) Empfehlung"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Evidenzgraduierung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Evidenzgraduierung"
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
            "valueString" : "Evidence Grading"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Evidenzgraduierung für Biomarker-basierte Empfehlung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Evidenzgraduierung für Biomarker-basierte Empfehlung"
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
            "valueString" : "Evidence grading for biomarker-based recommendation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Evidenzgraduierung wird durch einen Evidenzgrad und einen optionalen Zusatzverweis angegeben",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding",
      "path" : "Extension.value[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice für die Evidenzgraduierung anhand von `system`",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding:Evidenzgrad",
      "path" : "Extension.value[x].coding",
      "sliceName" : "Evidenzgrad",
      "short" : "Evidenzgrad",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Evidenzgrad"
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
            "valueString" : "Evidence Level"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Evidenzgrad der Empfehlung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Evidenzgrad der Empfehlung"
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
            "valueString" : "Evidence level of the recommendation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding:Evidenzgrad.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad"
    },
    {
      "id" : "Extension.value[x].coding:Evidenzgrad.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding:Zusatzverweis",
      "path" : "Extension.value[x].coding",
      "sliceName" : "Zusatzverweis",
      "short" : "Zusatzverweis",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zusatzverweis"
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
            "valueString" : "Additional Reference"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zusatzverweis zum Evidenzgrad",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zusatzverweis zum Evidenzgrad"
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
            "valueString" : "Additional reference to the evidence level"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding:Zusatzverweis.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis"
    },
    {
      "id" : "Extension.value[x].coding:Zusatzverweis.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
