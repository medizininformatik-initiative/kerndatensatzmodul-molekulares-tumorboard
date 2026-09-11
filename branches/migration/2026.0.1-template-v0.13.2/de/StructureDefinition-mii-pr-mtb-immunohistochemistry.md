# MII PR MTB Immunohistochemistry - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Immunohistochemistry**

## Ressourcenprofil: MII PR MTB Immunohistochemistry 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Immunohistochemistry |

 
Immunhistorchemistry report 

-------

### Inhalt

Dieses Profil beschreibt einen einzelnen IHC-Befund als Teil eines molekulargenetischen Profils.

Die Immunhistochemie wird hier mit dem Fokus auf onkologisch relevante Untersuchungen getestet. Langfristig ist ggfs. eine Überführung ins Pathologiemodul angedacht.

Für viele Immunhistochemische Befunde gibt es passende LOINC-Codes, die das Vorhandensein qualitativ oder semiquantitativ (+, ++, +++, - ) beschreiben. Allerdings muss eine forschungsorientierte IHC-Spezifikation in der Lage sein, alle möglichen Proteine nachzuweisen. Daher wurde folgende Modellierung gewählt:

* **Spezifische** IHC kann angewandt werden, wenn es einen in LOINC, SNOMED oder einem ander Kodiersystem eine konkrete Kodierung vorloegt (z.B. `40557-1 Progesterone receptor Ag [Presence] in Tissue by Immune stain`. In dem Fall kann die Ausprägung normal über valueCodeableConcept vorgenommen werden, z.B: Present/absent)
* **Generische** IHC kann vor allem zur Darstellung seltener Proteine ohne. Dazu wird unter `code` der statische code SNOMED `1234806008 Observation using immunohistochemistry (observable entity)` verwendet, um eine Immunhoistochemie anzuzeigen. Das konkret nachgewiesene Protein kann dann unter `component[gene-studied]` kodiert werden. Dabei wird wie bei anderen Biomarkern auch, HGNC zur konkreten Identifikation der beteiligten Gene genutzt.

Es ist zu beachten, dass es sich bei IHC um einen **Proteinnachweis** handelt, der losgelöst vom eigentlich kodierenden Gen stattfindet. Die vorliegende Modellierung ist daher eine systematische Vereinfachung mit Es ist davon auszugehen, dass bestimmte Gene verschiedene Protein-Spliceprodukte herstellen können. Falls es dafür Beispiele mit onkologischer Relevanz gibt, kann diese Modellierung gern verfeinert werden. Zusätzlich steht die Annotation mit weiteren Proteindatenbanken (z.B. UniProt) frei.

### Verknüpfungen zu anderen Ressourcen

Da es eine Reihe von etablierten Immunistochemien mit spezialisierten Auswertungen gibt, wurden dafür spezialisierte Profile geschrieben. Diese sind in Zukunft bei Bedarf erweiterbar. Dazu gehören

* Her2-IHC und Her2-Status, auch in Verbindung mit Her2-ISH
* MMR-Protein-Nachweis per IHC zum Nachweis von MMR-deficiency
* PDL1-IHC inkl. Berechnung der Subscores
* Methodischer Sonderfall des IHC-Nachweises von phosphorylierten Isoformen

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

* Derived from this Profile: [MII PR MTB Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry-her2.md), [MII PR MTB Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.md) and [MII PR MTB Immunohistochemistry Phosphorylation](StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.md)
* Refer to this Profile: [MII PR MTB Molecular Pathology Report](StructureDefinition-mii-pr-mtb-molecular-pathology-report.md)
* Examples for this Profile: [Observation/PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu](Observation-PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu](Observation-PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra](Observation-PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2](Observation-PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2.md)... Show 7 more, [Observation/PatientKimMusterperson-MolecularPathologyObservation-1-CA125](Observation-PatientKimMusterperson-MolecularPathologyObservation-1-CA125.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-2-Pax8](Observation-PatientKimMusterperson-MolecularPathologyObservation-2-Pax8.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-3-WT1](Observation-PatientKimMusterperson-MolecularPathologyObservation-3-WT1.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-4-ER](Observation-PatientKimMusterperson-MolecularPathologyObservation-4-ER.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-5-PR](Observation-PatientKimMusterperson-MolecularPathologyObservation-5-PR.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-6-p53](Observation-PatientKimMusterperson-MolecularPathologyObservation-6-p53.md) and [Observation/PatientKimMusterperson-MolecularPathologyObservation-7-p53](Observation-PatientKimMusterperson-MolecularPathologyObservation-7-p53.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-immunohistochemistry.json)

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

