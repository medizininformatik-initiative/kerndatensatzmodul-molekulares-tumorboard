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
* encounter ^short = "Gesundheitseinrichtungskontakt"
* encounter ^definition = "Kontakt zur Gesundheitseinrichtung"
* insert Translation(encounter ^short, de-DE, Gesundheitseinrichtungskontakt)
* insert Translation(encounter ^definition, de-DE, Kontakt zur Gesundheitseinrichtung)
* insert Translation(encounter ^short, en, Healthcare Facility Encounter)
* insert Translation(encounter ^definition, en, Encounter with the healthcare facility)

// Grade from WHO Classification
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding 1..1 MS

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #closed
* valueCodeableConcept.coding ^slicing.description = "Slice für Klassifikation des Tumors"
* valueCodeableConcept.coding ^slicing.ordered = false

* valueCodeableConcept.coding contains SCT 1..1 MS
* valueCodeableConcept.coding[SCT] ^short = "WHO-Klassifikation gemäß SNOMED CT"
* valueCodeableConcept.coding[SCT] ^definition = "Grad eines Tumors nach WHO-Klassifikation der Tumoren des zentralen Nervensystems gemäß SNOMED CT"
* insert Translation(valueCodeableConcept.coding[SCT] ^short, de-DE, WHO-Klassifikation gemäß SNOMED CT)
* insert Translation(valueCodeableConcept.coding[SCT] ^definition, de-DE, Grad eines Tumors nach WHO-Klassifikation der Tumoren des zentralen Nervensystems gemäß SNOMED CT)
* insert Translation(valueCodeableConcept.coding[SCT] ^short, en, WHO Classification according to SNOMED CT)
* insert Translation(valueCodeableConcept.coding[SCT] ^definition, en, Grade of a tumor according to the WHO classification of central nervous system tumors as per SNOMED CT)
* valueCodeableConcept.coding[SCT].system = $SCT (exactly)
* valueCodeableConcept.coding[SCT] from MII_VS_MTB_WHO_Grad_Tumor_ZNS (required)