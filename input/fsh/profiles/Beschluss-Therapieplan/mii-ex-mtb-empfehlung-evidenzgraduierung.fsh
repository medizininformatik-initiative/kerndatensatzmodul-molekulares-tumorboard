Extension: MII_EX_MTB_Empfehlung_Evidenzgraduierung
Id: mii-ex-mtb-empfehlung-evidenzgraduierung
Context: RequestGroup, MedicationRequest, Observation
Title: "MII EX MTB Empfehlung Evidenzgraduierung"
Description: "Evidenzgraduierung der (einzelnen) Empfehlung"
* insert EX_Header($mii-ex-mtb-empfehlung-evidenzgraduierung)

* value[x] only CodeableConcept
* value[x] 1..1 MS

* value[x] ^short = "Evidenzgraduierung"
* value[x] ^definition = "Evidenzgraduierung für Biomarker-basierte Empfehlung"
* value[x] ^comment = "Evidenzgraduierung wird durch einen Evidenzgrad und einen optionalen Zusatzverweis angegeben"
* insert Translation(value[x] ^short, de-DE, Evidenzgraduierung)
* insert Translation(value[x] ^definition, de-DE, Evidenzgraduierung für Biomarker-basierte Empfehlung)
* insert Translation(value[x] ^short, en, Evidence Grading)
* insert Translation(value[x] ^definition, en, Evidence grading for biomarker-based recommendation)

* valueCodeableConcept.coding 1..* MS
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "Slice für die Evidenzgraduierung anhand von `system`"
* valueCodeableConcept.coding ^slicing.ordered = false

* valueCodeableConcept.coding contains Evidenzgrad 1..1 MS
* valueCodeableConcept.coding[Evidenzgrad] ^short = "Evidenzgrad"
* valueCodeableConcept.coding[Evidenzgrad] ^definition = "Evidenzgrad der Empfehlung"
* insert Translation(valueCodeableConcept.coding[Evidenzgrad] ^short, de-DE, Evidenzgrad)
* insert Translation(valueCodeableConcept.coding[Evidenzgrad] ^definition, de-DE, Evidenzgrad der Empfehlung)
* insert Translation(valueCodeableConcept.coding[Evidenzgrad] ^short, en, Evidence Level)
* insert Translation(valueCodeableConcept.coding[Evidenzgrad] ^definition, en, Evidence level of the recommendation)
* valueCodeableConcept.coding[Evidenzgrad].system = $mii-cs-mtb-empfehlung-evidenzgrad
* valueCodeableConcept.coding[Evidenzgrad].code 1..1 MS

* valueCodeableConcept.coding contains Zusatzverweis 0..* MS
* valueCodeableConcept.coding[Zusatzverweis] ^short = "Zusatzverweis"
* valueCodeableConcept.coding[Zusatzverweis] ^definition = "Zusatzverweis zum Evidenzgrad"
* insert Translation(valueCodeableConcept.coding[Zusatzverweis] ^short, de-DE, Zusatzverweis)
* insert Translation(valueCodeableConcept.coding[Zusatzverweis] ^definition, de-DE, Zusatzverweis zum Evidenzgrad)
* insert Translation(valueCodeableConcept.coding[Zusatzverweis] ^short, en, Additional Reference)
* insert Translation(valueCodeableConcept.coding[Zusatzverweis] ^definition, en, Additional reference to the evidence level)
* valueCodeableConcept.coding[Zusatzverweis].system = $mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis
* valueCodeableConcept.coding[Zusatzverweis].code 1..1 MS