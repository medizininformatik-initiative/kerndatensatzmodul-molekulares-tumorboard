Profile: MII_PR_MTB_Genomic_Study_Analysis
Parent: MII_PR_MolGen_GenomicStudyAnalysis
Id: genomic-study-analysis
Title: "Genomic Study Analysis"
Description: "Die Genomic Study Analysis beschreibt die Methodik einer bestimmten molekulargenetischen Untersuchung."
* insert PR_Header

* extension MS
* extension[method-type] MS 
* extension[method-type].valueCodeableConcept from MII_VS_MTB_Genomic_Analysis_Method_Type
* extension[genome-build] MS
* extension[focus] MS
* extension[specimen] MS
* extension[device] MS
* extension[regions] MS 

* extension contains MII_EX_MTB_GenomicStudyAnalysis_QC named qc 0..1 MS

* status MS 
* identifier MS
* category MS
* performed[x] MS
/* * extension contains GenomicStudyAnalysisMethodType named method-type 0..*
    and GenomicStudyAnalysisChangeType named change-type 0..*
    and GenomicStudyAnalysisGenomeBuild named genome-build 0..1
    and GenomicStudyAnalysisGenomicSourceClass named genomic-source-class 0..1				 
    and GenomicStudyAnalysisTitle named title 0..1
    and GenomicStudyAnalysisFocus named focus 0..*
    and GenomicStudyAnalysisSpecimen named specimen 0..*
    and GenomicStudyAnalysisMetrics named metrics 0..1
    and GenomicStudyAnalysisRegions named regions 0..1
    and GenomicStudyAnalysisDevice named device 0..*
    and GenomicStudyAnalysisProtocolPerformed named protocol-performed 0..1
    and GenomicStudyAnalysisInput named input 0..*
    and GenomicStudyAnalysisOutput named output 0..*
* extension[GenomicStudyAnalysisMethodType] ^short = "GenomicStudy.analysis.methodType"
* extension[GenomicStudyAnalysisChangeType] ^short = "GenomicStudy.analysis.changeType"
* extension[GenomicStudyAnalysisGenomeBuild] ^short = "GenomicStudy.analysis.genomeBuild"
* extension[GenomicStudyAnalysisGenomicSourceClass] ^short = "GenomicStudy.analysis.genomicSourceClass"
* extension[GenomicStudyAnalysisTitle] ^short = "GenomicStudy.analysis.title"
* extension[GenomicStudyAnalysisFocus] ^short = "GenomicStudy.analysis.focus"
* extension[GenomicStudyAnalysisSpecimen] ^short = "GenomicStudy.analysis.specimen"
* extension[GenomicStudyAnalysisMetrics] ^short = "Genomic Study Analysis Metrics"
* extension[GenomicStudyAnalysisRegions] ^short = "Genomic Study Analysis Regions"
* extension[GenomicStudyAnalysisDevice] ^short = "GenomicStudy.analysis.device"
* extension[GenomicStudyAnalysisProtocolPerformed] ^short = "GenomicStudy.protocolPerformed"
* extension[GenomicStudyAnalysisInput] ^short = "GenomicStudy.analysis.input"
* extension[GenomicStudyAnalysisOutput] ^short = "GenomicStudy.analysis.output"
* identifier ^short = "GenomicStudy.analysis.identifier"
* instantiatesCanonical only Canonical(PlanDefinition or ActivityDefinition)
  * ^short = "GenomicStudy.analysis.instantiatesCanonical"
* instantiatesUri ^short = "GenomicStudy.analysis.instantiatesUri"
* status = #completed
* category 1..1
* category.coding 1..1
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* performed[x] only dateTime
* performedDateTime ^short = "GenomicStudy.analysis.date"
* performer.actor only Reference(Practitioner or PractitionerRole or Organization or Device)
  * ^short = "GenomicStudy.analysis.performer.actor"
* performer.function ^short = "GenomicStudy.analysis.performer.role"
* note ^short = "GenomicStudy.analysis.note"
* basedOn 0..0
* partOf 0..0
* statusReason 0..0
* code 0..0
* encounter 0..0
* recorder 0..0
* asserter 0..0
* location 0..0
* bodySite 0..0
* outcome 0..0
* complication 0..0
* complicationDetail 0..0
* followUp 0..0
* focalDevice 0..0
* usedReference 0..0
* usedCode 0..0
* reasonCode 0..0
* reasonReference 0..0
* report 0..0

*/