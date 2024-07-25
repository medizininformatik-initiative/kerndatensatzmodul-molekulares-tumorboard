Profile: MII_PR_MTB_ANTRAG_KOSTENUEBERNAHME
Parent: Claim
Id: mii-pr-mtb-antrag-kostenuebernahme
Title: "MII PR MTB Antrag Kostenuebernahme"
Description: "MII Logical Model Modul Molekulares Tumorboard"

* status MS
* status = #active
* type MS
* type from MII_VS
* use MS
* patient MS
// * patient only Reference(MII_Patient)
* created MS
* provider MS
* provider only Reference(Organization)
* priority MS
* priority = #normal
* insurance MS
* insurance.sequence MS
* insurance.sequence = 1
* insurance.focal MS
* insurance.focal = true
* insurance.coverage MS
* insurance.coverage only Reference(Coverage)
* insurance.claimResponse MS
