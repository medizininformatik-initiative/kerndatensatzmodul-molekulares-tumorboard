# MII PR MTB Clinical Impresssion - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Clinical Impresssion**

## Ressourcenprofil: MII PR MTB Clinical Impresssion 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Follow_Up_ClinicalImpression |

 
Follow-Up als Prozess des Einholens von Informationen über durchgeführte Therapien & Kostenuebernahmen 

-------

### Inhalt

Dieses Profil beschreibt Informationen über den administrativen Vorgang "Follow-Up" und den dabei eingeholten Informationen. Im Zuge dieses Follow-Up Prozesses werden die durchgeführten Therapien (MII_PR_MTB_Systemische_Therapie) inkl nachfolgender Therapie-Response und ggfs. deren Kostenübernahmen (MII_PR_MTB_Antrag_Kostenuebernahme & MII_PR_MTB_Antwort_Kostenuebernahme) dokumentiert. Zusätzlich ist hier der Status des Therapieplans `ClinicalImpression.investigation` und eine Begründung bei Nicht-Durchführung `ClinicalImpression.statusReason` enthalten.

### Verknüpfungen zu anderen Ressourcen

Die Follow-up ClinicalImpression verweisen alle unter ClinicalImpression.previous auf die Behandlungsepisode

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul MTB relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?status=completed`Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "statusReason" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?statusReson=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-systemische-therapie-status-grund|payment-refused`Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.statusReason" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "investigation" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?investigation=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-follow-up-status|ongoing`Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.investigation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "supporting-info" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?supporting-info=MII_PR_MTB_Systemische_Therapie/example`Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.supportingInfo" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

**Beispiele**

-------

**Usages:**

* Examples for this Profile: [ClinicalImpression/MII-EXA-MTB-Follow-Up-ClinicalImpression-1](ClinicalImpression-MII-EXA-MTB-Follow-Up-ClinicalImpression-1.md) and [ClinicalImpression/MII-EXA-MTB-Follow-Up-ClinicalImpression-Beispiel-1](ClinicalImpression-MII-EXA-MTB-Follow-Up-ClinicalImpression-Beispiel-1.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html) 

** Summary **

Mandatory: 2 elements(2 nested mandatory elements)
 Must-Support: 13 elements

**Structures**

This structure refers to these other structures:

* [MII PR MTB Behandlungsepisode (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode)](StructureDefinition-mii-pr-mtb-behandlungsepisode.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ClinicalImpression.supportingInfo

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html) 

** Summary **

Mandatory: 2 elements(2 nested mandatory elements)
 Must-Support: 13 elements

**Structures**

This structure refers to these other structures:

