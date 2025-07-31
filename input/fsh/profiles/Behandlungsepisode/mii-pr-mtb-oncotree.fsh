Profile: MII_PR_MTB_Oncotree
Parent: Observation
Id: mii-pr-mtb-oncotree
Title: "MII PR MTB Oncotree Klassifikation"
Description: "Grad des Tumors nach MSKCC Oncotree Klassifikation"
* insert PR_Header

// Observation represents OncoTree classification
* code 1..1 MS
* code.coding.system = $SCT
* code.coding = #371469007 // 371469007 |Histologic grade of neoplasm (observable entity)|

// Patient from Module Person
* subject 1..1 MS
* subject only Reference(MII_PR_Person_Patient or MII_PR_Person_PatientPseudonymisiert or Patient)

// Encounter from Module Fall
* encounter 0..1 MS
* encounter only Reference(MII_PR_Fall_KontaktGesundheitseinrichtung or Encounter)
* encounter ^short = "Gesundheitseinrichtungskontakt"
* encounter ^definition = "Kontakt zur Gesundheitseinrichtung"

// Grade from OncoTree
* value[x] 1..1 MS
* value[x] only CodeableConcept

* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS

* valueCodeableConcept.coding.system = $OT (exactly)