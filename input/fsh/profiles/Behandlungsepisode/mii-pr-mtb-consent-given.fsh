Profile: MII_PR_MTB_Consent_Given
Parent: Observation
Id: mii-pr-mtb-consent-given
Title: "MII PR MTB Consent"
Description: "Beschreibt, ob und wann der Consent zum Einschluss ins MTB gegeben wurde."
* insert PR_Header

// Observation represents WHO classification
* code 1..1 MS
* code.coding 1..* MS
* code.coding = $LNC#105511-0 "Was consent given"
* status = #final

// Patient from Module Person
* subject 1..1 MS
* subject only Reference(MII_PR_Person_Patient or MII_PR_Person_PatientPseudonymisiert)

// Encounter from Module Fall
* encounter 0..1 MS
* encounter only Reference(MII_PR_Fall_KontaktGesundheitseinrichtung)
* encounter ^short = "Gesundheitseinrichtungskontakt"
* encounter ^definition = "Kontakt zur Gesundheitseinrichtung"

// Consent options preferred from LOINC or SCT
* value[x] 1..1 MS
* value[x] only CodeableConcept

* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding ^short = "Dokumentierter Consent"
* valueCodeableConcept.coding ^definition = "Dokumentation der Zustimmung der Ablehnung eines Consents"
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "Slice für mögliche Antwort zum Consent"
* valueCodeableConcept.coding ^slicing.ordered = false

* valueCodeableConcept.coding contains LNC 0..1
* valueCodeableConcept.coding[LNC].system = $LNC
* valueCodeableConcept.coding[LNC] ^comment = "LOINC: Yes - LA33-6, No - LA32-8"

* valueCodeableConcept.coding contains SCT 0..1
* valueCodeableConcept.coding[SCT].system = $SCT
* valueCodeableConcept.coding[SCT] ^comment = "SNOMED CT: Yes (qualifier value) - 373066001, No (qualifier value) - 373067005"
