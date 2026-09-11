# MII PR MTB Therapieempfehlung Systemische Therapie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Therapieempfehlung Systemische Therapie**

## Ressourcenprofil: MII PR MTB Therapieempfehlung Systemische Therapie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Therapieempfehlung |

 
Therapieempfehlung für eine medikamentöse Systemische Therapie 

-------

### Inhalt

Dieses Profil beschreibt ein Therapieempfehlung zur systemischen (medikamentösen) Therapie. Es basiert auf den MedicationRequest-Profil des Basismoduls Medikation.

Mit `MedicationRequest` können theoretisch sowohl Empfehlungen als auch Verordnungen abgebildet werden. Da das Molekulare Tumorboard aber häufig nicht in der selben Einrichtung lokalisiert ist wie die behandelnden Onkologen, werden die Empfehlungen als solche modelliert (`intent = proposal`).

Die Angabe der Wirkstoffe soll nach Möglichkeit über ATC erfolgen, wobei theoretisch auch andere Systematiken genutzt werden können. Es ist zu beachten, dass eine Therapieempfehlung häufig auf Wirkstoffgruppenebene ausgesprochen werden kann - in dem Fall kann die Wirkstoffgruppe als ATC kodiert werden. Falls ein konkreter Wirkstoff in der Empfehlung benannt wird, können sowohl Wirkstoffklasse als auch Wirkstoff innerhalb des gleichen Codings dargestellt werden.

Empfehlungen zu Kombinationstherapien werden unter Verwendung des Profils Kombinationstherapie-Empfehlung abgebildet, da die Evidenzen zwischen Einzel- und Kombinationstherapien häufig anders sind.

### Statusangabe

Die Statusangabe einer Therapieempfehlung bezieht sich auf deren Umsetzungsstand. Es wird empfohlen folgende Statusangaben für die beschriebenen Situationen zu verwenden:

| | |
| :--- | :--- |
| `draft` | Nicht umgesetzt |
| `active` | In Umsetzung |
| `completed` | Abgeschlossen oder abgebrochen (Patient verstorben) |

**Hinweis: Die Statusangabe sollte mit der des beschlossenen Therapieplans (siehe [Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)) semantisch abgestimmt sein.**

### Verknüpfungen zu anderen Ressourcen

Ein Therapieplan kann unter `CarePlan.activity.reference` auf beliebig viele `MedicationRequest`s verweisen. Tatsächlich durchgeführte Systemische Therapien und Medikamentengaben referenzieren über `Procecure.basedOn` bzw. `MedicationStatement.basedOn` auf den Request. Diese Zuordnung wird erleichtert, wenn sowohl im `MedicationRequest` als auch im `MedicationStatement` die ATC-Wirkstoffgruppe kodiert ist.

Über `MedicationRequest.reasonReference` können relevante Befunde sowie die Diagnose verlinkt werden.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationRequest?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "identifier" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationRequest?identifier=urn:fdc:medizininformatik-initiative.de:mtb-medications|0001`Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationRequest?status=final`Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "intent" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationRequest?intent=final`Anwendungshinweise: Weitere Informationen zur Suche nach "intent" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "medication" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationRequest?medication=Medication/example`Anwendungshinweise: Weitere Informationen zur Suche nach "medication" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationRequest?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationRequest?encounter=Encounter/example`Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "authoredOn" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationRequest?authoredon=eq2025-01-14`Anwendungshinweise: Weitere Informationen zur Suche nach "authoredon" finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](https://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "requester" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationRequest?requester=Practitioner/example`Anwendungshinweise: Weitere Informationen zur Suche nach "requester" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "supporting-info" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationRequest?supporting-info=Observation/example`Anwendungshinweise: Weitere Informationen zur Suche nach "supporting-info" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Beispiele**

Beispiel: Empfehlung einer systemischen Therapie mit Mirvetuximab Soravtansine für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.md))

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Systemische Therapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md), [MII PR MTB Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md) and [MII PR MTB Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)
* Examples for this Profile: [MedicationRequest/mii-exa-mtb-medication-request-adavosertib](MedicationRequest-mii-exa-mtb-medication-request-adavosertib.md), [MedicationRequest/mii-exa-mtb-medication-request-camonsertib](MedicationRequest-mii-exa-mtb-medication-request-camonsertib.md), [MedicationRequest/mii-exa-mtb-medication-request-carboplatin](MedicationRequest-mii-exa-mtb-medication-request-carboplatin.md), [MedicationRequest/mii-exa-mtb-medication-request-cobimetinib](MedicationRequest-mii-exa-mtb-medication-request-cobimetinib.md)... Show 5 more, [MedicationRequest/mii-exa-mtb-medication-request-lunresertib](MedicationRequest-mii-exa-mtb-medication-request-lunresertib.md), [MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab](MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.md), [MedicationRequest/mii-exa-mtb-medication-request-trastuzumab-deruxtecan](MedicationRequest-mii-exa-mtb-medication-request-trastuzumab-deruxtecan.md), [MedicationRequest/mii-exa-mtb-therapieempfehlung-dabrafenib](MedicationRequest-mii-exa-mtb-therapieempfehlung-dabrafenib.md) and [MedicationRequest/mii-exa-mtb-therapieempfehlung-trametinib](MedicationRequest-mii-exa-mtb-therapieempfehlung-trametinib.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-therapieempfehlung.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Therapieempfehlung_Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Therapieempfehlung_Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation) 

