# MII PR MTB Systemtherapie Medication Statement - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Systemtherapie Medication Statement**

## Ressourcenprofil: MII PR MTB Systemtherapie Medication Statement 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Systemische_Therapie_Medication_Statement |

 
Medication Statement zur MTB-Systemtherapie mit Wirkstoff und Dosis 

-------

### Inhalt

Systemische Therapie Medication Statement gehört zur Systemischen Therapie um Medikamentengaben darzustellen. Dafür wurden die Slices für medicationCodeableConcept aus dem MII_PR_Medikation_MedicationStatement Profil übernommen. übernommen. In diesem Profil gibt es die zusätzliche Möglichkeit eine Dosisdichte anzugeben, welche angibt in welchem Ausmaß eine Dosisreduktion stattfand.

### Verknüpfungen zu anderen Ressourcen

Das partOf Element verweist immer auf die übergeordnete Systemische Therapie Procedure.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationStatement?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationStatement?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "based-on" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationStatement?based-on=MII_PR_MTB_Therapieempfehlung/example`Anwendungshinweise: Weitere Informationen zur Suche nach "MedicationStatement.basedOn" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "part-of" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationStatement?part-of=MII_PR_MTB_Systemische_Therapie/example`Anwendungshinweise: Weitere Informationen zur Suche nach "MedicationStatement.partOf" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationStatement?status=completed`Anwendungshinweise: Weitere Informationen zur Suche nach "MedicationStatement.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "medication" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationStatement?medication=completed`Anwendungshinweise: Weitere Informationen zur Suche nach "MedicationStatement.medication" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "effective" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationStatement?effective=2022-01-01`Anwendungshinweise: Weitere Informationen zur Suche nach "MedicationStatement.effective" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "note" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationStatement?note=diesdas`Anwendungshinweise: Weitere Informationen zur Suche nach "MedicationStatement.outcome" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).
1. Der Suchparameter "dosisdichte" MUSS unterstützt werden:Beispiele:`GET [base]/MedicationStatement?dosisdichte=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-dosisdichte|>50%`Anwendungshinweise: Weitere Informationen zur Suche nach "MedicationStatement.dosage[Dosisdichte]" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Beispiele**

-------

**Usages:**

* Examples for this Profile: [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-1](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-1.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-2](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-2.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-3](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-3.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-4](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-4.md)... Show 3 more, [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-5](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-5.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-6](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-6.md) and [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Systemische_Therapie_Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Systemische_Therapie_Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation) 

** Summary **

Must-Support: 1 element

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Onko_Systemische_Therapie_Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Systemische_Therapie_Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation) 

** Summary **

Must-Support: 1 element

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.csv), [Excel](../StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-systemtherapie-medication-statement",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Systemische_Therapie_Medication_Statement",
  "title" : "MII PR MTB Systemtherapie Medication Statement",
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
  "description" : "Medication Statement zur MTB-Systemtherapie mit Wirkstoff und Dosis",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationStatement",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationStatement",
      "path" : "MedicationStatement"
    },
    {
      "id" : "MedicationStatement.dosage",
      "path" : "MedicationStatement.dosage",
      "max" : "1"
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.type",
      "path" : "MedicationStatement.dosage.doseAndRate.type",
      "short" : "Dosisdichte",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Dosisdichte"
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
            "valueString" : "Dose Intensity"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Die Dosisdichte gibt an ob, in welchem Ausmaß eine Dosisreduktion vorliegt.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Die Dosisdichte gibt an ob und in welchem Ausmass eine Dosisreduktion vorliegt."
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
            "valueString" : "The dose intensity indicates whether and to what extent a dose reduction is present."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.type.coding.system",
      "path" : "MedicationStatement.dosage.doseAndRate.type.coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-dosisdichte"
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.type.coding.code",
      "path" : "MedicationStatement.dosage.doseAndRate.type.coding.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-dosisdichte"
      }
    }]
  }
}

```
