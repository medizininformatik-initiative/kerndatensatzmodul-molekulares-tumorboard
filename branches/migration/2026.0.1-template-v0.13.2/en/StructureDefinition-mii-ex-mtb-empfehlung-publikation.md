# MII EX MTB Empfehlung Publikation - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX MTB Empfehlung Publikation**

## Extension: MII EX MTB Empfehlung Publikation 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_EX_MTB_Empfehlung_Publikation |

Verweis auf Publikation der (einzelnen) Empfehlung

**Context of Use**

### Content

This extension can be used to specify sources that support the stated level of evidence of a recommendation of the Molekulares Tumorboard (molecular tumor board). Where possible, these sources should be given as a DOI or a PubMed ID.

### Content

-------

**Usage info**

**Usages:**

* Use this Extension: [MII PR MTB Studieneinschluss Anfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md), [MII PR MTB Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md) and [MII PR MTB Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-mtb-therapieempfehlung.md)
* Examples for this Extension: [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [MedicationRequest/mii-exa-mtb-medication-request-cobimetinib](MedicationRequest-mii-exa-mtb-medication-request-cobimetinib.md), [MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab](MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.md), [MedicationRequest/mii-exa-mtb-medication-request-trastuzumab-deruxtecan](MedicationRequest-mii-exa-mtb-medication-request-trastuzumab-deruxtecan.md)... Show 4 more, [RequestGroup/mii-exa-mtb-request-group-adavosertib-carboplatin](RequestGroup-mii-exa-mtb-request-group-adavosertib-carboplatin.md), [RequestGroup/mii-exa-mtb-request-group-lunresertib-camonsertib](RequestGroup-mii-exa-mtb-request-group-lunresertib-camonsertib.md), [RequestGroup/mii-exa-mtb-therapieempfehlung-kombinationstherapie](RequestGroup-mii-exa-mtb-therapieempfehlung-kombinationstherapie.md) and [ServiceRequest/mii-exa-mtb-study-request-cldn6](ServiceRequest-mii-exa-mtb-study-request-cldn6.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-ex-mtb-empfehlung-publikation.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-mtb-empfehlung-publikation.csv), [Excel](../StructureDefinition-mii-ex-mtb-empfehlung-publikation.xlsx), [Schematron](../StructureDefinition-mii-ex-mtb-empfehlung-publikation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-mtb-empfehlung-publikation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
  "version" : "2026.0.1",
  "name" : "MII_EX_MTB_Empfehlung_Publikation",
  "title" : "MII EX MTB Empfehlung Publikation",
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
  "description" : "Verweis auf Publikation der (einzelnen) Empfehlung",
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
    "expression" : "MedicationRequest"
  },
  {
    "type" : "element",
    "expression" : "RequestGroup"
  },
  {
    "type" : "element",
    "expression" : "ServiceRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX MTB Empfehlung Publikation",
      "definition" : "Verweis auf Publikation der (einzelnen) Empfehlung"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Identifikator Publikation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Identifikator Publikation"
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
            "valueString" : "Publication Identifier"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Eindeutiger Identifikator zur Publikation",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Eindeutiger Identifikator zur Publikation"
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
            "valueString" : "Unique identifier for the publication"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Für DOI: system=http://doi.org, value=10.1000/182. Für PMID: system=http://www.ncbi.nlm.nih.gov/pubmed, value=30016818. Für andere URLs (Whitepaper, Leitlinien): system=urn:ietf:rfc:3986, value=<vollständige URL>",
      "min" : 1,
      "type" : [{
        "code" : "Identifier"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].system",
      "path" : "Extension.value[x].system",
      "short" : "Publikationsdatenbank oder URL-Schema",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Publikationsdatenbank oder URL-Schema"
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
            "valueString" : "Publication database or URL scheme"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "DOI: http://doi.org, PMID: http://www.ncbi.nlm.nih.gov/pubmed, URLs: urn:ietf:rfc:3986",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].value",
      "path" : "Extension.value[x].value",
      "short" : "Identifikator oder URL",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Identifikator oder URL"
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
            "valueString" : "Identifier or URL"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "DOI: 10.1000/182, PMID: 30016818, oder vollständige URL",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
