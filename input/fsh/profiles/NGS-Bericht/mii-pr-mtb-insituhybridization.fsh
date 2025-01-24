// WARNING: Created using perplexity.ai and gofish
// =========== DRAFT ONLY =========== 
Instance: undefined
InstanceOf: Observation
Usage: #example
* status = #final
* code = $loinc#51967-8 "Genetic analysis report"
* code.text = "FISH Analysis for Ewing Sarcoma"
* category = $observation-category#laboratory "Laboratory"
* method = $sct#104178000 "Fluorescence in situ hybridization"
* specimen = Reference(Specimen/example)
* component[0].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].code.text = "EWSR1-FLI1 fusion"
* component[=].valueCodeableConcept.coding[0] = $genenames#HGNC:3508 "EWSR1"
* component[=].valueCodeableConcept.coding[+] = $genenames#HGNC:3749 "FLI1"
* component[+].code = $loinc#81291-7 "Chromosomal translocation"
* component[=].valueCodeableConcept = $loinc#LA9633-4 "Present"
* component[+].code = $loinc#62374-4 "Human reference sequence assembly version"
* component[=].valueString = "GRCh38"
* component[+].code = $loinc#48013-7 "Genomic reference sequence ID"
* component[=].valueString = "t(11;22)(q24;q12)"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $genenames#HGNC:3508 "EWSR1"
* component[+].code = $loinc#51958-7 "Molecular abnormality"
* component[=].valueString = "One pair of signals intact, other pair split apart"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* interpretation.text = "Positive for EWSR1-FLI1 fusion, consistent with Ewing Sarcoma"
 