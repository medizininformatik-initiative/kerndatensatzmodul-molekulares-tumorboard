# MII PR MTB Systemtherapie Medication Statement - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Systemtherapie Medication Statement**

## Resource Profile: MII PR MTB Systemtherapie Medication Statement 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_PR_MTB_Systemische_Therapie_Medication_Statement |

 
Medication Statement zur MTB-Systemtherapie mit Wirkstoff und Dosis 

**Usages:**

* Examples for this Profile: [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-1](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-1.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-2](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-2.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-3](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-3.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-4](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-4.md)... Show 3 more, [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-5](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-5.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-6](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-6.md) and [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-molekulares-tumorboard|current/StructureDefinition/StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.csv), [Excel](StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.xlsx), [Schematron](StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.sch) 



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
  "date" : "2026-07-23T12:42:46+00:00",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
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
