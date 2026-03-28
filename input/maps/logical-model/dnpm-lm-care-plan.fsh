// dnpm-lm-care-plan.fsh
// Standalone Logical Model for the DNPM DIP CarePlan JSON structure.
// Covers carePlans[] including medicationRecommendations (with levelOfEvidence)
// and studyEnrollmentRecommendations.

Logical: DNPM_LM_CarePlan
Parent: Element
Id: dnpm-lm-care-plan
Title: "DNPM MTB Care Plan"
Description: "Logical Model for a single entry in the DNPM DIP MTB Patient Record carePlans array"
* ^url = "https://dnpm-dip.net/fhir/StructureDefinition/dnpm-lm-care-plan"
* ^status = #active

* id 1..1 string "Care plan UUID"

* patient 1..1 BackboneElement "Patient reference"
  * id 1..1 string "Patient ID"
  * type 1..1 string "Reference type (Patient)"

* issuedOn 1..1 string "Date care plan was issued (YYYY-MM-DD)"

* reason 0..1 BackboneElement "Indication (MTBDiagnosis) reference"
  * id 1..1 string "Diagnosis ID"
  * type 1..1 string "Reference type (MTBDiagnosis)"

* noTargetFinding 0..1 boolean "True when no actionable target was identified"

// ---- Genetic Counselling Recommendation ----
* geneticCounselingRecommendation 0..1 BackboneElement "Genetic counselling recommendation"
  * id 1..1 string "Recommendation UUID"
  * patient 1..1 BackboneElement "Patient reference"
    * id 1..1 string "Patient ID"
    * type 1..1 string "Reference type (Patient)"
  * issuedOn 1..1 string "Recommendation date (YYYY-MM-DD)"
  * reason 0..1 BackboneElement "Reason for counselling"
    * code 1..1 string "Reason code"
    * display 0..1 string "Reason display"
    * system 1..1 string "Reason system URI"

// ---- Medication Recommendations ----
* medicationRecommendations 0..* BackboneElement "Medication therapy recommendations"
  * id 1..1 string "Recommendation UUID"
  * patient 1..1 BackboneElement "Patient reference"
    * id 1..1 string "Patient ID"
    * type 1..1 string "Reference type (Patient)"
  * issuedOn 1..1 string "Recommendation date (YYYY-MM-DD)"
  * indication 0..1 BackboneElement "Indication (MTBDiagnosis) reference"
    * id 1..1 string "Diagnosis ID"
    * type 1..1 string "Reference type (MTBDiagnosis)"
  * priority 0..1 BackboneElement "Recommendation priority"
    * code 1..1 string "Priority code (e.g. 1, 2, 3)"
    * display 0..1 string "Priority display"
    * system 1..1 string "Priority system URI"
  * medication 0..* BackboneElement "Recommended medications (ATC codes)"
    * code 1..1 string "ATC code"
    * display 0..1 string "Medication display name"
    * system 1..1 string "Medication code system URI"
    * version 0..1 string "ATC version"
  * supportingVariants 0..* BackboneElement "Variants supporting this recommendation"
    * id 1..1 string "Variant ID"
    * type 1..1 string "Variant type (SNV | CNV | DNAFusion | RNAFusion)"
  * levelOfEvidence 0..1 BackboneElement "Level of evidence for recommendation"
    * grading 0..1 BackboneElement "Evidence grading"
      * code 1..1 string "Evidence grade code (e.g. m1A)"
      * display 0..1 string "Evidence grade display"
      * system 1..1 string "Evidence grade system URI"
    * addendums 0..* BackboneElement "Evidence addendums / flags"
      * code 1..1 string "Addendum code"
      * display 0..1 string "Addendum display"
      * system 1..1 string "Addendum system URI"
    * publications 0..* BackboneElement "Supporting publications"
      * pmid 0..1 string "PubMed ID"
      * doi 0..1 string "Digital Object Identifier"

// ---- Study Enrollment Recommendations ----
* studyEnrollmentRecommendations 0..* BackboneElement "Clinical study enrollment recommendations"
  * id 1..1 string "Recommendation UUID"
  * patient 1..1 BackboneElement "Patient reference"
    * id 1..1 string "Patient ID"
    * type 1..1 string "Reference type (Patient)"
  * issuedOn 1..1 string "Recommendation date (YYYY-MM-DD)"
  * indication 0..1 BackboneElement "Indication (MTBDiagnosis) reference"
    * id 1..1 string "Diagnosis ID"
    * type 1..1 string "Reference type (MTBDiagnosis)"
  * supportingVariants 0..* BackboneElement "Variants supporting enrollment"
    * id 1..1 string "Variant ID"
    * type 1..1 string "Variant type"
  * studies 0..* BackboneElement "Recommended studies"
    * id 1..1 string "Study identifier (e.g. NCT number)"
    * system 1..1 string "Study registry system URI (e.g. https://clinicaltrials.gov/study)"
