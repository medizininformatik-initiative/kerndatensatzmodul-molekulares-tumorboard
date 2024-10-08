Extension: MII_EX_MTB_Antwort_Kostenuebernahme_Antragsstadium
Id: mii-ex-mtb-antwort-kostenuebernahme-antragsstadium
Title: "MII EX MTB Antwort Kostenuebernahme Antragsstadium"
Description: "Stadium der Antwort auf den Antrag zur Kostenuebernahme"
* insert EX_Header($mii-ex-mtb-antwort-kostenuebernahme-antragsstadium)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS

* valueCodeableConcept.coding 1..2 MS
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "Status und Begründung der Antwort auf den Antrag zur Kostenuebernahme"
* valueCodeableConcept.coding ^slicing.ordered = false

* valueCodeableConcept.coding contains Status 1..1 MS
* valueCodeableConcept.coding[Status] ^short = "Status"
* valueCodeableConcept.coding[Status] ^definition = "Status der Antwort auf den Antrag zur Kostenuebernahme"
* valueCodeableConcept.coding[Status].system = $mii-vs-mtb-antwort-kostenuebernahme-status
* valueCodeableConcept.coding[Status].code 1..1 MS

* valueCodeableConcept.coding contains Grund 0..1 MS
* valueCodeableConcept.coding[Grund] ^short = "Grund"
* valueCodeableConcept.coding[Grund] ^definition = "Grund der Ablehnung des Antrags auf Kostenuebernahme"
* valueCodeableConcept.coding[Grund].system = $mii-vs-mtb-ablehnung-kostenuebernahme-grund
* valueCodeableConcept.coding[Grund].code 1..1 MS