Profile: MII_PR_MTB_ANTRAG_KOSTENUEBERNAHME_ANTWORT
Parent: ClaimResponse
Id: mii-pr-mtb-antrag-kostenuebernahme-antwort
Title: "MII PR MTB Antrag Kostenuebernahme Antwort"
Description: "MII Logical Model Modul Molekulares Tumorboard"

* status MS
* status = #active
* type MS
* type from MII_VS
* use MS
* patient MS
// * patient only Reference(MII_Patient)
* created MS
* insurer MS
* outcome MS
* outcome = http://hl7.org/fhir/remittance-outcome#complete

* item MS
* item.adjudication MS
* item.adjudication.category = http://terminology.hl7.org/CodeSystem/adjudication#eligpercent
* item.adjudication.value 1..1 MS 
