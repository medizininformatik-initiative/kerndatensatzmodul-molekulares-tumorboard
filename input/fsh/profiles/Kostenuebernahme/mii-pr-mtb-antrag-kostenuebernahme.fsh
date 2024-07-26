Profile: MII_PR_MTB_ANTRAG_KOSTENUEBERNAHME
Parent: Claim
Id: mii-pr-mtb-antrag-kostenuebernahme
Title: "MII PR MTB Antrag Kostenuebernahme"
Description: "Antrag Kostenübernahme"

* status MS
* status = #active
* type MS
* type from MII_VS_MTB_ANTRAG_KOSTENUEBERNAHME
* use MS
* patient MS
// * patient only Reference($mii-patient)
* created MS
* created ^definition = "Austellungsdatum"
* provider MS
* provider only Reference(Organization)
* priority MS
* priority = #normal
// TODO: Überlegen ob prescription die richtige Wahl für Therapieempfehlung ist
* prescription MS
* prescription ^short = "Therapieempfehlung"
* prescription ^definition = "Verweis auf die Therapieempfehlung"
* prescription only Reference(MedicationRequest)
* insurance MS
* insurance.sequence MS
* insurance.sequence = 1
* insurance.focal MS
* insurance.focal = true
* insurance.coverage MS
* insurance.coverage only Reference(Coverage)
* insurance.claimResponse MS
