# MII PR MTB Immunohistochemistry Phosphorylation - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Immunohistochemistry Phosphorylation**

## Ressourcenprofil: MII PR MTB Immunohistochemistry Phosphorylation 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-phosphorylation | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Immunohistochemistry_Phosphorylation |

 
Immunhistorchemistry report 

-------

### Beschreibung

Immunohistochemie-Profil für Phosphorylierungs-Färbungen.

-------

### Inhalt

Dieses Profil beschreibt den IHC-Befund, der ein Protein speziell in seiner phosphorylierten Form nachweist. Es existieren derzeit keine international anerkannenten HL7-Spezifkationen zur präzisen und harmonisierten Darstellung von posttranslationalen Modifikationen.

Dieses Profil soll daher ein erstes Konzept zur generalisierten Erschließung von post-translationalen Modifikation am Beispiel von Phosphorylierung Vereinfacht werden phosphorylierte Proteine häudig mit dem Präfix `p-`, z.B. p-AKT.

Diese Kodierung mag im klinisch-pathologischen Alltag und den standardisierten Diagnoseabläufen implizit verständlich sein. Falls die Information in dieser Form aus einem Pathologiesystem kommt, ist im weiteren (für DIZ-Mitarbeiter, Forscher etc. ) jedoch nicht ersichtlich, an welcher Stelle eine Phosphorylierung vorliegt. Daher handelt es sich bei der dnpm-Kodierung nicht um eine e präzise Angabe einer Phosphorylierungsstelle möglich.

Beispiel: Das Gen Rb-1 hat mit Serin eine mögliche Phosphorylierungsstelle an Position 949 (siehe p-RB-Seite auf UniProt, unter dem Abschnitt PRTM/Processing https://www.uniprot.org/uniprotkb/Q13733/entry). Die Proteine AKT1, AKT2 und AKT3 hingegen haben zwei potentielle Phosyphorylierungsstellen, die von verschiedenen Enzymen aktiviert werden: Thr308 und Ser473, wobei vor allem für den Nachweis der letzten Mutation eine negative Prognose existiert.

Es existieren mehrere Ansätze, wie trotzdem eine Abgrenzung zur nicht-phosphorylierten Version vorgenommen werden kann. Für Details sei auf die Diskussion posttranslationaler Modifikation auf der UniProt-Seite verwiesen https://www.uniprot.org/help/mod_res:

* Angabe des Antikörper-Klons zur eindeutigen Identifizierung des verwendeten Antikörper-Produkts (z.B. über https://www.cellsignal.com/learn-and-support/phosphositeplus-ptm-database oder vergleichbare Datenbanken)
* Darstellung der veränderten Raumstruktur des Proteins über UniProt
* Verweis auf eine vorangegangene Aktivität

MOD

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?code=http://snomed.info/sct|1234806008`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "focus" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose`Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "interpretation" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?interpretation=http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs|high`Anwendungshinweise: Weitere Informationen zur Suche nach "interpretation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "specimen" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?specimen=Specimen/1234`Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Beispiele**

-------

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MTB_Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MTB_Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md) 

** Summary **

Mandatory: 0 element(2 nested mandatory elements)
 Must-Support: 4 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.component.value[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_MTB_Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MTB_Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md) 

** Summary **

Mandatory: 0 element(2 nested mandatory elements)
 Must-Support: 4 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.component.value[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.csv), [Excel](../StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-immunohistochemistry-phosphorylation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-phosphorylation",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Immunohistochemistry_Phosphorylation",
  "title" : "MII PR MTB Immunohistochemistry Phosphorylation",
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
  "description" : "Immunhistorchemistry report",
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
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.component:phosphorylation-localization",
      "path" : "Observation.component",
      "sliceName" : "phosphorylation-localization",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:phosphorylation-localization.code",
      "path" : "Observation.component.code",
      "short" : "Phosphorylation localization",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Phosphorylierungslokalisation"
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
            "valueString" : "Phosphorylation localization"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Phosphorylation localization according to UniProt",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Phosphorylierungslokalisation gemaess UniProt"
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
            "valueString" : "Phosphorylation localization according to UniProt"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:phosphorylation-localization.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.component:phosphorylation-localization.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Phosphorylation localization",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Phosphorylierungslokalisation"
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
            "valueString" : "Phosphorylation localization"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Phosphorylation localization according to UniProt",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Phosphorylierungslokalisation gemaess UniProt"
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
            "valueString" : "Phosphorylation localization according to UniProt"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:protein-isoform",
      "path" : "Observation.component",
      "sliceName" : "protein-isoform",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    }]
  }
}

```
