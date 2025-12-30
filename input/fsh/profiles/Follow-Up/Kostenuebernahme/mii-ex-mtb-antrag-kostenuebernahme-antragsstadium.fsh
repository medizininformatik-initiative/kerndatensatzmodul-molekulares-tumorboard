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
* insert Translation(valueCodeableConcept.coding ^short, de-DE, Antragsstadium)
* insert Translation(valueCodeableConcept.coding ^definition, de-DE, Stadium des Antrags auf Kostenuebernahme)
* insert Translation(valueCodeableConcept.coding ^short, en, Application Stage)
* insert Translation(valueCodeableConcept.coding ^definition, en, Stage of the cost coverage application)
* valueCodeableConcept.coding.system = $mii-cs-mtb-antrag-kostenuebernahme-antragsstadium
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.code from MII_VS_MTB_Antrag_Kostenuebernahme_Antragsstadium
