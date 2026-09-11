# MII PR MTB Antrag Kostenuebernahme - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Antrag Kostenuebernahme**

## Ressourcenprofil: MII PR MTB Antrag Kostenuebernahme 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Antrag_Kostenuebernahme |

 
Antrag Kostenübernahme 

-------

### Inhalt

Dieses Profil beschreibt die Antwort auf den Antrag zur Kostenuebernahme (`MII_PR_Antrag_Kostenuebernahme`). Sie basieren auf dem Financial-Ressource ClaimResponse. CAVE: Der Lifecycle-Status einer Financial-Ressource entspricht nicht den bekannten Workflows. Die Financial-Ressourcen unterhalten ein eigenes ValueSet mit eigenen Semantischen Bedeutungen (siehe https://hl7.org/fhir/R4/valueset-fm-status.html). Eine ClaimResponse sollte daher im Normalfall immer `active` sein, solange sie nicht zurückgezogen wurde.

### Verknüpfungen zu anderen Ressourcen

Das Element "prescription" verweist auf die MedicationRequest, im besten Fall also auf das Profil MII_PR_Medikation_MedicationRequest.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Claim?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Claim?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "claim-type" MUSS unterstützt werden:Beispiele:`GET [base]/Claim?claim-type=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antrag-kostenuebernahme`Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.type" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "use" MUSS unterstützt werden:Beispiele:`GET [base]/Claim?use=claim`Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.use" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "patient" MUSS unterstützt werden:Beispiele:`GET [base]/Claim?patient=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.patient" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "created" MUSS unterstützt werden:Beispiele:`GET [base]/Claim?created=eq2022-01-01`Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.created" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "provider" MUSS unterstützt werden:Beispiele:`GET [base]/Claim?provider=Practicioner/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.provider" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "claim-related" MUSS unterstützt werden:Beispiele:`GET [base]/Claim?claim-related=Claim/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.related.claim" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "claim-related-relationship" MUSS unterstützt werden:Beispiele:`GET [base]/Claim?claim-related-relationship=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antrag-kostenuebernahme-antragsstadium#accepted`Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.related.claim" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "claim-related-relationship" MUSS unterstützt werden:Beispiele:`GET [base]/Claim?claim-related-relationship=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antrag-kostenuebernahme-antragsstadium#accepted`Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.related.relationship.coding" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Beispiele**

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Antrag Kostenuebernahme](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md) and [MII PR MTB Anwort Kostenuebernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.md)
* Examples for this Profile: [Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-1](Claim-MII-EXA-MTB-Antrag-Kostenuebernahme-1.md) and [Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1](Claim-MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Claim](http://hl7.org/fhir/R4/claim.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Claim](http://hl7.org/fhir/R4/claim.html) 

** Summary **

Mandatory: 3 elements(2 nested mandatory elements)
 Must-Support: 24 elements
 Fixed: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR MTB Antrag Kostenuebernahme (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme)](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Claim.careTeam

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Claim](http://hl7.org/fhir/R4/claim.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Claim](http://hl7.org/fhir/R4/claim.html) 

** Summary **

Mandatory: 3 elements(2 nested mandatory elements)
 Must-Support: 24 elements
 Fixed: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR MTB Antrag Kostenuebernahme (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme)](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Claim.careTeam

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.csv), [Excel](../StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-antrag-kostenuebernahme",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Antrag_Kostenuebernahme",
  "title" : "MII PR MTB Antrag Kostenuebernahme",
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
  "description" : "Antrag Kostenübernahme",
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
  "type" : "Claim",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Claim",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Claim",
      "path" : "Claim"
    },
    {
      "id" : "Claim.meta",
      "path" : "Claim.meta",
      "mustSupport" : true
    },
    {
      "id" : "Claim.meta.profile",
      "path" : "Claim.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Claim.status",
      "path" : "Claim.status",
      "short" : "Antrag",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Antrag"
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
            "valueString" : "Application"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status der FHIR-Ressource - statisch auf #active gesetzt",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status der FHIR-Ressource - statisch auf #active gesetzt"
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
            "valueString" : "Status of the FHIR resource - statically set to #active"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "fixedCode" : "active",
      "mustSupport" : true
    },
    {
      "id" : "Claim.type",
      "path" : "Claim.type",
      "short" : "Kategorie des Antragstellers",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kategorie des Antragstellers"
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
            "valueString" : "Applicant Category"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Kategorie des Antragstellers - z.B. stationär, ambulant, Apotheke",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kategorie des Antragstellers - z.B. stationaer - ambulant - Apotheke"
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
            "valueString" : "Category of the applicant - e.g. inpatient - outpatient - pharmacy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antrag-kostenuebernahme"
      }
    },
    {
      "id" : "Claim.use",
      "path" : "Claim.use",
      "short" : "Art des Kostenerstattungsantrags (claim, predetermination, preauthorization)",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Art des Kostenerstattungsantrags - claim oder predetermination oder preauthorization"
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
            "valueString" : "Type of cost reimbursement application - claim or predetermination or preauthorization"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "folgt den Definitionen wie im amerikanischen Gesundsheitswesen gebräuchlich. claim: Erstattungsantrag nach erfolgter Therapie; predetermination: unverbindliche Anfrage, insb. zu Anteilen der Kostenübernahme;  preauthorization: Anfrage nach möglicher Erstattung für zukünftige Therapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "folgt den Definitionen wie im amerikanischen Gesundsheitswesen gebraeuchlich. claim: Erstattungsantrag nach erfolgter Therapie; predetermination: unverbindliche Anfrage insb. zu Anteilen der Kostenuebernahme; preauthorization: Anfrage nach moeglicher Erstattung fuer zukuenftige Therapie"
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
            "valueString" : "Follows definitions common in the American healthcare system. claim: reimbursement request after therapy; predetermination: non-binding inquiry esp. regarding coverage portions; preauthorization: inquiry about possible reimbursement for future therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Claim.patient",
      "path" : "Claim.patient",
      "mustSupport" : true
    },
    {
      "id" : "Claim.created",
      "path" : "Claim.created",
      "short" : "Antragsdatum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Antragsdatum"
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
            "valueString" : "Application Date"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum der Antragstellung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Antragstellung"
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
            "valueString" : "Date of the application"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Claim.provider",
      "path" : "Claim.provider",
      "short" : "Antragstellende Einrichtung / Klinik / Person",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Antragstellende Einrichtung / Klinik / Person"
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
            "valueString" : "Applicant Institution / Clinic / Person"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Einrichtung, die den Antrag stellt. In der Regel die Klinik, die den Patienten behandelt",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einrichtung die den Antrag stellt. In der Regel die Klinik die den Patienten behandelt"
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
            "valueString" : "Institution submitting the application. Usually the clinic treating the patient"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Claim.priority",
      "path" : "Claim.priority",
      "short" : "Priorität des Antrags",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Prioritaet des Antrags"
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
            "valueString" : "Application Priority"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Priorität des Antrags. Pflichtfeld in FHIR, aber nicht in der MII-Logik relevant",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Prioritaet des Antrags. Pflichtfeld in FHIR aber nicht in der MII-Logik relevant"
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
            "valueString" : "Priority of the application. Required field in FHIR but not relevant in MII logic"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
          "code" : "normal"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Claim.related",
      "path" : "Claim.related",
      "mustSupport" : true
    },
    {
      "id" : "Claim.related.claim",
      "path" : "Claim.related.claim",
      "short" : "bei Folgeantrag/Widerspruch: Verweis auf ursprünglichen Erstantrag",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "bei Folgeantrag/Widerspruch: Verweis auf urspruenglichen Erstantrag"
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
            "valueString" : "for follow-up application/objection: Reference to original initial application"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf ursprünglichen Erstantrag, der zu diesem Folgeantrag oder Widerspruch führt",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf urspruenglichen Erstantrag der zu diesem Folgeantrag oder Widerspruch fuehrt"
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
            "valueString" : "Reference to original initial application that led to this follow-up application or objection"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.related.relationship",
      "path" : "Claim.related.relationship",
      "mustSupport" : true
    },
    {
      "id" : "Claim.related.relationship.coding",
      "path" : "Claim.related.relationship.coding",
      "short" : "Antragsstadium",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Antragsstadium"
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
            "valueString" : "Application Stage"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Stadium des Antrags auf Kostenuebernahme - Erstantrag, Widerspruch, Folgeantrag, Unbekannt. Bei Widerspruch oder Folgeantrag ist der Verweis auf den Erstantrag erforderlich",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Stadium des Antrags auf Kostenuebernahme - Erstantrag oder Widerspruch oder Folgeantrag oder Unbekannt. Bei Widerspruch oder Folgeantrag ist der Verweis auf den Erstantrag erforderlich"
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
            "valueString" : "Stage of the cost coverage application - initial application or objection or follow-up application or unknown. For objection or follow-up application reference to the initial application is required"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Claim.related.relationship.coding.system",
      "path" : "Claim.related.relationship.coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antrag-kostenuebernahme-antragsstadium"
    },
    {
      "id" : "Claim.related.relationship.coding.code",
      "path" : "Claim.related.relationship.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Claim.prescription",
      "path" : "Claim.prescription",
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
            "valueString" : "Therapy Recommendation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf die Therapieempfehlung des MTB, die zu diesem Antrag führt",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf die Therapieempfehlung des MTB die zu diesem Antrag fuehrt"
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
            "valueString" : "Reference to the MTB therapy recommendation that led to this application"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/MedicationRequest"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.careTeam",
      "path" : "Claim.careTeam",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "sequence"
        }],
        "description" : "Slice für Antragsstellung ZPM",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Claim.careTeam:ZPMBeteiligung",
      "path" : "Claim.careTeam",
      "sliceName" : "ZPMBeteiligung",
      "short" : "Antragstellung ZPM",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Antragstellung ZPM"
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
            "valueString" : "ZPM Application"
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
            "valueString" : "Reference to corresponding field in NGS report and/or IHC - Reference to KDS Molecular Pathology Report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.careTeam:ZPMBeteiligung.sequence",
      "path" : "Claim.careTeam.sequence",
      "short" : "interne Variable der beteiligten Einrichtung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "interne Variable der beteiligten Einrichtung"
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
            "valueString" : "internal variable of the participating institution"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "patternPositiveInt" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Claim.careTeam:ZPMBeteiligung.provider",
      "path" : "Claim.careTeam.provider",
      "short" : "Verweis auf ZPM",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf ZPM"
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
            "valueString" : "Reference to ZPM"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf Antragstellendes ZPM (z.B. ZPM ID)",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf Antragstellendes ZPM z.B. ZPM ID"
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
            "valueString" : "Reference to the applicant ZPM e.g. ZPM ID"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.careTeam:ZPMBeteiligung.responsible",
      "path" : "Claim.careTeam.responsible",
      "short" : "Beteiliung ZPM - Ja/Nein",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Beteiligung ZPM - Ja/Nein"
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
            "valueString" : "ZPM Participation - Yes/No"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Beteiliung des ZPM - Ja/Nein",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Beteiligung des ZPM - Ja/Nein"
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
            "valueString" : "Participation of the ZPM - Yes/No"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Claim.insurance",
      "path" : "Claim.insurance",
      "mustSupport" : true
    },
    {
      "id" : "Claim.insurance.sequence",
      "path" : "Claim.insurance.sequence",
      "short" : "Priorität der Versicherung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Prioritaet der Versicherung"
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
            "valueString" : "Insurance Priority"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Priorität der Versicherung. In der Regel 1 für die Hauptkrankenversicherung, und fortlaufend für weitere freiwilligge Zusatzversicherungen. Wird vsl. selten relevant sein.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Prioritaet der Versicherung. In der Regel 1 fuer die Hauptkrankenversicherung und fortlaufend fuer weitere freiwillige Zusatzversicherungen. Wird vsl. selten relevant sein."
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
            "valueString" : "Insurance priority. Usually 1 for main health insurance and sequential for additional voluntary supplementary insurances. Will rarely be relevant."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Claim.insurance.focal",
      "path" : "Claim.insurance.focal",
      "short" : "Versicherung relevant für diesen Antrag",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Versicherung relevant fuer diesen Antrag"
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
            "valueString" : "Insurance relevant for this application"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "patternBoolean" : true,
      "mustSupport" : true
    },
    {
      "id" : "Claim.insurance.coverage",
      "path" : "Claim.insurance.coverage",
      "short" : "Versicherung relevant für diesen Antrag",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Versicherung relevant fuer diesen Antrag"
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
            "valueString" : "Insurance relevant for this application"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Claim.insurance.claimResponse",
      "path" : "Claim.insurance.claimResponse",
      "mustSupport" : true
    }]
  }
}

```