* [MII PR MTB Behandlungsepisode (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode)](StructureDefinition-mii-pr-mtb-behandlungsepisode.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ClinicalImpression.supportingInfo

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.csv), [Excel](../StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-follow-up-clinicalimpression",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Follow_Up_ClinicalImpression",
  "title" : "MII PR MTB Clinical Impresssion",
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
  "description" : "Follow-Up als Prozess des Einholens von Informationen über durchgeführte Therapien & Kostenuebernahmen",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClinicalImpression",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClinicalImpression",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClinicalImpression",
      "path" : "ClinicalImpression"
    },
    {
      "id" : "ClinicalImpression.meta",
      "path" : "ClinicalImpression.meta",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.meta.profile",
      "path" : "ClinicalImpression.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.status",
      "path" : "ClinicalImpression.status",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.statusReason",
      "path" : "ClinicalImpression.statusReason",
      "short" : "Grund Nicht-Umsetzung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund Nicht-Umsetzung"
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
            "valueString" : "Reason for Non-Implementation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Grund für die Nicht-Umsetzung des gesamten Therapieplans",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund fuer die Nicht-Umsetzung des gesamten Therapieplans"
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
            "valueString" : "Reason for non-implementation of the entire therapy plan"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.statusReason.coding",
      "path" : "ClinicalImpression.statusReason.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ClinicalImpression.statusReason.coding.system",
      "path" : "ClinicalImpression.statusReason.coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-systemische-therapie-status-grund"
    },
    {
      "id" : "ClinicalImpression.statusReason.coding.code",
      "path" : "ClinicalImpression.statusReason.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-follow-up-grund-nicht-umsetzung"
      }
    },
    {
      "id" : "ClinicalImpression.code",
      "path" : "ClinicalImpression.code",
      "short" : "Follow-Up",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Follow-Up"
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
            "valueString" : "Follow-Up"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Follow-Up als Prozess des Einholens von Informationen über durchgeführte Therapien & Kostenuebernahmen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Follow-Up als Prozess des Einholens von Informationen ueber durchgefuehrte Therapien & Kostenuebernahmen"
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
            "valueString" : "Follow-up as a process of gathering information about performed therapies and cost coverage"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.code.coding",
      "path" : "ClinicalImpression.code.coding",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "390906007",
        "display" : "Follow-up encounter (procedure)"
      }
    },
    {
      "id" : "ClinicalImpression.subject",
      "path" : "ClinicalImpression.subject",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.effective[x]",
      "path" : "ClinicalImpression.effective[x]",
      "short" : "Erfassungsdatum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Erfassungsdatum"
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
            "valueString" : "Recording Date"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Erfassungsdatum Durchführung Follow-Up",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Erfassungsdatum Durchfuehrung Follow-Up"
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
            "valueString" : "Recording date of follow-up execution"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.previous",
      "path" : "ClinicalImpression.previous",
      "short" : "MTB-Behandlungsepisode",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "MTB-Behandlungsepisode"
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
            "valueString" : "MTB Treatment Episode"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "MTB-Behandlungsepisode, auf die sich das Follow-Up bezieht",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "MTB-Behandlungsepisode auf die sich das Follow-Up bezieht"
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
            "valueString" : "MTB treatment episode to which the follow-up refers"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation",
      "path" : "ClinicalImpression.investigation",
      "short" : "Status Follow-Up",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status Follow-Up"
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
            "valueString" : "Follow-Up Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status des Therapieplans im Hinblick auf das Follow-Up",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status des Therapieplans im Hinblick auf das Follow-Up"
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
            "valueString" : "Status of the therapy plan with regard to follow-up"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation.code.coding.system",
      "path" : "ClinicalImpression.investigation.code.coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-follow-up-status"
    },
    {
      "id" : "ClinicalImpression.investigation.code.coding.code",
      "path" : "ClinicalImpression.investigation.code.coding.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-follow-up-status"
      }
    },
    {
      "id" : "ClinicalImpression.supportingInfo",
      "path" : "ClinicalImpression.supportingInfo",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this.resolve()"
        }],
        "description" : "Slice für die durch das Follow-Up gewonnenen Informationen",
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.supportingInfo:UmgesetzteTherapien",
      "path" : "ClinicalImpression.supportingInfo",
      "sliceName" : "UmgesetzteTherapien",
      "short" : "Umgesetzte Therapien",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Umgesetzte Therapien"
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
            "valueString" : "Implemented Therapies"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Umgesetzte Therapien mit oder auch ohne Bezug auf die MTB-Empfehlungen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Umgesetzte Therapien mit oder auch ohne Bezug auf die MTB-Empfehlungen"
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
            "valueString" : "Implemented therapies with or without reference to MTB recommendations"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Procedure"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.supportingInfo:AntraegeKostenuebernahme",
      "path" : "ClinicalImpression.supportingInfo",
      "sliceName" : "AntraegeKostenuebernahme",
      "short" : "Anträge Kostenübernahme",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Antraege Kostenuebernahme"
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
            "valueString" : "Cost Coverage Applications"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Anträge Kostenübernahme für die empfohlenen Therapien",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Antraege Kostenuebernahme fuer die empfohlenen Therapien"
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
            "valueString" : "Cost coverage applications for the recommended therapies"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Claim"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.supportingInfo:AntwortenKostenuebernahme",
      "path" : "ClinicalImpression.supportingInfo",
      "sliceName" : "AntwortenKostenuebernahme",
      "short" : "Antworten Kostenübernahme",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Antworten Kostenuebernahme"
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
            "valueString" : "Cost Coverage Responses"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Antworten der Versicherungen auf die Anträge zur Kostenübernahme",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Antworten der Versicherungen auf die Antraege zur Kostenuebernahme"
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
            "valueString" : "Responses from insurance companies to cost coverage applications"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/ClaimResponse"]
      }]
    }]
  }
}

```
