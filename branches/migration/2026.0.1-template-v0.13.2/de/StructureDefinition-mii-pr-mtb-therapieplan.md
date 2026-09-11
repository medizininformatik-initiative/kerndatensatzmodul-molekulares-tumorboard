# MII PR MTB Therapieplan - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Therapieplan**

## Ressourcenprofil: MII PR MTB Therapieplan 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Therapieplan |

 
Therapieplan gemäß Beschluss des Molekularen Tumorboards 

-------

### Inhalt

Dieses Profil beschreibt ein Therapieplan gemäß des Beschlusses des Molekularen Tumorboards.

Inhaltlich basiert er auf dem Tumorboard-Profil des Onkologie-Moduls, in dem bereits Therapiebeschlüsse nach den Kategorien des oBDS kodiert werden konnten. Da im Rahmen des Molekularen Tumorboards jedoch ein Follow-up-Monitoring geplant ist, u.a. um den Status der Therapieempfehlungen zu überprüfen, wurden die Empfehlungen hier als einzelne Datenelemente ausmodelliert, damit sie ihrerseits einzeln referenzierbar sind.

Dies betrifft sowohl (medikamentöse) **Therapieempfehlungen** (`MedicationRequest`, bzw. `RequestGroup` bei Kombinationstherapien) als auch **Studieneinschlussempfehlungen** und andere **diagnostische Verfahren und Dienstleistungen** wie Rebiopsien und humangenetische Beratung (`ServiceRequest)`.

### Statusangabe

Die Statusangabe eines Therapieplans bezieht sich auf den Umsetzungsstand aller enthaltenen Empfehlungen (siehe Element `activity`). Es wird empfohlen folgende Statusangaben für die beschriebenen Situationen zu verwenden:

| | |
| :--- | :--- |
| `active` | Empfehlung bzw. Therapieoption in Umsetzung (Regelfall) |
| `revoked` | Molekularer Tumorboard-Fall ist abgeschlossen |
| `completed` | Alle Empfehlungen bzw. Therapieoptionen ausgeschöpft oder Patient verstorben |

**Hinweis: Die Statusangabe eines Therapieplans sollte mit den enthaltenen Empfehlungen (den `status`-Feldern) semantisch abgestimmt sein.**

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für diese Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "identifier" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?identifier=123456`Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?status=active`Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "intent" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?intent=proposal`Anwendungshinweise: Weitere Informationen zur Suche nach "intent" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "category" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?category=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ|praeth`Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "description" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?description=contains:Musterperson`Anwendungshinweise: Weitere Informationen zur Suche nach "description" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](https://hl7.org/fhir/R4/search.html#string).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?encounter=Encounter/example`Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "created" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?created=eq2021-06-10`Anwendungshinweise: Weitere Informationen zur Suche nach "created" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "contributor" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?contributor=Practitioner/example`Anwendungshinweise: Weitere Informationen zur Suche nach "contributor" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "condition" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?condition=Condition/example`Anwendungshinweise: Weitere Informationen zur Suche nach "condition" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "activity-reference" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?activity-reference=MedicationRequest/example`Anwendungshinweise: Weitere Informationen zur Suche nach "activity-reference" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "activity-code" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?activity-code=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ|CH`Anwendungshinweise: Weitere Informationen zur Suche nach "activity-code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "outcome-reference" MUSS unterstützt werden:Beispiele:`GET [base]/CarePlan?outcome-reference=MedicationStatement/example`Anwendungshinweise: Weitere Informationen zur Suche nach "outcome-reference" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

TODO: SP CarePlan.supportingInfo

**Beispiele**

Beispiel: Beschluss MTB-Fall für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.md))

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md), [MII PR MTB Systemische Therapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md) and [MII PR MTB Systemische Vortherapie](StructureDefinition-mii-pr-mtb-systemische-vortherapie.md)
* Examples for this Profile: [CarePlan/mii-exa-mtb-kim-musterperson-therapieplan](CarePlan-mii-exa-mtb-kim-musterperson-therapieplan.md) and [CarePlan/mii-exa-mtb-therapieplan-kombinationstherapie](CarePlan-mii-exa-mtb-therapieplan-kombinationstherapie.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-therapieplan.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Tumorkonferenz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Tumorkonferenz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz) 

** Summary **

Mandatory: 0 element(5 nested mandatory elements)
 Must-Support: 13 elements
 Prohibited: 5 elements

**Structures**

This structure refers to these other structures:

* [MII PR MTB Behandlungsepisode (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode)](StructureDefinition-mii-pr-mtb-behandlungsepisode.md)
* [MII PR MTB Therapieempfehlung Systemische Therapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)](StructureDefinition-mii-pr-mtb-therapieempfehlung.md)
* [MII PR MTB Therapieempfehlung Kombinationstherapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination)](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md)
* [MII PR MTB Human-genetische Beratung Auftrag (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag)](StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.md)
* [MII PR MTB Histologie-Evaluation Auftrag (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag)](StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.md)
* [MII PR MTB Biopsie Auftrag (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag)](StructureDefinition-mii-pr-mtb-biopsie-auftrag.md)
* [MII PR MTB Studieneinschluss Anfrage (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage)](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of CarePlan.supportingInfo

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Onko_Tumorkonferenz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Tumorkonferenz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz) 

** Summary **

Mandatory: 0 element(5 nested mandatory elements)
 Must-Support: 13 elements
 Prohibited: 5 elements

**Structures**

This structure refers to these other structures:

* [MII PR MTB Behandlungsepisode (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode)](StructureDefinition-mii-pr-mtb-behandlungsepisode.md)
* [MII PR MTB Therapieempfehlung Systemische Therapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)](StructureDefinition-mii-pr-mtb-therapieempfehlung.md)
* [MII PR MTB Therapieempfehlung Kombinationstherapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination)](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md)
* [MII PR MTB Human-genetische Beratung Auftrag (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag)](StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.md)
* [MII PR MTB Histologie-Evaluation Auftrag (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag)](StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.md)
* [MII PR MTB Biopsie Auftrag (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag)](StructureDefinition-mii-pr-mtb-biopsie-auftrag.md)
* [MII PR MTB Studieneinschluss Anfrage (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage)](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of CarePlan.supportingInfo

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-therapieplan.csv), [Excel](../StructureDefinition-mii-pr-mtb-therapieplan.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-therapieplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-therapieplan",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Therapieplan",
  "title" : "MII PR MTB Therapieplan",
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
  "description" : "Therapieplan gemäß Beschluss des Molekularen Tumorboards",
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
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.meta",
      "path" : "CarePlan.meta",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
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
      "definition" : "Status der Umsetzung des beschlossenen Therapieplans",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status der Umsetzung des beschlossenen Therapieplans"
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
            "valueString" : "Status of the approved therapy plan implementation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "\n    active: Empfehlung bzw. Therapieoption in Umsetzung (Regelfall),\n    revoked: Molekularer Tumorboard-Fall ist abgeschlossen,\n    completed: Alle Empfehlungen bzw. Therapieoptionen ausgeschöpft oder Patient verstorben"
    },
    {
      "id" : "CarePlan.description",
      "path" : "CarePlan.description",
      "short" : "Protokollauszug",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Protokollauszug"
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
            "valueString" : "Protocol Excerpt"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Protokollauszug aus dem Beschluss des Molekularen Tumorboards",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Protokollauszug aus dem Beschluss des Molekularen Tumorboards"
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
            "valueString" : "Protocol excerpt from the Molecular Tumor Board decision"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.created",
      "path" : "CarePlan.created",
      "short" : "Erstellungsdatum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Erstellungsdatum"
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
            "valueString" : "Creation Date"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Erstellungsdatum des Therapieplans gemäß Beschluss des Molekularen Tumorboards",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Erstellungsdatum des Therapieplans gemäß Beschluss des Molekularen Tumorboards"
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
            "valueString" : "Creation date of the therapy plan as per Molecular Tumor Board decision"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "CarePlan.supportingInfo",
      "path" : "CarePlan.supportingInfo",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "description" : "Slice für weitere Informationen",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "CarePlan.supportingInfo:Behandlungsepisode",
      "path" : "CarePlan.supportingInfo",
      "sliceName" : "Behandlungsepisode",
      "short" : "Behandlungsepisode",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Behandlungsepisode"
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
            "valueString" : "Treatment Episode"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen"
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
            "valueString" : "Current disease status and previous treatment measures"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode",
        "http://hl7.org/fhir/StructureDefinition/ClinicalImpression"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/Therapieempfehlung",
      "path" : "CarePlan.activity",
      "sliceName" : "extended/Therapieempfehlung",
      "short" : "Therapieempfehlung Systemische Therapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapieempfehlung Systemische Therapie"
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
            "valueString" : "Therapy Recommendation Systemic Therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Therapieempfehlung für eine medikamentöse Systemische Therapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapieempfehlung für eine medikamentöse Systemische Therapie"
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
            "valueString" : "Therapy recommendation for a systemic drug therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/Therapieempfehlung.reference",
      "path" : "CarePlan.activity.reference",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
        "http://hl7.org/fhir/StructureDefinition/RequestGroup"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/Therapieempfehlung.detail",
      "path" : "CarePlan.activity.detail",
      "max" : "0"
    },
    {
      "id" : "CarePlan.activity:extended/HumangenetischeBeratung",
      "path" : "CarePlan.activity",
      "sliceName" : "extended/HumangenetischeBeratung",
      "short" : "Empfehlung Human-genetische Beratung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Empfehlung Human-genetische Beratung"
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
            "valueString" : "Recommendation for Human Genetic Counseling"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Auftrag zur (erneuten) Human-genetischen Beratung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Auftrag zur erneuten Human-genetischen Beratung"
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
            "valueString" : "Request for repeat human genetic counseling"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/HumangenetischeBeratung.reference",
      "path" : "CarePlan.activity.reference",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/HumangenetischeBeratung.detail",
      "path" : "CarePlan.activity.detail",
      "max" : "0"
    },
    {
      "id" : "CarePlan.activity:extended/HistologieEvaluation",
      "path" : "CarePlan.activity",
      "sliceName" : "extended/HistologieEvaluation",
      "short" : "Empfehlung Histologie-Evaluation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Empfehlung Histologie-Evaluation"
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
            "valueString" : "Recommendation for Histology Evaluation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Auftrag zur (erneuten) Histologie-Evaluation",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Auftrag zur erneuten Histologie-Evaluation"
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
            "valueString" : "Request for repeat histology evaluation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/HistologieEvaluation.reference",
      "path" : "CarePlan.activity.reference",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/HistologieEvaluation.detail",
      "path" : "CarePlan.activity.detail",
      "max" : "0"
    },
    {
      "id" : "CarePlan.activity:extended/Biopsie",
      "path" : "CarePlan.activity",
      "sliceName" : "extended/Biopsie",
      "short" : "Empfehlung Biopsie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Empfehlung Biopsie"
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
            "valueString" : "Recommendation for Biopsy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Auftrag zur (erneuten) Biopsie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Auftrag zur erneuten Biopsie"
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
            "valueString" : "Request for repeat biopsy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/Biopsie.reference",
      "path" : "CarePlan.activity.reference",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/Biopsie.detail",
      "path" : "CarePlan.activity.detail",
      "max" : "0"
    },
    {
      "id" : "CarePlan.activity:extended/Studieneinschlussempfehlung",
      "path" : "CarePlan.activity",
      "sliceName" : "extended/Studieneinschlussempfehlung",
      "short" : "Studieneinschlussempfehlung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Studieneinschlussempfehlung"
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
            "valueString" : "Study Enrollment Recommendation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Anfrage zum Studieneinschluss",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Anfrage zum Studieneinschluss"
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
            "valueString" : "Request for study enrollment"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/Studieneinschlussempfehlung.reference",
      "path" : "CarePlan.activity.reference",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended/Studieneinschlussempfehlung.detail",
      "path" : "CarePlan.activity.detail",
      "max" : "0"
    }]
  }
}

```
