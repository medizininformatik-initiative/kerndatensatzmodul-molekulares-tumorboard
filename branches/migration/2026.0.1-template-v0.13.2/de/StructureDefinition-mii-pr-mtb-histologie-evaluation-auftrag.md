# MII PR MTB Histologie-Evaluation Auftrag - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Histologie-Evaluation Auftrag**

## Ressourcenprofil: MII PR MTB Histologie-Evaluation Auftrag 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Histologie_Evaluation_Auftrag |

 
Auftrag zur (erneuten) Histologie-Evaluation 

-------

### Inhalt

Dieses Profil beschreibt eine Empfehlung zur histologischen Reevaluation.

Dies kann u.a. erfolgen, wenn die ursprüngliche Befundung nicht aussagekräftig war oder aufgrund bestimmter Marker eine spezifisches Nachweisverfahren für Proteine (z.B. per IHC), Nukleinsäuren (z.B. per ISH) oder anderer Spezialfärbungen erforderlich werden.

### Statusangabe

Die Statusangabe eines Auftrags zur Histologie-Evaluation bezieht sich auf dessen Umsetzungsstand. Es wird empfohlen folgende Statusangaben für die beschriebenen Situationen zu verwenden:

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
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/ServiceRequest?code=http://snomed.info/sct|183825009`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token)
1. Der Suchparameter "reason-reference" MUSS unterstützt werden:Beispiele:`GET [base]/ServiceRequest?reason-reference=Observation/example`Anwendungshinweise: Weitere Informationen zur Suche nach "reason-reference" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference)
1. Der Suchparameter "specimen" MUSS unterstützt werden:Beispiele:`GET [base]/ServiceRequest?specimen=Specimen/example`Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference)

**Beispiele**

Beispiel: Auftrag zur histologischen Evaluation für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.md))

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)
* Examples for this Profile: [ServiceRequest/mii-exa-mtb-kim-histologie-evaluation-aszites](ServiceRequest-mii-exa-mtb-kim-histologie-evaluation-aszites.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.json)

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

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 6 elements
 Fixed: 2 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Befund (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund)
* [MII PR MTB Tumorzellgehalt (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt)](StructureDefinition-mii-pr-mtb-tumorzellgehalt.md)
* [MII PR Onkologie Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)
* [MII PR Patho Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen)
* [MII PR Biobank Specimen Bioprobe Core (https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ServiceRequest.reasonReference

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 6 elements
 Fixed: 2 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Befund (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund)
* [MII PR MTB Tumorzellgehalt (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt)](StructureDefinition-mii-pr-mtb-tumorzellgehalt.md)
* [MII PR Onkologie Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)
* [MII PR Patho Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen)
* [MII PR Biobank Specimen Bioprobe Core (https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ServiceRequest.reasonReference

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.csv), [Excel](../StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-histologie-evaluation-auftrag",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Histologie_Evaluation_Auftrag",
  "title" : "MII PR MTB Histologie-Evaluation Auftrag",
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
  "description" : "Auftrag zur (erneuten) Histologie-Evaluation",
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
      "short" : "Empfehlung zur histologischen (Re-)Evaluation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Empfehlung zur histologischen Re-Evaluation"
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
            "valueString" : "Recommendation for histological re-evaluation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Empfehlung zur histologischen (Re-)Evaluation",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Empfehlung zur histologischen Re-Evaluation"
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
            "valueString" : "Recommendation for histological re-evaluation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "183825009",
          "display" : "Refer for histology (procedure)"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this.resolve()"
        }],
        "description" : "Slice für referenzierten Histologiebefund oder bestimmten Tumorzellgehalt",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.reasonReference:Histologie",
      "path" : "ServiceRequest.reasonReference",
      "sliceName" : "Histologie",
      "short" : "Histologiebefund",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Histologiebefund"
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
            "valueString" : "Histology Report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf Histologiebefund",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf Histologiebefund"
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
            "valueString" : "Reference to histology report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonReference:Tumorzellgehalt",
      "path" : "ServiceRequest.reasonReference",
      "sliceName" : "Tumorzellgehalt",
      "short" : "Tumorzellgehalt",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumorzellgehalt"
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
            "valueString" : "Tumor Cell Content"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf bestimmten Tumorzellgehalt",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf bestimmten Tumorzellgehalt"
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
            "valueString" : "Reference to determined tumor cell content"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt"]
      }],
      "mustSupport" : true
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
