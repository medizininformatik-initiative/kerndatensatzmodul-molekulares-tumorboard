# MII PR MTB Systemische Therapie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Systemische Therapie**

## Ressourcenprofil: MII PR MTB Systemische Therapie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie | *Version*:2026.0.1 |
| Active Stand: 2026-09-14 | *Maschinenlesbarer Name*:MII_PR_MTB_Systemische_Therapie |

 
Systemische Therapie im Follow-Up nach Abschluss des MTB 

-------

### Inhalt

Dieses Profil beschreibt eine Systemische Therapie, die im Prozess des Follow-Ups (Follow-Up ClinicalImpression) erfasst wurde. Diese tatsächlich umgesetzte Therapie ist mit den Empfehlungen des Molekulaten Tumorboards abzugleichen, sodass man erkennen kann, ob die empfohlenen Therapien umgesetzt wurden. Wie die Systemischen Therapien aus dem Onkologiemodul bildet die Prozedur-Ressource den Überbau für einzelne Medikamentengaben, die in einzelnen MedicationStatements

### Verknüpfungen zu anderen Ressourcen

Medikamentengaben sind vorzugsweise mit Referenzen auf das Profil MII_PR_MTB_Systemische_Therapie_Medication_Statement darzustellen. Von einer Onkologie-Systemischen Therapie auf Basis des oBDS ist er insofern zu unterscheiden, dass sich diese Procedure-Ressource über `Procedure.basedOn`auf einen MTB-Therapieplan und über `Procedure.extension::causedBy` auf eine spezifische Therapieempfehlung bezieht.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul MTB relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "based-on" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?based-on=MII_PR_MTB_Therapieplan/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.basedOn" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "part-of" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?part-of=Observation/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.partOf" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?status=completed`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "status-reason" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?status-reason=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-systemische-therapie-status-grund|payment-refused`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.statusReason" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "category" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?category=http://snomed.info/sct|103693007`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "date" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?date=2022-01-01`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.performed" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?subject=Encounter/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "reason-reference" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?subject=Condition/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.reasonReference" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "bodySite" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?bodySite=http://snomed.info/sct|80891009`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.bodySite" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "outcome" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?outcome=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus|R1`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.outcome" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "note" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?note=diesdas`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.outcome" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

