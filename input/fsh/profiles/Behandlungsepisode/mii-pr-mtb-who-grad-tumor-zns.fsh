Profile: MII_PR_MTB_WHO_Grad_Tumor_ZNS
Parent: Observation
Id: mii-pr-mtb-who-grad-tumor-zns
Title: "MII PR MTB WHO Grad Tumor ZNS"
Description: "Grad des Tumors nach WHO Klassifikation der Tumoren des zentralen Nervensystems (ZNS)"
* insert PR_Header

// Observation represents WHO classification
* code 1..1 MS
* code.coding 1..* MS
* code.coding = $SCT#396921005 "WHO grade finding for central nervous system tumor"

// Patient from Module Person
* subject 1..1 MS
* subject only Reference(MII_PR_Person_Patient or MII_PR_Person_PatientPseudonymisiert)

// Encounter from Module Fall
* encounter 0..1 MS
* encounter only Reference(MII_PR_Fall_KontaktGesundheitseinrichtung)

// Grade from WHO Classification
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "Slice fuer Codesystem"
* valueCodeableConcept.coding ^slicing.ordered = false

* valueCodeableConcept.coding contains SCT 0..1 MS
* valueCodeableConcept.coding.system = $SCT
* valueCodeableConcept.coding.code from MII_VS_MTB_WHO_Grad_Tumor_ZNS