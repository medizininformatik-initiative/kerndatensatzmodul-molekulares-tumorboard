Profile: MII_PR_MTB_Antwort_Kostenuebernahme
Parent: ClaimResponse
Id: mii-pr-mtb-antwort-kostenuebernahme
Title: "MII PR MTB Anwort Kostenuebernahme"
Description: "Antwort auf Antrag Kostenübernahme"

* status MS
* status = #active
* type MS
* type from MII_VS_MTB_Antrag_Kostenuebernahme
* use MS
* patient MS
// * patient only Reference(MII_Patient)
* created MS
* created ^short = "Datum"
* insurer MS
* request MS
* request ^short = "Antrag"
* request ^definition = "Dazugehöriger Antrag zur Kostenübernahme"
* request only Reference(MII_PR_MTB_Antrag_Kostenuebernahme)
* outcome MS
* outcome = http://hl7.org/fhir/remittance-outcome#complete


// * item MS
// * item.adjudication MS
// * item.adjudication.category = http://terminology.hl7.org/CodeSystem/adjudication#eligpercent
// * item.adjudication.value 1..1 MS
// * item.adjudication.reason MS
// * item.adjudication.reason ^short = "Grund"
