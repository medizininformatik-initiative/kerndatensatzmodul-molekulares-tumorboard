# MII PR MTB Systemtherapie Medication Statement - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Systemtherapie Medication Statement**

## Resource Profile: MII PR MTB Systemtherapie Medication Statement 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement | *Version*:2026.0.1 |
| Active as of 2026-09-15 | *Computable Name*:MII_PR_MTB_Systemische_Therapie_Medication_Statement |

 
Medication Statement zur MTB-Systemtherapie mit Wirkstoff und Dosis 

-------

### Content

Systemic Therapy Medication Statement belongs to the Systemic Therapy to represent medication administrations. For this purpose, the slices for medicationCodeableConcept were adopted from the MII_PR_Medikation_MedicationStatement profile. adopted. In this profile there is the additional option of specifying a dose density, which indicates to what extent a dose reduction took place.

### Relationships to other resources

The partOf element always references the superordinate Systemic Therapy Procedure.

### Content

Mapping of the data set to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/MedicationStatement?_id=12345`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/MedicationStatement?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement`Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "based-on" MUST be supported:Examples:`GET [base]/MedicationStatement?based-on=MII_PR_MTB_Therapieempfehlung/example`Usage notes: Further information on searching by "MedicationStatement.basedOn" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "part-of" MUST be supported:Examples:`GET [base]/MedicationStatement?part-of=MII_PR_MTB_Systemische_Therapie/example`Usage notes: Further information on searching by "MedicationStatement.partOf" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "status" MUST be supported:Examples:`GET [base]/MedicationStatement?status=completed`Usage notes: Further information on searching by "MedicationStatement.status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "medication" MUST be supported:Examples:`GET [base]/MedicationStatement?medication=completed`Usage notes: Further information on searching by "MedicationStatement.medication" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "effective" MUST be supported:Examples:`GET [base]/MedicationStatement?effective=2022-01-01`Usage notes: Further information on searching by "MedicationStatement.effective" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).
1. The search parameter "note" MUST be supported:Examples:`GET [base]/MedicationStatement?note=diesdas`Usage notes: Further information on searching by "MedicationStatement.outcome" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).
1. The search parameter "dosisdichte" MUST be supported:Examples:`GET [base]/MedicationStatement?dosisdichte=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-dosisdichte|>50%`Usage notes: Further information on searching by "MedicationStatement.dosage[Dosisdichte]" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Examples**

-------

**Usages:**

* Examples for this Profile: [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-1](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-1.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-2](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-2.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-3](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-3.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-4](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-4.md)... Show 3 more, [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-5](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-5.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-6](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-6.md) and [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.csv), [Excel](../StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-systemtherapie-medication-statement",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "version" : "3.0.0",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C3262"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-09-15"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Systemische_Therapie_Medication_Statement",
  "title" : "MII PR MTB Systemtherapie Medication Statement",
  "status" : "active",
  "date" : "2026-09-15T04:08:55+00:00",
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
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
