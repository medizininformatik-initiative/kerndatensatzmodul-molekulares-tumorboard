// WARNING: Created using perplexity.ai and gofish
// =========== DRAFT ONLY =========== 
/*Instance: Observation-FISH-Analysis-for-Ewing-Sarcoma
InstanceOf: Observation
Usage: #example
* status = #final
* code = $LNC#51967-8 "Genetic analysis report"
* code.text = "FISH Analysis for Ewing Sarcoma"
* category = $fhir-observation-category#laboratory "Laboratory"
* method = $SCT#104178000 "Fluorescence in situ hybridization"
* specimen = Reference(Specimen/example)
* component[0].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].code.text = "EWSR1-FLI1 fusion"
* component[=].valueCodeableConcept.coding[0] = $HGNC#HGNC:3508 "EWSR1"
* component[=].valueCodeableConcept.coding[+] = $HGNC#HGNC:3749 "FLI1"
* component[+].code = $LNC#81291-7 "Chromosomal translocation"
* component[=].valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[+].code = $LNC#62374-4 "Human reference sequence assembly version"
* component[=].valueString = "GRCh38"
* component[+].code = $LNC#48013-7 "Genomic reference sequence ID"
* component[=].valueString = "t(11;22)(q24;q12)"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $HGNC#HGNC:3508 "EWSR1"
* component[+].code = $LNC#51958-7 "Molecular abnormality"
* component[=].valueString = "One pair of signals intact, other pair split apart"
* interpretation = $hl7-v3-observation-interpretation#POS "Positive"
* interpretation.text = "Positive for EWSR1-FLI1 fusion, consistent with Ewing Sarcoma"
 
*/

Profile: MII_PR_MTB_Biomarker_InSituHybridization
Parent: MII_PR_MTB_Molekularer_Biomarker
Id: mii-pr-mtb-insituhybridization
Title: "MII PR MTB In Situ Hybridization"   
Description: "Molekularer Biomarker - In Situ Hybridization Profil"