# MII EX MTB Antwort Kostenuebernahme Ablehnungsgrund - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX MTB Antwort Kostenuebernahme Ablehnungsgrund**

## Extension: MII EX MTB Antwort Kostenuebernahme Ablehnungsgrund 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_EX_MTB_Antwort_Kostenuebernahme_Ablehnungsgrund |

Ablehnungsgrund des Antrags auf Kostenuebernahme

**Context of Use**

### Content

This extension describes the reason why a Kostenübernahme (cost coverage) was rejected by the insurance carrier.

### Content

[mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund](CodeSystem-mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR MTB Anwort Kostenuebernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.md)
* Examples for this Extension: [ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1](ClaimResponse-MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund.csv), [Excel](../StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund.xlsx), [Schematron](../StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund",
  "version" : "2026.0.1",
  "name" : "MII_EX_MTB_Antwort_Kostenuebernahme_Ablehnungsgrund",
  "title" : "MII EX MTB Antwort Kostenuebernahme Ablehnungsgrund",
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
  "description" : "Ablehnungsgrund des Antrags auf Kostenuebernahme",
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
    "expression" : "ClaimResponse"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX MTB Antwort Kostenuebernahme Ablehnungsgrund",
      "definition" : "Ablehnungsgrund des Antrags auf Kostenuebernahme"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding",
      "path" : "Extension.value[x].coding",
      "short" : "Grund",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund"
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
            "valueString" : "Reason"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Grund der Ablehnung des Antrags auf Kostenuebernahme",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund der Ablehnung des Antrags auf Kostenuebernahme"
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
            "valueString" : "Reason for rejection of the cost coverage application"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Extension.value[x].coding.system",
      "path" : "Extension.value[x].coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund"
    },
    {
      "id" : "Extension.value[x].coding.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antwort-kostenuebernahme-ablehnungsgrund"
      }
    }]
  }
}

```
