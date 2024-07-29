// TODO: (Abstraktes) Basisprofil erstellen in MTB/Onko für Biopsie oder Histologie-Evaluation
Profile: MII_PR_MTB_Biopsie_Auftrag
Parent: MII_PR_Patho_Service_Request
Id: mii-pr-mtb-biopsie-auftrag
Title: "MII PR MTB Biopsie Auftrag"
Description: "Auftrag zur (erneuten) Biopsie"
* insert PR_Header
* reasonCode 0..1 MS
// TODO: Bindingstärke klären
* reasonCode from MII_VS_MTB_AuftragBegruendung (preferred)
* reasonReference ^slicing.discriminator.type = #type
* reasonReference ^slicing.discriminator.path = "reference.reference"
* reasonReference ^slicing.rules = #open
* reasonReference ^slicing.description = "Slice für referenzierten Histologiebefund oder bestimmten Tumorzellgehalt"
* reasonReference ^slicing.ordered = false

* reasonReference contains Histologie 0..1 MS
* reasonReference[Histologie] ^short = "Histologiebefund"
* reasonReference[Histologie] ^definition = "Verweis auf Histologiebefund"
* reasonReference[Histologie] 0..1 MS
* reasonReference[Histologie] only Reference(MII_PR_Onko_Befund or DiagnosticReport)

* reasonReference contains Tumorzellgehalt 0..1 MS
* reasonReference[Tumorzellgehalt] ^short = "Tumorzellgehalt"
* reasonReference[Tumorzellgehalt] ^definition = "Verweis auf bestimmten Tumorzellgehalt"
* reasonReference[Tumorzellgehalt] 0..1 MS
* reasonReference[Tumorzellgehalt] only Reference(MII_PR_MTB_Tumorzellgehalt or Observation)

* specimen 1..* MS
* specimen only Reference(MII_PR_Onko_Specimen or MII_PR_Patho_Specimen or ProfileSpecimenBioprobe or Specimen)