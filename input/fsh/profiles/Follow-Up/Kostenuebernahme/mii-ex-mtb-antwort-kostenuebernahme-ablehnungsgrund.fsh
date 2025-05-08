Extension: MII_EX_MTB_Antwort_Kostenuebernahme_Ablehnungsgrund
Id: mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund
Context: ClaimResponse
Title: "MII EX MTB Antwort Kostenuebernahme Ablehnungsgrund"
Description: "Ablehnungsgrund des Antrags auf Kostenuebernahme"
//* insert EX_Header($mii-ex-mtb-antwort-kostenuebernahme-antragsstadium)

* value[x] only CodeableConcept
* value[x] 1..1 MS

* valueCodeableConcept.coding ^short = "Grund"
* valueCodeableConcept.coding ^definition = "Grund der Ablehnung des Antrags auf Kostenuebernahme"
* valueCodeableConcept.coding.system = $mii-cs-mtb-kostenuebernahme-ablehnungsgrund
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.code from MII_VS_MTB_Kostenuebernahme_Ablehnungsgrund