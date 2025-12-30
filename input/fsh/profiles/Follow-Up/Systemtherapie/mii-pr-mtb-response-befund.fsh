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
* insert Translation(effectiveDateTime ^short, de-DE, Zeitpunkt)
* insert Translation(effectiveDateTime ^definition, de-DE, Zeitpunkt des Response Befundes)
* insert Translation(effectiveDateTime ^short, en, Time Point)
* insert Translation(effectiveDateTime ^definition, en, Time point of the response assessment)
* method 1..1 MS
* method ^short = "Beurteilungsmethode"
* method ^definition = "Beurteilungsmethode RECIST oder RANO"
* insert Translation(method ^short, de-DE, Beurteilungsmethode)
* insert Translation(method ^definition, de-DE, Beurteilungsmethode RECIST oder RANO)
* insert Translation(method ^short, en, Assessment Method)
* insert Translation(method ^definition, en, Assessment method RECIST or RANO)
* method from MII_VS_MTB_Beurteilungsmethode

// für valueCodeableConcept eigenes CS & VS
// https://simplifier.net/medizininformatikinitiative-modulonkologie/mii-cs-onko-verlauf-gesamtbeurteilung
// entspricht nicht ganz dem was DNPM vorsieht

//ACHTUNG, nicht einfach überschreiben. Dann muss Onko entweder erweitert werden, oder es wird geslicet, dass entweder das eine oder das andere genommen werden kann
* valueCodeableConcept 0..1 MS

* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "Slice für die Verwendung der verschiedenen Codesysteme für Beurteilung von Response"
* valueCodeableConcept.coding contains oBDS 0..* MS and MTB 0..* MS

* valueCodeableConcept.coding[oBDS] ^short = "Response Beurteilung nach oBDS-Kriterien"
* insert Translation(valueCodeableConcept.coding[oBDS] ^short, de-DE, Response Beurteilung nach oBDS-Kriterien)
* insert Translation(valueCodeableConcept.coding[oBDS] ^short, en, Response assessment according to oBDS criteria)
* valueCodeableConcept.coding[oBDS].system = $mii-cs-onko-verlauf-gesamtbeurteilung
* valueCodeableConcept.coding[oBDS].code from MII_VS_Onko_Verlauf_Gesamtbeurteilung

* valueCodeableConcept.coding[MTB] ^short = "Response Beurteilung nach Recist oder Rano iM Rahmen des MTB"
* insert Translation(valueCodeableConcept.coding[MTB] ^short, de-DE, Response Beurteilung nach Recist oder Rano im Rahmen des MTB)
* insert Translation(valueCodeableConcept.coding[MTB] ^short, en, Response assessment according to RECIST or RANO within the MTB)
* valueCodeableConcept.coding[MTB].system = $mii-cs-mtb-response-befund-beurteilung
* valueCodeableConcept.coding[MTB].code from MII_VS_MTB_Response_Befund_Beurteilung

* partOf 0..* MS
* partOf ^short = "Systemische Therapie"
* partOf ^definition = "Daszugehoerige, uebergeordnete Systemische Therapie"
* insert Translation(partOf ^short, de-DE, Systemische Therapie)
* insert Translation(partOf ^definition, de-DE, Dazugehoerige uebergeordnete Systemische Therapie)
* insert Translation(partOf ^short, en, Systemic Therapy)
* insert Translation(partOf ^definition, en, Associated parent systemic therapy)
* partOf only Reference(MII_PR_MTB_Systemische_Therapie or Procedure)