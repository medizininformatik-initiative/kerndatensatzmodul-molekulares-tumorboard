Profile: MII_PR_MTB_Response_Befund
Parent: MII_PR_Onko_Verlauf
Id: mii-pr-mtb-response-befund
Title: "MII PR MTB Response Befund"
Description: "Response Beurteilung nach DNPM"
* insert PR_Header

* status MS
* code MS
* subject MS
* focus MS // jedes mal noch Primärtumor angeben?
* effectiveDateTime MS
* effectiveDateTime ^short = "Zeitpunkt"
* method 1..1 MS
* method ^short = "Beurteilungsmethode"
// für valueCodeableConcept eigenes CS & VS?
* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "Response Beurteilung"
* partOf 1..1 MS
* partOf only Reference(MedicationStatement)