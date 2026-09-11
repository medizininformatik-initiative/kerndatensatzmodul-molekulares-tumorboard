# MII EX MTB Empfehlung Priorität - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX MTB Empfehlung Priorität**

## Extension: MII EX MTB Empfehlung Priorität 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_EX_MTB_Empfehlung_Prioritaet |

Priorität der (einzelnen) Empfehlung

**Context of Use**

### Inhalt

Diese Extension stellt die Priorität dar, mit der die jeweilige Empfehlung vom molekularen Tumorboard ausgesprochen wurde.

### Inhalt

-------

**Usage info**

**Usages:**

* Use this Extension: [MII PR MTB Studieneinschluss Anfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md), [MII PR MTB Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md) and [MII PR MTB Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-mtb-therapieempfehlung.md)
* Examples for this Extension: [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [MedicationRequest/mii-exa-mtb-medication-request-cobimetinib](MedicationRequest-mii-exa-mtb-medication-request-cobimetinib.md), [MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab](MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.md), [MedicationRequest/mii-exa-mtb-medication-request-trastuzumab-deruxtecan](MedicationRequest-mii-exa-mtb-medication-request-trastuzumab-deruxtecan.md)... Show 6 more, [RequestGroup/mii-exa-mtb-request-group-adavosertib-carboplatin](RequestGroup-mii-exa-mtb-request-group-adavosertib-carboplatin.md), [RequestGroup/mii-exa-mtb-request-group-lunresertib-camonsertib](RequestGroup-mii-exa-mtb-request-group-lunresertib-camonsertib.md), [RequestGroup/mii-exa-mtb-therapieempfehlung-kombinationstherapie](RequestGroup-mii-exa-mtb-therapieempfehlung-kombinationstherapie.md), [ServiceRequest/mii-exa-mtb-study-request-ccne1](ServiceRequest-mii-exa-mtb-study-request-ccne1.md), [ServiceRequest/mii-exa-mtb-study-request-cldn6](ServiceRequest-mii-exa-mtb-study-request-cldn6.md) and [ServiceRequest/mii-exa-mtb-study-request-tedova](ServiceRequest-mii-exa-mtb-study-request-tedova.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-ex-mtb-empfehlung-prioritaet.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type decimal, positiveInt: Priorität der (einzelnen) Empfehlung

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type decimal, positiveInt: Priorität der (einzelnen) Empfehlung

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-mtb-empfehlung-prioritaet.csv), [Excel](../StructureDefinition-mii-ex-mtb-empfehlung-prioritaet.xlsx), [Schematron](../StructureDefinition-mii-ex-mtb-empfehlung-prioritaet.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-mtb-empfehlung-prioritaet",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
  "version" : "2026.0.1",
  "name" : "MII_EX_MTB_Empfehlung_Prioritaet",
  "title" : "MII EX MTB Empfehlung Priorität",
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
  "description" : "Priorität der (einzelnen) Empfehlung",
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
      "short" : "MII EX MTB Empfehlung Priorität",
      "definition" : "Priorität der (einzelnen) Empfehlung"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Priorität",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Priorität"
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
            "valueString" : "Priority"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Priorität dieser Empfehlung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Priorität dieser Empfehlung"
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
            "valueString" : "Priority of this recommendation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Wert 1 entspricht der höchsten Priorität, alle weiteren eine jeweils niedrigere Priorität",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      },
      {
        "code" : "positiveInt"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x]:valueDecimal",
      "path" : "Extension.value[x]",
      "sliceName" : "valueDecimal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x]:valuePositiveInt",
      "path" : "Extension.value[x]",
      "sliceName" : "valuePositiveInt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mustSupport" : true
    }]
  }
}

```
