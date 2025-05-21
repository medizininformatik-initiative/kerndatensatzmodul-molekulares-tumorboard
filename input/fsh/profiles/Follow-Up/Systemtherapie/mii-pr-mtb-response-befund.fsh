Profile: MII_PR_MTB_Response_Befund
Parent: MII_PR_Onko_Verlauf
Id: mii-pr-mtb-response-befund
Title: "MII PR MTB Response Befund"
Description: "Response Beurteilung nach DNPM"
* insert PR_Header

* status MS
* code MS
* subject MS
* focus MS 
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)
* effectiveDateTime MS
* effectiveDateTime ^short = "Zeitpunkt"
* effectiveDateTime ^definition = "Zeitpunkt des Response Befundes"
// Es stellt sich die Frage ob es sinnvoll ist überhaupt vom MII_PR_Onko_Verlauf zu erben
// entweder muss man method und dann auch value slicen, um beides zu ermöglichen
// oder ein alleinstehendes MTB Profil mit unabhänigen Elementen method und value
* method 1..1 MS
* method ^short = "Beurteilungsmethode"
* method ^definition = "Beurteilungsmethode RECIST oder RANO"
// * method.coding.system = $mii-cs-mtb-response-befund-beurteilungsmethode
// * method.coding.code from MII_VS_MTB_Response_Befund_Beurteilungsmethode

// für valueCodeableConcept eigenes CS & VS
// https://simplifier.net/medizininformatikinitiative-modulonkologie/mii-cs-onko-verlauf-gesamtbeurteilung
// entspricht nicht ganz dem was DNPM vorsieht

//ACHTUNG, nicht einfach überschreiben. Dann muss Onko entweder erweitert werden, oder es wird geslicet, dass entwerder das eine oder das andere genommen werden kann
* valueCodeableConcept 0..1 MS
* valueCodeableConcept ^short = "Response Beurteilung"
* valueCodeableConcept.coding.system = $mii-cs-mtb-response-befund-beurteilung
* valueCodeableConcept.coding.code from MII_VS_MTB_Response_Befund_Beurteilung
* partOf 0..* MS
* partOf ^short = "Systemische Therapie"
* partOf ^definition = "Daszugehoerige, uebergeordnete Systemische Therapie"
* partOf only Reference(MII_PR_MTB_Systemische_Therapie or Procedure)