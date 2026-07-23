# MII PR MTB Immunohistochemistry - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Immunohistochemistry**

## Resource Profile: MII PR MTB Immunohistochemistry 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_PR_MTB_Immunohistochemistry |

 
Immunhistorchemistry report 

**Usages:**

* Derived from this Profile: [MII PR MTB Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry-her2.md), [MII PR MTB Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.md) and [MII PR MTB Immunohistochemistry Phosphorylation](StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.md)
* Refer to this Profile: [MII PR MTB Molecular Pathology Report](StructureDefinition-mii-pr-mtb-molecular-pathology-report.md)
* Examples for this Profile: [Observation/PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu](Observation-PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu](Observation-PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra](Observation-PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2](Observation-PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2.md)... Show 7 more, [Observation/PatientKimMusterperson-MolecularPathologyObservation-1-CA125](Observation-PatientKimMusterperson-MolecularPathologyObservation-1-CA125.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-2-Pax8](Observation-PatientKimMusterperson-MolecularPathologyObservation-2-Pax8.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-3-WT1](Observation-PatientKimMusterperson-MolecularPathologyObservation-3-WT1.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-4-ER](Observation-PatientKimMusterperson-MolecularPathologyObservation-4-ER.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-5-PR](Observation-PatientKimMusterperson-MolecularPathologyObservation-5-PR.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-6-p53](Observation-PatientKimMusterperson-MolecularPathologyObservation-6-p53.md) and [Observation/PatientKimMusterperson-MolecularPathologyObservation-7-p53](Observation-PatientKimMusterperson-MolecularPathologyObservation-7-p53.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-molekulares-tumorboard|current/StructureDefinition/StructureDefinition-mii-pr-mtb-immunohistochemistry.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-pr-mtb-immunohistochemistry.csv), [Excel](StructureDefinition-mii-pr-mtb-immunohistochemistry.xlsx), [Schematron](StructureDefinition-mii-pr-mtb-immunohistochemistry.sch) 



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
  "date" : "2026-07-23T12:42:46+00:00",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
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
