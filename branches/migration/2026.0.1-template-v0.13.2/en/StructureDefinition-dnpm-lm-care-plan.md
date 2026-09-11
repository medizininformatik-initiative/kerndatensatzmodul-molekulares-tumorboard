# DNPM MTB Care Plan - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DNPM MTB Care Plan**

## Logical Model: DNPM MTB Care Plan 

| | |
| :--- | :--- |
| *Official URL*:https://dnpm-dip.net/fhir/StructureDefinition/dnpm-lm-care-plan | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:DNPM_LM_CarePlan |

 
Logical Model for a single entry in the DNPM DIP MTB Patient Record carePlans array 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-dnpm-lm-care-plan.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-dnpm-lm-care-plan.csv), [Excel](../StructureDefinition-dnpm-lm-care-plan.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dnpm-lm-care-plan",
  "url" : "https://dnpm-dip.net/fhir/StructureDefinition/dnpm-lm-care-plan",
  "version" : "2026.0.1",
  "name" : "DNPM_LM_CarePlan",
  "title" : "DNPM MTB Care Plan",
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
  "description" : "Logical Model for a single entry in the DNPM DIP MTB Patient Record carePlans array",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://dnpm-dip.net/fhir/StructureDefinition/dnpm-lm-care-plan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "dnpm-lm-care-plan",
      "path" : "dnpm-lm-care-plan",
      "short" : "DNPM MTB Care Plan",
      "definition" : "Logical Model for a single entry in the DNPM DIP MTB Patient Record carePlans array"
    },
    {
      "id" : "dnpm-lm-care-plan.dnpmId",
      "path" : "dnpm-lm-care-plan.dnpmId",
      "short" : "Care plan UUID (DNPM internal ID)",
      "definition" : "Care plan UUID (DNPM internal ID)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.patient",
      "path" : "dnpm-lm-care-plan.patient",
      "short" : "Patient reference",
      "definition" : "Patient reference",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.patient.id",
      "path" : "dnpm-lm-care-plan.patient.id",
      "short" : "Patient ID",
      "definition" : "Patient ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.patient.type",
      "path" : "dnpm-lm-care-plan.patient.type",
      "short" : "Reference type (Patient)",
      "definition" : "Reference type (Patient)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.issuedOn",
      "path" : "dnpm-lm-care-plan.issuedOn",
      "short" : "Date care plan was issued (YYYY-MM-DD)",
      "definition" : "Date care plan was issued (YYYY-MM-DD)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.reason",
      "path" : "dnpm-lm-care-plan.reason",
      "short" : "Indication (MTBDiagnosis) reference",
      "definition" : "Indication (MTBDiagnosis) reference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.reason.id",
      "path" : "dnpm-lm-care-plan.reason.id",
      "short" : "Diagnosis ID",
      "definition" : "Diagnosis ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.reason.type",
      "path" : "dnpm-lm-care-plan.reason.type",
      "short" : "Reference type (MTBDiagnosis)",
      "definition" : "Reference type (MTBDiagnosis)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.noTargetFinding",
      "path" : "dnpm-lm-care-plan.noTargetFinding",
      "short" : "True when no actionable target was identified",
      "definition" : "True when no actionable target was identified",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.geneticCounselingRecommendation",
      "path" : "dnpm-lm-care-plan.geneticCounselingRecommendation",
      "short" : "Genetic counselling recommendation",
      "definition" : "Genetic counselling recommendation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.geneticCounselingRecommendation.id",
      "path" : "dnpm-lm-care-plan.geneticCounselingRecommendation.id",
      "short" : "Recommendation UUID",
      "definition" : "Recommendation UUID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.geneticCounselingRecommendation.patient",
      "path" : "dnpm-lm-care-plan.geneticCounselingRecommendation.patient",
      "short" : "Patient reference",
      "definition" : "Patient reference",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.geneticCounselingRecommendation.patient.id",
      "path" : "dnpm-lm-care-plan.geneticCounselingRecommendation.patient.id",
      "short" : "Patient ID",
      "definition" : "Patient ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.geneticCounselingRecommendation.patient.type",
      "path" : "dnpm-lm-care-plan.geneticCounselingRecommendation.patient.type",
      "short" : "Reference type (Patient)",
      "definition" : "Reference type (Patient)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.geneticCounselingRecommendation.issuedOn",
      "path" : "dnpm-lm-care-plan.geneticCounselingRecommendation.issuedOn",
      "short" : "Recommendation date (YYYY-MM-DD)",
      "definition" : "Recommendation date (YYYY-MM-DD)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.geneticCounselingRecommendation.reason",
      "path" : "dnpm-lm-care-plan.geneticCounselingRecommendation.reason",
      "short" : "Reason for counselling",
      "definition" : "Reason for counselling",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.geneticCounselingRecommendation.reason.code",
      "path" : "dnpm-lm-care-plan.geneticCounselingRecommendation.reason.code",
      "short" : "Reason code",
      "definition" : "Reason code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.geneticCounselingRecommendation.reason.display",
      "path" : "dnpm-lm-care-plan.geneticCounselingRecommendation.reason.display",
      "short" : "Reason display",
      "definition" : "Reason display",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.geneticCounselingRecommendation.reason.system",
      "path" : "dnpm-lm-care-plan.geneticCounselingRecommendation.reason.system",
      "short" : "Reason system URI",
      "definition" : "Reason system URI",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations",
      "path" : "dnpm-lm-care-plan.medicationRecommendations",
      "short" : "Medication therapy recommendations",
      "definition" : "Medication therapy recommendations",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.id",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.id",
      "short" : "Recommendation UUID",
      "definition" : "Recommendation UUID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.patient",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.patient",
      "short" : "Patient reference",
      "definition" : "Patient reference",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.patient.id",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.patient.id",
      "short" : "Patient ID",
      "definition" : "Patient ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.patient.type",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.patient.type",
      "short" : "Reference type (Patient)",
      "definition" : "Reference type (Patient)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.issuedOn",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.issuedOn",
      "short" : "Recommendation date (YYYY-MM-DD)",
      "definition" : "Recommendation date (YYYY-MM-DD)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.indication",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.indication",
      "short" : "Indication (MTBDiagnosis) reference",
      "definition" : "Indication (MTBDiagnosis) reference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.indication.id",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.indication.id",
      "short" : "Diagnosis ID",
      "definition" : "Diagnosis ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.indication.type",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.indication.type",
      "short" : "Reference type (MTBDiagnosis)",
      "definition" : "Reference type (MTBDiagnosis)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.priority",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.priority",
      "short" : "Recommendation priority",
      "definition" : "Recommendation priority",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.priority.code",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.priority.code",
      "short" : "Priority code (e.g. 1, 2, 3)",
      "definition" : "Priority code (e.g. 1, 2, 3)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.priority.display",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.priority.display",
      "short" : "Priority display",
      "definition" : "Priority display",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.priority.system",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.priority.system",
      "short" : "Priority system URI",
      "definition" : "Priority system URI",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.medication",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.medication",
      "short" : "Recommended medications (ATC codes)",
      "definition" : "Recommended medications (ATC codes)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.medication.code",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.medication.code",
      "short" : "ATC code",
      "definition" : "ATC code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.medication.display",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.medication.display",
      "short" : "Medication display name",
      "definition" : "Medication display name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.medication.system",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.medication.system",
      "short" : "Medication code system URI",
      "definition" : "Medication code system URI",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.medication.version",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.medication.version",
      "short" : "ATC version",
      "definition" : "ATC version",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.supportingVariants",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.supportingVariants",
      "short" : "Variants supporting this recommendation",
      "definition" : "Variants supporting this recommendation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.supportingVariants.id",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.supportingVariants.id",
      "short" : "Variant ID",
      "definition" : "Variant ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.supportingVariants.type",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.supportingVariants.type",
      "short" : "Variant type (SNV | CNV | DNAFusion | RNAFusion)",
      "definition" : "Variant type (SNV | CNV | DNAFusion | RNAFusion)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence",
      "short" : "Level of evidence for recommendation",
      "definition" : "Level of evidence for recommendation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.grading",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.grading",
      "short" : "Evidence grading",
      "definition" : "Evidence grading",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.grading.code",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.grading.code",
      "short" : "Evidence grade code (e.g. m1A)",
      "definition" : "Evidence grade code (e.g. m1A)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.grading.display",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.grading.display",
      "short" : "Evidence grade display",
      "definition" : "Evidence grade display",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.grading.system",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.grading.system",
      "short" : "Evidence grade system URI",
      "definition" : "Evidence grade system URI",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.addendums",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.addendums",
      "short" : "Evidence addendums / flags",
      "definition" : "Evidence addendums / flags",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.addendums.code",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.addendums.code",
      "short" : "Addendum code",
      "definition" : "Addendum code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.addendums.display",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.addendums.display",
      "short" : "Addendum display",
      "definition" : "Addendum display",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.addendums.system",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.addendums.system",
      "short" : "Addendum system URI",
      "definition" : "Addendum system URI",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.publications",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.publications",
      "short" : "Supporting publications",
      "definition" : "Supporting publications",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.publications.pmid",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.publications.pmid",
      "short" : "PubMed ID",
      "definition" : "PubMed ID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.publications.doi",
      "path" : "dnpm-lm-care-plan.medicationRecommendations.levelOfEvidence.publications.doi",
      "short" : "Digital Object Identifier",
      "definition" : "Digital Object Identifier",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations",
      "short" : "Clinical study enrollment recommendations",
      "definition" : "Clinical study enrollment recommendations",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.id",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.id",
      "short" : "Recommendation UUID",
      "definition" : "Recommendation UUID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.patient",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.patient",
      "short" : "Patient reference",
      "definition" : "Patient reference",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.patient.id",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.patient.id",
      "short" : "Patient ID",
      "definition" : "Patient ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.patient.type",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.patient.type",
      "short" : "Reference type (Patient)",
      "definition" : "Reference type (Patient)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.issuedOn",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.issuedOn",
      "short" : "Recommendation date (YYYY-MM-DD)",
      "definition" : "Recommendation date (YYYY-MM-DD)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.indication",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.indication",
      "short" : "Indication (MTBDiagnosis) reference",
      "definition" : "Indication (MTBDiagnosis) reference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.indication.id",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.indication.id",
      "short" : "Diagnosis ID",
      "definition" : "Diagnosis ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.indication.type",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.indication.type",
      "short" : "Reference type (MTBDiagnosis)",
      "definition" : "Reference type (MTBDiagnosis)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.supportingVariants",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.supportingVariants",
      "short" : "Variants supporting enrollment",
      "definition" : "Variants supporting enrollment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.supportingVariants.id",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.supportingVariants.id",
      "short" : "Variant ID",
      "definition" : "Variant ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.supportingVariants.type",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.supportingVariants.type",
      "short" : "Variant type",
      "definition" : "Variant type",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.studies",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.studies",
      "short" : "Recommended studies",
      "definition" : "Recommended studies",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.studies.id",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.studies.id",
      "short" : "Study identifier (e.g. NCT number)",
      "definition" : "Study identifier (e.g. NCT number)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.studies.system",
      "path" : "dnpm-lm-care-plan.studyEnrollmentRecommendations.studies.system",
      "short" : "Study registry system URI (e.g. https://clinicaltrials.gov/study)",
      "definition" : "Study registry system URI (e.g. https://clinicaltrials.gov/study)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
