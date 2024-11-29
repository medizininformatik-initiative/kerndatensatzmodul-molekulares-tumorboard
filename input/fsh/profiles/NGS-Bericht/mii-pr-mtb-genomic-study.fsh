Profile: MII_PR_MTB_Genomic_Study
Parent: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study
Id: mii-pr-mtb-genomic-study
Title: "MII PR MTB Genomic Study"
Description: "Genomic Study beinhaltet und verweist über GenomicStudyAnalysis auf Details zu den einzelnen Untersuchungen einer NGS-Untersuchung (Sequenzierung, Variant Calling, CNV-Analyse, Fusions-Analysen etc.)"
* insert PR_Header


/*
// nachfolgend sind alle original-Definitionen aus GenomicStudy übernommen und können hier modifiziert werden

// Slices werden im GenomicStudy-Profil definiert
* extension contains GenomicStudyAnalysisExt named genomic-study-analysis 0..* 
//  and GenomicStudyReferrerExt named referrer 0..1
* extension[GenomicStudyAnalysisExt] ^short = "GenomicStudy.analysis"
//* extension[GenomicStudyReferrerExt] ^short = "GenomicStudy.referrer"

* text ^short = "GenomicStudy.description"
* identifier ^short = "GenomicStudy.identifier"
* instantiatesCanonical only Canonical(PlanDefinition)
  * ^short = "GenomicStudy.instantiatesCanonical"
* instantiatesUri ^short = "GenomicStudy.instantiatesUri"
* status 
  * ^short = "GenomicStudy.status"
  * ^definition = "GenomicStudy.status is different from Procedure.status, see [mapping](ConceptMap-GenomicStudyStatusMap.html)"
* category 1..1
* category.coding 1..1
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code from GenomicStudyTypeVS (example)
  * ^short = "GenomicStudy.type"
* subject ^short = "GenomicStudy.subject"
* encounter ^short = "GenomicStudy.encounter"
* performed[x] only dateTime
* performedDateTime ^short = "GenomicStudy.startDate"
* basedOn only Reference(ServiceRequest)
  * ^short = "GenomicStudy.basedOn"
* asserter only Reference(Practitioner or PractitionerRole)
  * ^short = "GenomicStudy.interpreter"
* reasonCode ^short = "GenomicStudy.reason"
* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor)
  * ^short = "GenomicStudy.reason"
* note ^short = "GenomicStudy.note"
/* Die nachfolgenden Attribute sind in GenomicStudy restriktiertet, damit die spätere Migartion zur R5-Ressource GenomicStudy durchgeführt werden kann
* partOf 0..0
* statusReason 0..0
* recorder 0..0
* location 0..0
* bodySite 0..0
* outcome 0..0
* report 0..0
* complication 0..0
* complicationDetail 0..0
* followUp 0..0
* focalDevice 0..0
* usedReference 0..0
* usedCode 0..0
*/