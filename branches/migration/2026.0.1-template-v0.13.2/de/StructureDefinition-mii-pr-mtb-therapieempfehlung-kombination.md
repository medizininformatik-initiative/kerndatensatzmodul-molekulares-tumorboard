# MII PR MTB Therapieempfehlung Kombinationstherapie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Therapieempfehlung Kombinationstherapie**

## Ressourcenprofil: MII PR MTB Therapieempfehlung Kombinationstherapie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Therapieempfehlung_Kombination |

 
Therapieempfehlung für eine medikamentöse Kombinationstherapie 

-------

### Inhalt

Dieses Profil beschreibt ein Therapieempfehlung zur systemischen Therapie mit einer Kombination mehrerer Medikamente.

### Statusangabe

Die Statusangabe einer Kombinationstherapie-Empfehlung bezieht sich auf deren Umsetzungsstand. Es wird empfohlen folgende Statusangaben für die beschriebenen Situationen zu verwenden:

| | |
| :--- | :--- |
| `draft` | Nicht umgesetzt |
| `active` | In Umsetzung |
| `completed` | Abgeschlossen oder abgebrochen (Patient verstorben) |

**Hinweis: Die Statusangabe sollte mit der des beschlossenen Therapieplans (siehe [Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)) semantisch abgestimmt sein.**

### Inhalt

Mapping Datensatz zu FHIR

TODO: FHIR LM für Kombinationstherapie

**Suchparameter**

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/RequestGroup?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/RequestGroup?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "identifier" MUSS unterstützt werden:Beispiele:`GET [base]/RequestGroup?identifier=urn:fdc:medizininformatik-initiative.de:mtb-medications|0001`Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "intent" MUSS unterstützt werden:Beispiele:`GET [base]/RequestGroup?intent=final`Anwendungshinweise: Weitere Informationen zur Suche nach "intent" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/RequestGroup?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "action-resource" MUSS unterstützt werden:Beispiele:`GET [base]/RequestGroup?action-resource=MedicationRequest/example`Anwendungshinweise: Weitere Informationen zur Suche nach "action-resource" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Beispiele**

Beispiel: Empfehlung einer Kombinationstherapie bestehend aus Dabrafenib und Trametinib für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.md))

Dazu die jeweiligen `MedicationRequest`s:

Und die `Medication`s:

-------

-------

### Beschreibung

RequestGroup-basiertes Profil für Kombinationstherapie-Empfehlungen.

Siehe auch: [TherapieempfehlungKombination](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md)

**Usages:**

* Refer to this Profile: [MII PR MTB Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)
* Examples for this Profile: [RequestGroup/mii-exa-mtb-request-group-adavosertib-carboplatin](RequestGroup-mii-exa-mtb-request-group-adavosertib-carboplatin.md), [RequestGroup/mii-exa-mtb-request-group-lunresertib-camonsertib](RequestGroup-mii-exa-mtb-request-group-lunresertib-camonsertib.md) and [RequestGroup/mii-exa-mtb-therapieempfehlung-kombinationstherapie](RequestGroup-mii-exa-mtb-therapieempfehlung-kombinationstherapie.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Therapieempfehlung_Kombinationstherapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Therapieempfehlung_Kombinationstherapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie) 

** Summary **

Mandatory: 2 elements
 Must-Support: 5 elements
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR MTB Therapieempfehlung Systemische Therapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)](StructureDefinition-mii-pr-mtb-therapieempfehlung.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet](StructureDefinition-mii-ex-mtb-empfehlung-prioritaet.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung](StructureDefinition-mii-ex-mtb-empfehlung-evidenzgraduierung.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation](StructureDefinition-mii-ex-mtb-empfehlung-publikation.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Onko_Therapieempfehlung_Kombinationstherapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Therapieempfehlung_Kombinationstherapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie) 

** Summary **

Mandatory: 2 elements
 Must-Support: 5 elements
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR MTB Therapieempfehlung Systemische Therapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)](StructureDefinition-mii-pr-mtb-therapieempfehlung.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet](StructureDefinition-mii-ex-mtb-empfehlung-prioritaet.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung](StructureDefinition-mii-ex-mtb-empfehlung-evidenzgraduierung.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation](StructureDefinition-mii-ex-mtb-empfehlung-publikation.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.csv), [Excel](../StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-therapieempfehlung-kombination",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Therapieempfehlung_Kombination",
  "title" : "MII PR MTB Therapieempfehlung Kombinationstherapie",
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
  "description" : "Therapieempfehlung für eine medikamentöse Kombinationstherapie",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RequestGroup",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RequestGroup",
      "path" : "RequestGroup"
    },
    {
      "id" : "RequestGroup.meta",
      "path" : "RequestGroup.meta",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.extension:Prioritaet",
      "path" : "RequestGroup.extension",
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
      "id" : "RequestGroup.extension:Evidenzgraduierung",
      "path" : "RequestGroup.extension",
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
      "id" : "RequestGroup.extension:Publikation",
      "path" : "RequestGroup.extension",
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
      "id" : "RequestGroup.status",
      "path" : "RequestGroup.status",
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
      "id" : "RequestGroup.intent",
      "path" : "RequestGroup.intent",
      "short" : "proposal | option",
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
      "definition" : "Da das MTB nur Empfehlungen abgibt, wird hier typischerweise 'proposal' stehen. Es sei denn,\ndiese Therapieempfehlung ist selbst nochmal Teil einer RequestGroup. In dem Fall muss hier 'option' stehen.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Da das MTB nur Empfehlungen abgibt wird hier typischerweise proposal stehen. Es sei denn diese Therapieempfehlung ist selbst nochmal Teil einer RequestGroup. In dem Fall muss hier option stehen."
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
            "valueString" : "Since the MTB only provides recommendations this will typically be proposal. Unless this therapy recommendation is itself part of a RequestGroup. In that case option must be used."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "RequestGroup.author",
      "path" : "RequestGroup.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }]
    },
    {
      "id" : "RequestGroup.action",
      "path" : "RequestGroup.action",
      "min" : 1
    },
    {
      "id" : "RequestGroup.action.resource",
      "path" : "RequestGroup.action.resource",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.action.action",
      "path" : "RequestGroup.action.action",
      "max" : "0"
    }]
  }
}

```