**Beispiele**

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Response Befund](StructureDefinition-mii-pr-mtb-response-befund.md)
* Examples for this Profile: [Procedure/MII-EXA-MTB-Systemische-Therapie-1](Procedure-MII-EXA-MTB-Systemische-Therapie-1.md) and [Procedure/MII-EXA-MTB-Systemtherapie-Beispiel-1](Procedure-MII-EXA-MTB-Systemtherapie-Beispiel-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-systemische-therapie.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Systemische_Therapie](https://medizininformatik-initiative.github.io/kerndatensatzmodul-onkologie/2027.0.0-ballot/StructureDefinition-mii-pr-onko-systemische-therapie.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Systemische_Therapie](https://medizininformatik-initiative.github.io/kerndatensatzmodul-onkologie/2027.0.0-ballot/StructureDefinition-mii-pr-onko-systemische-therapie.html) 

** Summary **

Mandatory: 0 element(2 nested mandatory elements)
 Must-Support: 4 elements

**Structures**

This structure refers to these other structures:

* [MII PR Medikation MedicationRequest (https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)](https://medizininformatik-initiative.github.io/kerndatensatzmodul-medikation/2027.0.0-ballot.rc5/StructureDefinition-mii-pr-medikation-medication-request.html)
* [MII PR MTB Therapieempfehlung Systemische Therapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)](StructureDefinition-mii-pr-mtb-therapieempfehlung.md)
* [MII PR MTB Therapieplan (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan)](StructureDefinition-mii-pr-mtb-therapieplan.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/StructureDefinition/procedure-causedBy](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-procedure-causedBy.html)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Onko_Systemische_Therapie](https://medizininformatik-initiative.github.io/kerndatensatzmodul-onkologie/2027.0.0-ballot/StructureDefinition-mii-pr-onko-systemische-therapie.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Systemische_Therapie](https://medizininformatik-initiative.github.io/kerndatensatzmodul-onkologie/2027.0.0-ballot/StructureDefinition-mii-pr-onko-systemische-therapie.html) 

** Summary **

Mandatory: 0 element(2 nested mandatory elements)
 Must-Support: 4 elements

**Structures**

This structure refers to these other structures:

* [MII PR Medikation MedicationRequest (https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest)](https://medizininformatik-initiative.github.io/kerndatensatzmodul-medikation/2027.0.0-ballot.rc5/StructureDefinition-mii-pr-medikation-medication-request.html)
* [MII PR MTB Therapieempfehlung Systemische Therapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung)](StructureDefinition-mii-pr-mtb-therapieempfehlung.md)
* [MII PR MTB Therapieplan (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan)](StructureDefinition-mii-pr-mtb-therapieplan.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/StructureDefinition/procedure-causedBy](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-procedure-causedBy.html)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-systemische-therapie.csv), [Excel](../StructureDefinition-mii-pr-mtb-systemische-therapie.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-systemische-therapie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-systemische-therapie",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "version" : "3.0.0",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C3262"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-09-15"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Systemische_Therapie",
  "title" : "MII PR MTB Systemische Therapie",
  "status" : "active",
  "date" : "2026-09-14T20:43:02+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Systemische Therapie im Follow-Up nach Abschluss des MTB",
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
  "type" : "Procedure",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.extension:causedBy",
      "path" : "Procedure.extension",
      "sliceName" : "causedBy",
      "short" : "Therapieempfehlung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapieempfehlung"
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
            "valueString" : "Therapy recommendation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf die MTB Therapieempfehlung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf die MTB Therapieempfehlung"
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
            "valueString" : "Reference to the MTB therapy recommendation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/procedure-causedBy"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:causedBy.value[x]",
      "path" : "Procedure.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest"]
      }]
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "short" : "MTB Therapieplan",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "MTB Therapieplan"
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
            "valueString" : "MTB therapy plan"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Therapieplan gemäß Beschluss des Molekularen Tumorboards",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapieplan gemäß Beschluss des Molekularen Tumorboards"
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
            "valueString" : "Therapy plan according to the molecular tumor board decision"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "max" : "1"
    },
    {
      "id" : "Procedure.basedOn:tumorkonferenz",
      "path" : "Procedure.basedOn",
      "sliceName" : "tumorkonferenz",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan"]
      }]
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "not-done | in-progress | stopped | completed",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "nicht durchgeführt | laufend | abgebrochen | abgeschlossen"
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
            "valueString" : "not-done | in-progress | stopped | completed"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status der Systemischen Therapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status der Systemischen Therapie"
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
            "valueString" : "Status of the systemic therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "\n        not-done: Die Therapie wurde nie angefangen und wird auch nicht mehr angefangen,\n        in-progress: Die Therapie hat noch nicht angefangen oder läuft bereits,\n        stopped: Die Therapie wurde bereits angefangen aber vorzeitig abgebrochen,\n        completed: Die Therapie wurde plangemäß abgeschlossen",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-systemische-therapie-status"
      }
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "short" : "Status Grund",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status Grund"
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
            "valueString" : "Status reason"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Grund des Status der Therapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund des Status der Therapie"
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
            "valueString" : "Reason for the therapy status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason.coding",
      "path" : "Procedure.statusReason.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-therapiestatusgrund"
      }
    },
    {
      "id" : "Procedure.statusReason.coding.system",
      "path" : "Procedure.statusReason.coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund"
    },
    {
      "id" : "Procedure.statusReason.coding.code",
      "path" : "Procedure.statusReason.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.note",
      "path" : "Procedure.note",
      "short" : "Bemerkungen",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Bemerkungen"
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
            "valueString" : "Remarks"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "max" : "1"
    }]
  }
}

```
