# MII PR MTB Diagnostische Implikation - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Diagnostische Implikation**

## Ressourcenprofil: MII PR MTB Diagnostische Implikation 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnostische-implikation | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Diagnostische_Implikation |

 
Beschreibt den Zusammenhang zwischen einem oder mehreren Genotyp/Haplotyp/Varianten und Beweisen für oder gegen eine bestimmte Krankheit. 

-------

### Inhalt

Das Profil beschreibt die Annotation der Therapiemöglichkeiten auf Basis molekularer Merkmale (z.B. genetische Varianten, immunhistochemische Nachweise ). Hierbei geht es insbesondere um die vermuteten Pathogenitäten der vorliegenden Varianten / Genotypen. Eine Implikation kann sich aus einzelnen oder der Kombination von mehreren Varianten / Biomarkern ergeben.

Diagnostische Implikationen sind Wissensartefakte, die sich mit dem aktuellen Wissensstand verändern können. Das, sowie die Tatsache, dass es eine regelmäßiges Update einer Evidenz geben kann, führte zu der Modellierungsentscheidung des Clinical Genomics-Team, die Diegnostische Implikation als getrennt von der eigentlichen Variantenbeschreibung zu führen. Dieses Profil ist verwandt mit dem Therapeutische-Implikations-Profil, dass v.a. für die Notation von Therapieoptionen verwendet wird.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_id=example-mii-molgen-variante-1`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnostische-implikation`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "category" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory`Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?code=http://loinc.org|diagnostic-implication`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?subject=Patient/example-mii-mtb-patient`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "focus" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose`Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?encounter=Encounter/12345`Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Beispiele**

-------

**Usages:**

* Examples for this Profile: [Observation/MII-EXA-MTB-Diagnostische-Implikation-1](Observation-MII-EXA-MTB-Diagnostische-Implikation-1.md) and [Observation/mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53](Observation-mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-diagnostische-implikation.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MolGen_DiagnostischeImplikation](https://medizininformatik-initiative.github.io/kerndatensatzmodul-GenetischeTests/2027.0.0-ballot.rc2/StructureDefinition-mii-pr-molgen-diagnostische-implikation.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MolGen_DiagnostischeImplikation](https://medizininformatik-initiative.github.io/kerndatensatzmodul-GenetischeTests/2027.0.0-ballot.rc2/StructureDefinition-mii-pr-molgen-diagnostische-implikation.html) 

** Summary **

Must-Support: 3 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* [MII PR MTB Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor)](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_MolGen_DiagnostischeImplikation](https://medizininformatik-initiative.github.io/kerndatensatzmodul-GenetischeTests/2027.0.0-ballot.rc2/StructureDefinition-mii-pr-molgen-diagnostische-implikation.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MolGen_DiagnostischeImplikation](https://medizininformatik-initiative.github.io/kerndatensatzmodul-GenetischeTests/2027.0.0-ballot.rc2/StructureDefinition-mii-pr-molgen-diagnostische-implikation.html) 

** Summary **

Must-Support: 3 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* [MII PR MTB Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor)](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-diagnostische-implikation.csv), [Excel](../StructureDefinition-mii-pr-mtb-diagnostische-implikation.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-diagnostische-implikation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-diagnostische-implikation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnostische-implikation",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Diagnostische_Implikation",
  "title" : "MII PR MTB Diagnostische Implikation",
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
  "description" : "Beschreibt den Zusammenhang zwischen einem oder mehreren Genotyp/Haplotyp/Varianten und Beweisen für oder gegen eine bestimmte Krankheit.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "MII-KDS",
    "name" : "MII KDS Mapping"
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
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation",
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
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:clinical-significance",
      "path" : "Observation.component",
      "sliceName" : "clinical-significance",
      "definition" : "Interpretation oder Einschätzung einer oder mehrerer genetischer Varianten.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Interpretation oder Einschaetzung einer oder mehrerer genetischer Varianten."
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
            "valueString" : "Interpretation or assessment of one or more genetic variants."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    }]
  }
}

```
