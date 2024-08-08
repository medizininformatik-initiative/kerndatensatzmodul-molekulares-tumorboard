Profile: MII_PR_MTB_Response_Befund
Parent: Observation
Id: mii-pr-mtb-response-befund
Title: "MII PR MTB Response Befund"
Description: "Response Beurteilung nach DNPM"
* insert PR_Header


* status MS
* code MS
* effectiveDateTime MS
* effectiveDateTime ^short = "Zeitpunkt"
* method 1..1 MS
* method ^short = "Beurteilungsmethode"
// für valueCodeableConcept braucht es noch ein VS für coding.code
// und ein CS für coding.system
* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "Response Beurteilung"
* partOf 1..1 MS
* partOf only Reference(MedicationStatement)