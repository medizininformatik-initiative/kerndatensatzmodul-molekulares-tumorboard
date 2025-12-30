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
* insert Translation(encounter ^short, de-DE, Gesundheitseinrichtungskontakt)
* insert Translation(encounter ^definition, de-DE, Kontakt zur Gesundheitseinrichtung)
* insert Translation(encounter ^short, en, Healthcare Facility Encounter)
* insert Translation(encounter ^definition, en, Encounter with the healthcare facility)

* value[x] 1..1 MS
* value[x] only CodeableConcept

* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding ^short = "Dokumentierter Consent"
* valueCodeableConcept.coding ^definition = "Dokumentation der Zustimmung der Ablehnung eines Consents"
* insert Translation(valueCodeableConcept.coding ^short, de-DE, Dokumentierter Consent)
* insert Translation(valueCodeableConcept.coding ^definition, de-DE, Dokumentation der Zustimmung der Ablehnung eines Consents)
* insert Translation(valueCodeableConcept.coding ^short, en, Documented Consent)
* insert Translation(valueCodeableConcept.coding ^definition, en, Documentation of consent approval or rejection)
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #closed
* valueCodeableConcept.coding ^slicing.description = "Slice für mögliche Antwort zum Consent"
* valueCodeableConcept.coding ^slicing.ordered = false

* valueCodeableConcept.coding contains SCT 1..1
* valueCodeableConcept.coding[SCT].system = $SCT (exactly)
* valueCodeableConcept.coding[SCT].code ^comment = "SNOMED CT: Yes (qualifier value) - 373066001, No (qualifier value) - 373067005"
