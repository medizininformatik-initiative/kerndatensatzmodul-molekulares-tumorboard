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

// für valueCodeableConcept eigenes CS & VS
// https://simplifier.net/medizininformatikinitiative-modulonkologie/mii-cs-onko-verlauf-gesamtbeurteilung
// entspricht nicht ganz dem was DNPM vorsieht

//ACHTUNG, nicht einfach überschreiben. Dann muss Onko entweder erweitert werden, oder es wird geslicet, dass entwerder das eine oder das andere genommen werden kann
* valueCodeableConcept 0..1 MS
* valueCodeableConcept ^short = "Response Beurteilung"
* valueCodeableConcept.coding.system = $mii-cs-mtb-response-befund-beurteilung
* valueCodeableConcept.coding.code from MII_VS_MTB_Response_Befund_Beurteilung
* partOf 1..* MS
* partOf only Reference(MII_PR_MTB_Systemische_Therapie or Procedure)