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

// Grade from WHO Classification
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS
