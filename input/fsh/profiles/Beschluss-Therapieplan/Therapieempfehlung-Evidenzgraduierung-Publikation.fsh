Extension: MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung_Publikation
Id: mii-ex-mtb-therapieempfehlung-evidenzgraduierung-publikation
Title: "MII EX MTB Therapieempfehlung Evidenzgraduierung Publikation"
Description: "Verweis auf Publikation zur Evidenzgraduierung der (einzelnen) Therapieempfehlung"
* insert EX_Header($mii-ex-mtb-therapieempfehlung-evidenzgraduierung-publikation)
* value[x] only Identifier
* value[x] 1..1 MS
* value[x].type = $hl7-v2-0203#RI
* value[x] ^slicing.discriminator.type = #value
* value[x] ^slicing.discriminator.path = "system"
* value[x] ^slicing.rules = #open
* value[x] ^slicing.description = "Slice für Publikation anhand von `system`"
* value[x] ^slicing.ordered = false
* value[x] contains DOI 0..1 MS
* value[x][DOI] ^short = "DOI"
* value[x][DOI] ^definition = "Document Object Identifier (DOI)"
* value[x][DOI].system = "http://doi.org"
* value[x] contains PMID 0..1 MS
* value[x][PMID] ^short = "PMID"
* value[x][PMID] ^definition = "PubMed Identifier (PMID)"
* value[x][PMID].system = "http://www.ncbi.nlm.nih.gov/pubmed"
* value[x].value 1..1 MS