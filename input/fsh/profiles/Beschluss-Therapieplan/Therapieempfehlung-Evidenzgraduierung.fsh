Extension: MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung
Id: mii-ex-mtb-therapieempfehlung-evidenzgraduierung
Context: RequestGroup, MedicationRequest
Title: "MII EX MTB Therapieempfehlung Evidenzgraduierung"
Description: "Evidenzgraduierung der (einzelnen) Therapieempfehlung"
* insert EX_Header($mii-ex-mtb-therapieempfehlung-evidenzgraduierung)

* value[x] only CodeableConcept
* value[x] 1..1 MS

* value[x] ^short = "Evidenzgraduierung"
* value[x] ^definition = "Evidenzgraduierung für Biomarker-basierte Therapieempfehlung"
* value[x] ^comment = "Evidenzgraduierung wird durch einen Evidenzgrad und einen optionalen Zusatzverweis angegeben"

* valueCodeableConcept.coding 1..* MS
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "Slice für die Evidenzgraduierung anhand von `system`"
* valueCodeableConcept.coding ^slicing.ordered = false

* valueCodeableConcept.coding contains Evidenzgrad 1..1 MS
* valueCodeableConcept.coding[Evidenzgrad] ^short = "Evidenzgrad"
* valueCodeableConcept.coding[Evidenzgrad] ^definition = "Evidenzgrad der Therapieempfehlung"
* valueCodeableConcept.coding[Evidenzgrad].system = $mii-cs-mtb-therapieempfehlung-evidenzgrad
* valueCodeableConcept.coding[Evidenzgrad].code 1..1 MS

* valueCodeableConcept.coding contains Zusatzverweis 0..* MS
* valueCodeableConcept.coding[Zusatzverweis] ^short = "Zusatzverweis"
* valueCodeableConcept.coding[Zusatzverweis] ^definition = "Zusatzverweis zum Evidenzgrad"
* valueCodeableConcept.coding[Zusatzverweis].system = $mii-cs-mtb-therapieempfehlung-evidenzgrad-zusatzverweis
* valueCodeableConcept.coding[Zusatzverweis].code 1..1 MS