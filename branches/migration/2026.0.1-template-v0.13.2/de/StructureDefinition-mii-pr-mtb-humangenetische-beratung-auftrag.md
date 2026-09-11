# MII PR MTB Human-genetische Beratung Auftrag - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Human-genetische Beratung Auftrag**

## Ressourcenprofil: MII PR MTB Human-genetische Beratung Auftrag 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Humangenetische_Beratung_Auftrag |

 
Auftrag zur (erneuten) Human-genetischen Beratung 

-------

### Inhalt

Dieses Profil beschreibt eine Empfehlung zur Human-genetischen Beratung.

Dies kann beispielsweise bei der Befundung von Keimbahn-Varianten bei nahen Verwandten sowie zur Abklärung eines erhöhten Risikos für bestimmte Krebsentitäten erfolgen. Dies kann auch auf Basis einer Zufallsbefundung einer umfangreicheren Sequenzierung (z.B. Whole-Exom) erfolgen, falls der/die Patient*in der Information über eine Benachrichtigung bei Zufallsbefunden zugestimmt hat.

### Statusangabe

Die Statusangabe eines Auftrags zur Human-genetischen Beratung bezieht sich auf dessen Umsetzungsstand. Es wird empfohlen folgende Statusangaben für die beschriebenen Situationen zu verwenden:

| | |
| :--- | :--- |
| `draft` | Nicht umgesetzt |
| `active` | In Umsetzung |
| `completed` | Abgeschlossen oder abgebrochen (Patient verstorben) |

**Hinweis: Die Statusangabe sollte mit der des beschlossenen Therapieplans (siehe [Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)) semantisch abgestimmt sein.**

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/ServiceRequest?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/ServiceRequest?code=http://snomed.info/sct|788339009`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#token)
1. Der Suchparameter "reason-code" MUSS unterstützt werden:Beispiele:`GET [base]/ServiceRequest?reason-code=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-auftrag-begruendung|other`Anwendungshinweise: Weitere Informationen zur Suche nach "reason-code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#token)
1. Der Suchparameter "specimen" MUSS unterstützt werden:Beispiele:`GET [base]/ServiceRequest?specimen=Specimen/example`Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference)

**Beispiele**

Beispiel: Auftrag zur Human-genetischen Beratung für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.md))

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)
* Examples for this Profile: [ServiceRequest/mii-exa-mtb-kim-humangenetische-beratung-aszites](ServiceRequest-mii-exa-mtb-kim-humangenetische-beratung-aszites.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 5 elements
 Fixed: 2 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)
* [MII PR Patho Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen)
* [MII PR Biobank Specimen Bioprobe Core (https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 5 elements
 Fixed: 2 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)
* [MII PR Patho Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen)
* [MII PR Biobank Specimen Bioprobe Core (https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.csv), [Excel](../StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-humangenetische-beratung-auftrag",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Humangenetische_Beratung_Auftrag",
  "title" : "MII PR MTB Human-genetische Beratung Auftrag",
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
  "description" : "Auftrag zur (erneuten) Human-genetischen Beratung",
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.meta",
      "path" : "ServiceRequest.meta",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.meta.profile",
      "path" : "ServiceRequest.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
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
      "definition" : "Status der Umsetzung der Empfehlung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status der Umsetzung der Empfehlung"
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
            "valueString" : "Status of the recommendation implementation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "\n    draft: Nicht umgesetzt,\n    active: In Umsetzung,\n    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "fixedCode" : "proposal"
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "Empfehlung zur Humangenetischen Beratung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Empfehlung zur Humangenetischen Beratung"
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
      "definition" : "Empfehlung zur Humangenetischen Beratung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Empfehlung zur Humangenetischen Beratung"
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
      "min" : 1,
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "788339009",
          "display" : "Genetic consultation (procedure)"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-auftrag-begruendung"
      }
    },
    {
      "id" : "ServiceRequest.specimen",
      "path" : "ServiceRequest.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore",
        "http://hl7.org/fhir/StructureDefinition/Specimen"]
      }],
      "mustSupport" : true
    }]
  }
}

```
