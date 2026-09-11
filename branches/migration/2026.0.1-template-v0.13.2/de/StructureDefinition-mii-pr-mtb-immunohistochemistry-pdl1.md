# MII PR MTB Immunohistochemistry - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Immunohistochemistry**

## Ressourcenprofil: MII PR MTB Immunohistochemistry 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-pdl1 | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Immunohistochemistry_PDL1 |

 
Immunhistorchemistry report 

-------

### Inhalt

Dieses Profil beschreibt eine PD-L1-Untersuchung im IHC-Bericht. Bei PD-L1 (Programmed-Death Ligand 1) handelt es sich um einen immunhistochemischen Nachweis des Proteins. Insbesondere wird das Expressionsmuster auf Krebszellen sowie das Verhaltnis untereinander bestimmt. Dafür werden

Folgende Scores sind unter `Observation.component` abgebildet:

* Tumor Proportion Score (TPS) - Score für PD-L1-Expression in Tumorzellen. Der TPS ist der Anteil der PD-L1-positiven Tumorzellen im Verhältnis zu den Gesamtzellen.
* Combined Positive Score (CPS) - Score für PD-L1-Expression in Tumorzellen und Immunzellen. Der CPS ist der Anteil der PD-L1-positiven Tumorzellen und Immunzellen im Verhältnis zu den Gesamtzellen.
* Immune Cell Score (ICS) - Score für PD-L1-Expression in Immunzellen. Der ICS ist der Anteil der PD-L1-positiven Immunzellen im Verhältnis zu den Gesamtzellen.
* Tumor Cell Score (TC-Score) - Score für PD-L1-Expression in Tumorzellen. Der TC-Score ist der Anteil der PD-L1-positiven Tumorzellen im Verhältnis zu den Gesamtzellen.

### Verknüpfungen zu anderen Ressourcen

Die PD-L1 Ressource kann in einen Molekularpathologischen Befundbericht eingebunden werden. Sie kann als Grundlage für Therapeutische Implikationen dienen.

### Inhalt

Mapping Datensatz zu FHIR <–

—>

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?code=http://snomed.info/sct|1234806008`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "focus" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose`Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "date" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?date=2024-02-08`Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](https://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "interpretation" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?interpretation=http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs|high`Anwendungshinweise: Weitere Informationen zur Suche nach "interpretation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "specimen" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?specimen=Specimen/1234`Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Beispiele**

-------

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.json)

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

Must-Support: 16 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.component
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

