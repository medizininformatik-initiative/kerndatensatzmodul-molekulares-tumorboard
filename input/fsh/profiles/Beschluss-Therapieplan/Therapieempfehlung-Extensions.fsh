Extension: MII_EX_MTB_Therapieempfehlung_Prioritaet
Id: mii-ex-mtb-therapieempfehlung-prioritaet
Context: RequestGroup, MedicationRequest
Title: "MII EX MTB Therapieempfehlung Priorität"
Description: "Priorität der (einzelnen) Therapieempfehlung"
* insert EX_Header($mii-ex-mtb-therapieempfehlung-prioritaet)

* value[x] only positiveInt
* value[x] 1..1 MS

* value[x] ^short = "Priorität"
* value[x] ^definition = "Priorität dieser Kombinationstherapie-Empfehlung"
* value[x] ^comment = "Wert 1 entspricht der höchsten Priorität, alle weiteren eine jeweils niedrigere Priorität"

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

Extension: MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung_Publikation
Id: mii-ex-mtb-therapieempfehlung-evidenzgraduierung-publikation
Context: RequestGroup, MedicationRequest
Title: "MII EX MTB Therapieempfehlung Evidenzgraduierung Publikation"
Description: "Verweis auf Publikation zur Evidenzgraduierung der (einzelnen) Therapieempfehlung"
* insert EX_Header($mii-ex-mtb-therapieempfehlung-evidenzgraduierung-publikation)

* value[x] only string or url or uri or Identifier
* value[x] 1..1 MS

* value[x] ^short = "Publikation"
* value[x] ^definition = "Verweis auf Publikation zur Evidenzgraduierung"
* value[x] ^comment = "Verweis auf Publikation erfolgt anhand der DOI oder PMID"

// TODO: Probleme beim Reslicing (Extension.value[x] bereits gesliced), deshalb vorerst einkommentiert
// NOTE: Mehr zu Reslicing, siehe https://hl7.org/fhir/R4/profiling.html#reslicing
//* value[x] ^slicing.discriminator.type = #value
//* value[x] ^slicing.discriminator.path = "system"
//* value[x] ^slicing.rules = #open
//* value[x] ^slicing.description = "Slice für Publikation anhand von `system`"
//* value[x] ^slicing.ordered = false
//* value[x] contains DOI 0..1 MS
//* value[x][DOI] ^short = "DOI"
//* value[x][DOI] ^definition = "Document Object Identifier (DOI)"
//* value[x][DOI].system = "http://doi.org"
//* value[x] contains PMID 0..1 MS
//* value[x][PMID] ^short = "PMID"
//* value[x][PMID] ^definition = "PubMed Identifier (PMID)"
//* value[x][PMID].system = "http://www.ncbi.nlm.nih.gov/pubmed"
//* value[x].value 1..1 MS

// NOTE: Reslicing Tests

//* value[x] ^slicing.discriminator.type = #type
//* value[x] ^slicing.discriminator.path = "$this"
//* value[x] ^slicing.rules = #open
//* value[x] ^slicing.description = "Slice für Publikation anhand von `system`"
//* value[x] ^slicing.ordered = false
//* value[x] contains valueIdentifier
//* value[x][valueIdentifier] only Identifier
//* value[x][valueIdentifier] ^slicing.discriminator.type = #value
//* value[x][valueIdentifier] ^slicing.discriminator.path = "system"
//* value[x][valueIdentifier] ^slicing.rules = #open
//* value[x][valueIdentifier] ^slicing.description = ""
//* value[x][valueIdentifier] ^slicing.ordered = false
//* value[x][valueIdentifier] contains DOI
//* value[x][valueIdentifier][DOI].system = "http://doi.org"

//* value[x] only Identifier
//* valueIdentifier 1..1 MS
//* valueIdentifier ^slicing.discriminator.type = #value
//* valueIdentifier ^slicing.discriminator.path = "system"
//* valueIdentifier ^slicing.rules = #open
//* valueIdentifier ^slicing.description = ""
//* valueIdentifier ^slicing.ordered = false
//* valueIdentifier contains DOI 0..1 MS
//* valueIdentifier[DOI].system = "http://doi.org"
//* valueIdentifier[DOI].value 1..1 MS

RuleSet: Therapieempfehlung_Erweiterungen
* extension contains 
    MII_EX_MTB_Therapieempfehlung_Prioritaet named Prioritaet 0..1 MS and
    MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung named Evidenzgraduierung 0..1 MS and
    MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung_Publikation named Publikation 0..* MS