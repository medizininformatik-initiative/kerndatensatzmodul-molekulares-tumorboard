Profile: MII_PR_MTB_Oncotree
Parent: Observation
Id: mii-pr-mtb-oncotree
Title: "MII PR MTB Oncotree Klassifikation"
Description: "Grad des Tumors nach MSKCC Oncotree Klassifikation"
* insert PR_Header

// Observation represents WHO classification
* code 1..1 MS
* code.coding.system = $SCT
* code.coding = #371469007 // 371469007 |Histologic grade of neoplasm (observable entity)|

// Patient from Module Person
* subject 1..1 MS

* encounter 0..1 MS

// Grade from WHO Classification
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding.system = "http://data.mskcc.org/ontologies/oncotree" 
* valueCodeableConcept.coding.code 1..1 MS