Must-Support: 16 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.component
* The element 1 is sliced based on the value of Observation.component.value[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.csv), [Excel](../StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-immunohistochemistry-pdl1",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-pdl1",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Immunohistochemistry_PDL1",
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
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "short" : "Probe",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Probe"
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
            "valueString" : "Specimen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Probe",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Probe"
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
            "valueString" : "Specimen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "description" : "Immunohistochemische Ergebnisse",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:tps-score",
      "path" : "Observation.component",
      "sliceName" : "tps-score",
      "short" : "TPS-Score",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TPS-Score"
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
            "valueString" : "TPS Score"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Tumor Proportion Score (TPS) - Score für PD-L1-Expression in Tumorzellen. Der TPS ist der Anteil der PD-L1-positiven Tumorzellen im Verhältnis zu den Gesamtzellen. Der TPS wird in Prozent angegeben. Ein TPS von 1% oder mehr gilt als positiv.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumor Proportion Score - TPS - Score fuer PD-L1-Expression in Tumorzellen. Der TPS ist der Anteil der PD-L1-positiven Tumorzellen im Verhaeltnis zu den Gesamtzellen. Der TPS wird in Prozent angegeben. Ein TPS von 1 Prozent oder mehr gilt als positiv."
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
            "valueString" : "Tumor Proportion Score - TPS - Score for PD-L1 expression in tumor cells. The TPS is the proportion of PD-L1-positive tumor cells relative to total cells. TPS is expressed as a percentage. A TPS of 1 percent or more is considered positive."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tps-score.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
          "code" : "C184941",
          "display" : "PD-L1 Tumor Proportion Score"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tps-score.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:tps-score.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tps-score.interpretation",
      "path" : "Observation.component.interpretation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cps-score",
      "path" : "Observation.component",
      "sliceName" : "cps-score",
      "short" : "CPS-Score",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "CPS-Score"
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
            "valueString" : "CPS Score"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Combined Positive Score (CPS) - Score für PD-L1-Expression in Tumorzellen und Immunzellen. Der CPS ist der Anteil der PD-L1-positiven Tumorzellen und Immunzellen im Verhältnis zu den Gesamtzellen. Der CPS wird in Prozent angegeben. Ein CPS von 1% oder mehr gilt als positiv.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Combined Positive Score - CPS - Score fuer PD-L1-Expression in Tumorzellen und Immunzellen. Der CPS ist der Anteil der PD-L1-positiven Tumorzellen und Immunzellen im Verhaeltnis zu den Gesamtzellen. Der CPS wird in Prozent angegeben. Ein CPS von 1 Prozent oder mehr gilt als positiv."
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
            "valueString" : "Combined Positive Score - CPS - Score for PD-L1 expression in tumor cells and immune cells. The CPS is the proportion of PD-L1-positive tumor cells and immune cells relative to total cells. CPS is expressed as a percentage. A CPS of 1 percent or more is considered positive."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cps-score.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
          "code" : "C176582",
          "display" : "PD-L1 Combined Positive Score"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cps-score.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:cps-score.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cps-score.interpretation",
      "path" : "Observation.component.interpretation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ics-score",
      "path" : "Observation.component",
      "sliceName" : "ics-score",
      "short" : "ICS-Score",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ICS-Score"
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
            "valueString" : "ICS Score"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Immune Cell Score (ICS) - Score für PD-L1-Expression in Immunzellen. Der ICS ist der Anteil der PD-L1-positiven Immunzellen im Verhältnis zu den Gesamtzellen. Der ICS wird in Prozent angegeben. Ein ICS von 1% oder mehr gilt als positiv.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Immune Cell Score - ICS - Score fuer PD-L1-Expression in Immunzellen. Der ICS ist der Anteil der PD-L1-positiven Immunzellen im Verhaeltnis zu den Gesamtzellen. Der ICS wird in Prozent angegeben. Ein ICS von 1 Prozent oder mehr gilt als positiv."
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
            "valueString" : "Immune Cell Score - ICS - Score for PD-L1 expression in immune cells. The ICS is the proportion of PD-L1-positive immune cells relative to total cells. ICS is expressed as a percentage. An ICS of 1 percent or more is considered positive."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ics-score.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
          "code" : "C199175",
          "display" : "Cells.programmed cell death ligand 1/Viable tumor cells in Tissue by Immune stain"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ics-score.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:ics-score.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ics-score.interpretation",
      "path" : "Observation.component.interpretation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tc-score",
      "path" : "Observation.component",
      "sliceName" : "tc-score",
      "short" : "TC-Score / TPS-Score",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TC-Score / TPS-Score"
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
            "valueString" : "TC Score / TPS Score"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Tumor Cell Score (TC-Score) - Score für PD-L1-Expression in Tumorzellen. Der TC-Score ist der Anteil der PD-L1-positiven Tumorzellen im Verhältnis zu den Gesamtzellen. Der TC-Score wird in Prozent angegeben. Ein TC-Score von 1% oder mehr gilt als positiv.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumor Cell Score - TC-Score - Score fuer PD-L1-Expression in Tumorzellen. Der TC-Score ist der Anteil der PD-L1-positiven Tumorzellen im Verhaeltnis zu den Gesamtzellen. Der TC-Score wird in Prozent angegeben. Ein TC-Score von 1 Prozent oder mehr gilt als positiv."
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
            "valueString" : "Tumor Cell Score - TC-Score - Score for PD-L1 expression in tumor cells. The TC-Score is the proportion of PD-L1-positive tumor cells relative to total cells. TC-Score is expressed as a percentage. A TC-Score of 1 percent or more is considered positive."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tc-score.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "83053-9",
          "display" : "Cells.programmed cell death ligand 1/Viable tumor cells in Tissue by Immune stain"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tc-score.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:tc-score.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tc-score.interpretation",
      "path" : "Observation.component.interpretation",
      "mustSupport" : true
    }]
  }
}

```
