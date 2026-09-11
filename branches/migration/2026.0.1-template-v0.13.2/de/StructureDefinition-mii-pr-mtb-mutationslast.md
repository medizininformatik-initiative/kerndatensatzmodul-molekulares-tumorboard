# MII PR MTB Mutationslast - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Mutationslast**

## Ressourcenprofil: MII PR MTB Mutationslast 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mutationslast | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Mutationslast |

 
Beschreibt die Gesamtzahl von in Krebszellen gefundenen Mutationen pro 1 Mio. Basen. 

-------

### Inhalt

Dieses Profil beschreibt die Tumor Mutational Burden (TMB), die ein Maß für die Gesamtmutationsbelastung des Tumors ist. Der Wert (value) ist eine Dezimalzahl und Interpretation dieses Wertes soll aus der Wertemenge {low, intermediate, high} sein.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_id=1234`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mutationslast`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?status=final`Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "category" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory`Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?code=http://loinc.org|69548-6`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?subject=Patient/example-mii-mtb-patient`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "focus" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose`Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?encounter=Encounter/12345`Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "interpretation" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?interpretation=http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs|high`Anwendungshinweise: Weitere Informationen zur Suche nach "interpretation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "specimen" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?specimen=Specimen/example-mii-mtb-specimen`Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Beispiele**

-------

**Usages:**

* Refer to this Profile: [MII PR MTB NGS-Bericht](StructureDefinition-mii-pr-mtb-ngs-bericht.md)
* Examples for this Profile: [Observation/MII-EXA-MTB-Mutationslast-1](Observation-MII-EXA-MTB-Mutationslast-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-mutationslast.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MTB_Molekularer_Biomarker](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MTB_Molekularer_Biomarker](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md) 

** Summary **

Mandatory: 1 element
 Must-Support: 5 elements

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_MTB_Molekularer_Biomarker](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MTB_Molekularer_Biomarker](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md) 

** Summary **

Mandatory: 1 element
 Must-Support: 5 elements

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-mutationslast.csv), [Excel](../StructureDefinition-mii-pr-mtb-mutationslast.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-mutationslast.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-mutationslast",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mutationslast",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Mutationslast",
  "title" : "MII PR MTB Mutationslast",
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
  "description" : "Beschreibt die Gesamtzahl von in Krebszellen gefundenen Mutationen pro 1 Mio. Basen.",
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
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molekularer-biomarker",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "94076-7",
        "display" : "Mutations/Megabase [# Ratio] in Tumor"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs"
      }
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "mustSupport" : true
    }]
  }
}

```
