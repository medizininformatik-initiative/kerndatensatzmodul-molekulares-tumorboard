Extension: MII_EX_MTB_Antrag_Kostenuebernahme_Antragsstadium
Id: mii-ex-mtb-antrag-kostenuebernahme-antragsstadium
Context: Claim
Title: "MII EX MTB Antrag Kostenuebernahme Antragsstadium"
Description: "Stadium des Antrags zur Kostenuebernahme"
* insert EX_Header($mii-ex-mtb-antrag-kostenuebernahme-antragsstadium)

* value[x] only CodeableConcept
* value[x] 1..1 MS

* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding ^short = "Antragsstadium"
* valueCodeableConcept.coding ^definition = "Stadium des Antrags auf Kostenuebernahme"
* valueCodeableConcept.coding.system = $mii-cs-mtb-antrag-kostenuebernahme-antragsstadium
* valueCodeableConcept.coding.code 1..1 MS