** Summary **

Must-Support: 4 elements

**Structures**

This structure refers to these other structures:

* [MII PR Patho Finding (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)
* [MII PR MolGen Variante (https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante)](https://medizininformatik-initiative.github.io/kerndatensatzmodul-GenetischeTests/2027.0.0-ballot.rc2/StructureDefinition-mii-pr-molgen-variante.html)
* [MII PR Onkologie Genetische Variante (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet](StructureDefinition-mii-ex-mtb-empfehlung-prioritaet.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung](StructureDefinition-mii-ex-mtb-empfehlung-evidenzgraduierung.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation](StructureDefinition-mii-ex-mtb-empfehlung-publikation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationRequest.reasonReference

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Onko_Therapieempfehlung_Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Therapieempfehlung_Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation) 

** Summary **

Must-Support: 4 elements

**Structures**

This structure refers to these other structures:

* [MII PR Patho Finding (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)
* [MII PR MolGen Variante (https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante)](https://medizininformatik-initiative.github.io/kerndatensatzmodul-GenetischeTests/2027.0.0-ballot.rc2/StructureDefinition-mii-pr-molgen-variante.html)
* [MII PR Onkologie Genetische Variante (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet](StructureDefinition-mii-ex-mtb-empfehlung-prioritaet.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung](StructureDefinition-mii-ex-mtb-empfehlung-evidenzgraduierung.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation](StructureDefinition-mii-ex-mtb-empfehlung-publikation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationRequest.reasonReference

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-therapieempfehlung.csv), [Excel](../StructureDefinition-mii-pr-mtb-therapieempfehlung.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-therapieempfehlung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-therapieempfehlung",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Therapieempfehlung",
  "title" : "MII PR MTB Therapieempfehlung Systemische Therapie",
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
  "description" : "Therapieempfehlung für eine medikamentöse Systemische Therapie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest"
    },
    {
      "id" : "MedicationRequest.extension:Prioritaet",
      "path" : "MedicationRequest.extension",
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
      "id" : "MedicationRequest.extension:Evidenzgraduierung",
      "path" : "MedicationRequest.extension",
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
      "id" : "MedicationRequest.extension:Publikation",
      "path" : "MedicationRequest.extension",
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
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown"
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
            "valueString" : "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown"
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
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
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
      "definition" : "Da das MTB nur Empfehlungen abgibt, wird hier typischerweise 'proposal' stehen. Es sei denn,\n        diese Therapieempfehlung ist Teil einer RequestGroup (z.B. Kombinationstherapie). In dem Fall muss hier 'option' stehen.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Da das MTB nur Empfehlungen abgibt wird hier typischerweise proposal stehen. Es sei denn diese Therapieempfehlung ist Teil einer RequestGroup - z.B. Kombinationstherapie. In dem Fall muss hier option stehen."
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
            "valueString" : "Since the MTB only provides recommendations this will typically be proposal. Unless this therapy recommendation is part of a RequestGroup - e.g. combination therapy. In that case option must be used."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this.resolve()"
        }],
        "description" : "Slice für stützende Angaben zur Systemischen Therapie auf Basis des referenzierten Ressourcentyps",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationRequest.reasonReference:StuetzendeMolekulareAlteration",
      "path" : "MedicationRequest.reasonReference",
      "sliceName" : "StuetzendeMolekulareAlteration",
      "short" : "Stützende molekulare Alteration(en)",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Stützende molekulare Alterationen"
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
            "valueString" : "Supporting Molecular Alterations"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf entsprechendes Feld in NGS Bericht und/oder IHC (Verweis auf KDS Molekular-Pathologischer Befundbericht)",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf entsprechendes Feld in NGS Bericht und/oder IHC - Verweis auf KDS Molekular-Pathologischer Befundbericht"
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
            "valueString" : "Reference to corresponding field in NGS report and/or IHC - reference to KDS Molecular Pathology Report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mustSupport" : true
    }]
  }
}

```
