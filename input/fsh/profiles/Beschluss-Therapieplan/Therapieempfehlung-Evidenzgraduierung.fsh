Extension: MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung
Id: mii-ex-mtb-therapieempfehlung-evidenzgraduierung
Title: "MII EX MTB Therapieempfehlung Evidenzgraduierung"
Description: "Evidenzgraduierung der (einzelnen) Therapieempfehlung"
* insert EX_Header($mii-ex-mtb-therapieempfehlung-evidenzgraduierung)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.coding 1..* MS
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "Slice für die Evidenzgraduierung anhand von `system`"
* valueCodeableConcept.coding ^slicing.ordered = false

* valueCodeableConcept.coding contains Evidenzgrad 1..1 MS
* valueCodeableConcept.coding[Evidenzgrad] ^short = "Evidenzgrad"
* valueCodeableConcept.coding[Evidenzgrad] ^definition = "Evidenzgrad der Therapieempfehlung"
* valueCodeableConcept.coding[Evidenzgrad].system = $mii-vs-mtb-therapieempfehlung-evidenzgrad
* valueCodeableConcept.coding[Evidenzgrad].code 1..1 MS

* valueCodeableConcept.coding contains Zusatzverweis 0..* MS
* valueCodeableConcept.coding[Zusatzverweis] ^short = "Zusatzverweis"
* valueCodeableConcept.coding[Zusatzverweis] ^definition = "Zusatzverweis zum Evidenzgrad"
* valueCodeableConcept.coding[Zusatzverweis].system = $mii-vs-mtb-therapieempfehlung-evidenzgrad-zusatzverweis
* valueCodeableConcept.coding[Zusatzverweis].code 1..1 MS