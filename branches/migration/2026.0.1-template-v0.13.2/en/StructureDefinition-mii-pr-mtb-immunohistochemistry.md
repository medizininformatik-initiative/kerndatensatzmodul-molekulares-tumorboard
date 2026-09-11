# MII PR MTB Immunohistochemistry - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Immunohistochemistry**

## Resource Profile: MII PR MTB Immunohistochemistry 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Immunohistochemistry |

 
Immunhistorchemistry report 

-------

### Content

This profile describes a single IHC finding as part of a molecular genetic profile.

Immunohistochemistry is tested here with a focus on oncologically relevant examinations. In the long term, a transfer to the Pathology module may be considered.

For many immunohistochemical findings there are suitable LOINC codes that describe the presence qualitatively or semi-quantitatively (+, ++, +++, - ). However, a research-oriented IHC specification must be able to detect all possible proteins. Therefore, the following modeling was chosen:

* **Specific** IHC can be used when a concrete coding exists in LOINC, SNOMED, or another coding system (e.g. `40557-1 Progesterone receptor Ag [Presence] in Tissue by Immune stain`. In that case the result can normally be recorded via valueCodeableConcept, e.g.: Present/absent)
* **Generic** IHC can be used above all for representing rare proteins without one. For this, the static SNOMED code `1234806008 Observation using immunohistochemistry (observable entity)` is used under `code` to indicate an immunohistochemistry. The specific protein detected can then be coded under `component[gene-studied]`. As with other biomarkers, HGNC is used for the concrete identification of the genes involved.

Note that IHC is a **protein detection** that takes place independently of the actual coding gene. The present modeling is therefore a systematic simplification with It can be assumed that certain genes can produce different protein splice products. If there are examples of oncological relevance for this, this modeling can gladly be refined. In addition, annotation with further protein databases (e.g. UniProt) remains open.

### Links to other resources

Since there are a number of established immunohistochemistries with specialized evaluations, specialized profiles were written for them. These can be extended in the future as needed. They include

* Her2 IHC and Her2 status, also in combination with Her2 ISH
* MMR protein detection via IHC to demonstrate MMR deficiency
* PDL1 IHC including calculation of the subscores
* The methodological special case of IHC detection of phosphorylated isoforms

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, also in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Observation?_id=12345`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Observation?code=http://snomed.info/sct|1234806008`Usage notes: Further information on searching for "code" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "focus" MUST be supported:Examples:`GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose`Usage notes: Further information on searching for "focus" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "interpretation" MUST be supported:Examples:`GET [base]/Observation?interpretation=http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs|high`Usage notes: Further information on searching for "interpretation" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "specimen" MUST be supported:Examples:`GET [base]/Observation?specimen=Specimen/1234`Usage notes: Further information on searching for "specimen" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

-------

**Usages:**

* Derived from this Profile: [MII PR MTB Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry-her2.md), [MII PR MTB Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.md) and [MII PR MTB Immunohistochemistry Phosphorylation](StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.md)
* Refer to this Profile: [MII PR MTB Molecular Pathology Report](StructureDefinition-mii-pr-mtb-molecular-pathology-report.md)
* Examples for this Profile: [Observation/PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu](Observation-PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu](Observation-PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra](Observation-PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2](Observation-PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2.md)... Show 7 more, [Observation/PatientKimMusterperson-MolecularPathologyObservation-1-CA125](Observation-PatientKimMusterperson-MolecularPathologyObservation-1-CA125.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-2-Pax8](Observation-PatientKimMusterperson-MolecularPathologyObservation-2-Pax8.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-3-WT1](Observation-PatientKimMusterperson-MolecularPathologyObservation-3-WT1.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-4-ER](Observation-PatientKimMusterperson-MolecularPathologyObservation-4-ER.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-5-PR](Observation-PatientKimMusterperson-MolecularPathologyObservation-5-PR.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-6-p53](Observation-PatientKimMusterperson-MolecularPathologyObservation-6-p53.md) and [Observation/PatientKimMusterperson-MolecularPathologyObservation-7-p53](Observation-PatientKimMusterperson-MolecularPathologyObservation-7-p53.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-immunohistochemistry.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-immunohistochemistry.csv), [Excel](../StructureDefinition-mii-pr-mtb-immunohistochemistry.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-immunohistochemistry.sch) 



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
