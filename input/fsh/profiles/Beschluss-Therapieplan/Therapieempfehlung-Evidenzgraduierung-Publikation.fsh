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