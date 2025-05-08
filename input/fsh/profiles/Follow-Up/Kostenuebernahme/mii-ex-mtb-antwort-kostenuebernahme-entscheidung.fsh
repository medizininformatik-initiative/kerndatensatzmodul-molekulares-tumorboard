Extension: MII_EX_MTB_Antwort_Kostenuebernahme_Entscheidung
Id: mii-ex-mtb-antwort-kostenuebernahme-entscheidung
Context: ClaimResponse
Title: "MII EX MTB Antwort Kostenuebernahme Entscheidung"
Description: "Entscheidung zum Antrag zur Kostenuebernahme"
//* insert EX_Header($mii-ex-mtb-antwort-kostenuebernahme-entscheidung)

* value[x] only CodeableConcept
* value[x] 1..1 MS


* valueCodeableConcept.coding ^short = "Status"
* valueCodeableConcept.coding ^definition = "Status der Antwort auf den Antrag zur Kostenuebernahme"
* valueCodeableConcept.coding.system = $mii-cs-mtb-antwort-kostenuebernahme-status
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.code from MII_VS_MTB_Antwort_Kostenuebernahme_Status