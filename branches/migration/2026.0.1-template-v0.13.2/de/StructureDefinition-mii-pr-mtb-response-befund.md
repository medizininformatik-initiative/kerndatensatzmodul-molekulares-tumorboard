# MII PR MTB Response Befund - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Response Befund**

## Ressourcenprofil: MII PR MTB Response Befund 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Response_Befund |

 
Response Beurteilung nach DNPM 

-------

### Inhalt

Dieses Profil gehört zum Profil Systemische Therapie und bezeichnet den Befund zur Response auf die jeweilige Systemische Therapie 
 Deshalb wird auch mithilfe des Elements `Observation.partOf` auf die Systemische Therapie (bzw. Procedure) verwiesen. Zusätzlich kann über `Observation.method` kodiert werden, falls eine strukturierte Erfassung nach RECIST oder RANO vorgenommen wurde.

**Fragestellungen** 
 Das Profil erbt aktuell von MII_PR_Onko_Verlauf. Hier ist vorgesehen, dass neben der Gesamtbewertung `Observation.valueCodeableConcept` mit `Observation.component` auch mindestens eine einzelne Bewertungen von Tumor, LK oder FM vorhanden sein muss. Das ist in DNPMv2 nicht vorgesehen.

Außerdem ist für die Gesamtbewertung in DNPMv2 ein anderes VS (`https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung`)vorgesehen als bei Onko.

### Verknüpfungen zu anderen Ressourcen

Inhaltlich gibt es Überschneidung zum Verlauf-Profil des Onkologiemoduls.
 Dieses befüllt sich aber direkt aus den Krebsregisterdaten, wobei auch die Dokumentationskriterien der Tumordokumentare angewandt werden. Dieses Profil soll daher mit Fokus einen Report der Tumorresponse nach RECIST darstellen.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "identifier" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?identifier=5466`Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "part-of" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?part-of=MII_PR_MTB_Systemische_Therapie/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.partOf" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?status=completed`Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?code=http://fhir.de/CodeSystem/bfarm/ops|5-37`Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "focus" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?focus=MII_PR_Onko_Diagnose_Primaertumor/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.focus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?subject=Encounter/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "method" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?method=Encounter/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.method" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "combo-value-concept" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?combo-value-concept=ttps://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung|MR`Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.valueCodeableConcept" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "component-code-value-concept" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?component-code-value-concept=http://loinc.org|12345-6$http://fhir.de/CodeSystem/sct|12345678`

Anwendungshinweise: Weitere Informationen zur Suche nach "components" finden sich in der [FHIR-Basisspezifikation - Abschnitt "composite"](http://hl7.org/fhir/R4/search.html#composite).

**Beispiele**

-------

**Usages:**

* Examples for this Profile: [Observation/MII-EXA-MTB-Response-Befund-1](Observation-MII-EXA-MTB-Response-Befund-1.md), [Observation/MII-EXA-MTB-Response-Befund-2](Observation-MII-EXA-MTB-Response-Befund-2.md) and [Observation/MII-EXA-MTB-Response-Befund-Beispiel-1](Observation-MII-EXA-MTB-Response-Befund-Beispiel-1.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-response-befund.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Verlauf](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Verlauf](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf) 

** Summary **

Mandatory: 1 element(2 nested mandatory elements)
 Must-Support: 7 elements

**Structures**

This structure refers to these other structures:

* [MII PR MTB Systemische Therapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie)](StructureDefinition-mii-pr-mtb-systemische-therapie.md)
* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* [MII PR MTB Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor)](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.value[x].coding

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Onko_Verlauf](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Verlauf](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf) 

** Summary **

Mandatory: 1 element(2 nested mandatory elements)
 Must-Support: 7 elements

**Structures**

This structure refers to these other structures:

* [MII PR MTB Systemische Therapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie)](StructureDefinition-mii-pr-mtb-systemische-therapie.md)
* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* [MII PR MTB Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor)](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.value[x].coding

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-response-befund.csv), [Excel](../StructureDefinition-mii-pr-mtb-response-befund.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-response-befund.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-response-befund",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Response_Befund",
  "title" : "MII PR MTB Response Befund",
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
  "description" : "Response Beurteilung nach DNPM",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.meta",
      "path" : "Observation.meta",
      "mustSupport" : true
    },
    {
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "short" : "Systemische Therapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Systemische Therapie"
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
            "valueString" : "Systemic Therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Daszugehoerige, uebergeordnete Systemische Therapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Dazugehoerige uebergeordnete Systemische Therapie"
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
            "valueString" : "Associated parent systemic therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie",
        "http://hl7.org/fhir/StructureDefinition/Procedure"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor"]
      }]
    },
    {
      "id" : "Observation.effective[x]:effectiveDateTime",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
      "short" : "Zeitpunkt",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitpunkt"
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
            "valueString" : "Time Point"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zeitpunkt des Response Befundes",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitpunkt des Response Befundes"
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
            "valueString" : "Time point of the response assessment"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding",
      "path" : "Observation.value[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "description" : "Slice für die Verwendung der verschiedenen Codesysteme für Beurteilung von Response",
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding:oBDS",
      "path" : "Observation.value[x].coding",
      "sliceName" : "oBDS",
      "short" : "Response Beurteilung nach oBDS-Kriterien",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Response Beurteilung nach oBDS-Kriterien"
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
            "valueString" : "Response assessment according to oBDS criteria"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding:oBDS.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung"
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding:oBDS.code",
      "path" : "Observation.value[x].coding.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-gesamtbeurteilung"
      }
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding:MTB",
      "path" : "Observation.value[x].coding",
      "sliceName" : "MTB",
      "short" : "Response Beurteilung nach Recist oder Rano iM Rahmen des MTB",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Response Beurteilung nach Recist oder Rano im Rahmen des MTB"
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
            "valueString" : "Response assessment according to RECIST or RANO within the MTB"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding:MTB.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung"
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding:MTB.code",
      "path" : "Observation.value[x].coding.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-response-befund-beurteilung"
      }
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "Beurteilungsmethode",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Beurteilungsmethode"
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
            "valueString" : "Assessment Method"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Beurteilungsmethode RECIST oder RANO",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Beurteilungsmethode RECIST oder RANO"
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
            "valueString" : "Assessment method RECIST or RANO"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-response-befund-beurteilungsmethode"
      }
    }]
  }
}

```
