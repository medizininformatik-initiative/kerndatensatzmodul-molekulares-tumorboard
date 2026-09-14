/* Instance: MII-EXA-MTB-Immunohistochemistry-PDL1
InstanceOf: MII_PR_MTB_Immunohistochemistry_PDL1
Usage: #example
Title: "Beispiel PDL1 Immunohistochemie"
Description: "Beispiel fuer PDL1 Immunhistochemie mit Berechnung der relvanten Scores"

* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunhistochemistry-pdl1"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $SCT#1234806008 "Observation using immunohistochemistry (observable entity)"
* subject = Reference(Patient/mii-exa-mtb-patient)
* valueQuantity = 2.61 $UCUM#% 
* specimen = Reference(Specimen/mii-exa-mtb-specimen)
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:17635 "PD-L1" // eigentlich CD274
* component[tps-score].code = $NCIT#C184941	"PD-L1 Tumor Proportion Score"	 
* component[tps-score].valueQuantity = 5 $UCUM#% "TPS Score"
* component[cps-score].code = $NCIT#C176582 "PD-L1 Combined Positive Score"	 
* component[cps-score].valueQuantity = 10 $UCUM#% "CPS Score"
* component[ips-score].code = $NCIT#C184941	"PD-L1 Tumor Proportion Score"	 
* component[ics-score].valueQuantity = 15 $UCUM#% "ICS Score"
* component[tc-score].code =  $LNC#83053-9 "Cells.programmed cell death ligand 1/Viable tumor cells in Tissue by Immune stain"
* component[tc-score].valueQuantity = 20 $UCUM#% "TC Score"

*/