#### Constraints

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MTB_Molekularer_Biomarker](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md) 

** Summary **

Mandatory: 2 elements
 Must-Support: 7 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.code.coding
* The element 1 is sliced based on the value of Observation.value[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_MTB_Molekularer_Biomarker](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md) 

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MTB_Molekularer_Biomarker](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md) 

** Summary **

Mandatory: 2 elements
 Must-Support: 7 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.code.coding
* The element 1 is sliced based on the value of Observation.value[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-immunohistochemistry.csv), [Excel](../StructureDefinition-mii-pr-mtb-immunohistochemistry.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-immunohistochemistry.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-immunohistochemistry",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Immunohistochemistry",
  "title" : "MII PR MTB Immunohistochemistry",
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
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molekularer-biomarker",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "constraint" : [{
        "key" : "mii-mtb-ihc-1",
        "severity" : "error",
        "human" : "Entweder muss ein spezifischer Code oder gene-studied angegeben werden (Either a specific code or gene-studied must be provided)",
        "expression" : "code.coding.where(system != 'http://snomed.info/sct' or code != '1234806008').exists() or component.where(code.coding.where(system = 'http://loinc.org' and code = '48018-6').exists()).exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry"
      }]
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Code für Immunhistochemische Untersuchung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Code fuer Immunhistochemische Untersuchung"
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
            "valueString" : "Code for immunohistochemical examination"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Kodierung für Immunhistochemische Untersuchung. Enthält immer den generischen IHC-Code. Nach Möglichkeit sind zusätzlich spezifische Codes zu verwenden. Wenn weder in SNOMED noch LOINC spezifische Codes vorhanden sind, ist über gene-studied das untersuchte Gen anzugeben.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kodierung fuer Immunhistochemische Untersuchung. Enthaelt immer den generischen IHC-Code. Nach Moeglichkeit sind zusaetzlich spezifische Codes zu verwenden. Wenn weder in SNOMED noch LOINC spezifische Codes vorhanden sind ist ueber gene-studied das untersuchte Gen anzugeben."
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
            "valueString" : "Coding for immunohistochemical examination. Always contains the generic IHC code. Specific codes should be used additionally whenever possible. If no specific codes are available in SNOMED or LOINC the examined gene must be specified via gene-studied."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding:generisch",
      "path" : "Observation.code.coding",
      "sliceName" : "generisch",
      "short" : "Generischer Immunhistochemischer Untersuchungscode",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Generischer Immunhistochemischer Untersuchungscode"
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
            "valueString" : "Generic immunohistochemical examination code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Generischer Code für immunhistochemische Untersuchungen. Wird immer angegeben, um die Interoperabilität zu gewährleisten. Zusätzliche spezifische Codes können über open slicing hinzugefügt werden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Generischer Code fuer immunhistochemische Untersuchungen. Wird immer angegeben um die Interoperabilitaet zu gewaehrleisten. Zusaetzliche spezifische Codes koennen ueber open slicing hinzugefuegt werden."
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
            "valueString" : "Generic code for immunohistochemical examinations. Always provided to ensure interoperability. Additional specific codes can be added via open slicing."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "1234806008",
        "display" : "Observation using immunohistochemistry (observable entity)"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Ergebnis der für immunhistochemische Untersuchung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ergebnis der immunhistochemischen Untersuchung"
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
            "valueString" : "Result of the immunohistochemical examination"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ergebnis der immunhistochemischen Untersuchung.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ergebnis der immunhistochemischen Untersuchung."
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
            "valueString" : "Result of the immunohistochemical examination."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "short" : "Block / Material-Nr. der Probe",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Block / Material-Nr. der Probe"
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
            "valueString" : "Block / Material ID of the specimen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Block-MAterial-Nr. der Probe. Da jede FHIR-Observation nur eine Referenz auf Specimen haben kann, Die gesamte Probe (z.B. Biopsie, Exzisat) wird von den Einzelschnitten referenziert.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Block-Material-Nr. der Probe. Da jede FHIR-Observation nur eine Referenz auf Specimen haben kann wird die gesamte Probe - z.B. Biopsie oder Exzisat - von den Einzelschnitten referenziert."
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
            "valueString" : "Block material number of the specimen. Since each FHIR Observation can only have one reference to Specimen the entire specimen - e.g. biopsy or excision - is referenced by the individual sections."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:gene-studied",
      "path" : "Observation.component",
      "sliceName" : "gene-studied",
      "max" : "1"
    }]
  }
}

```
