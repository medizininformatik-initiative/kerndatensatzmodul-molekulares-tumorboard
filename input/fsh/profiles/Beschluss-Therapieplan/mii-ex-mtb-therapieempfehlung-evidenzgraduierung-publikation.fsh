Extension: MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung_Publikation
Id: mii-ex-mtb-therapieempfehlung-evidenzgraduierung-publikation
Context: RequestGroup, MedicationRequest
Title: "MII EX MTB Therapieempfehlung Evidenzgraduierung Publikation"
Description: "Verweis auf Publikation zur Evidenzgraduierung der (einzelnen) Therapieempfehlung"
* insert EX_Header($mii-ex-mtb-therapieempfehlung-evidenzgraduierung-publikation)

* value[x] 1..1 MS //  TODO Rückfrage Markus: Warum erlauben wir nur eine Referenz? Man könnte doch z.B. sowohl DOI als auch PMID angeben?
* value[x] only string or Identifier

// Research database
* valueIdentifier ^short = "Identifikator Publikation"
* valueIdentifier ^definition = "Eindeutiger Identifikator zur Publikation in einer Publikationsdatenbank"
* valueIdentifier ^comment = "Z.B. Document Object Identifier (DOI): https://doi.org/10.3414/ME18-03-0003"
* valueIdentifier ^comment = "Z.B. PubMed Identifier (PMID): http://www.ncbi.nlm.nih.gov/pubmed/30016818"
* valueIdentifier.system 1..1 MS
* valueIdentifier.system ^comment = "Z.B. DOI: http://doi.org"
* valueIdentifier.system ^comment = "Z.B. PMID: http://www.ncbi.nlm.nih.gov/pubmed"
* valueIdentifier.value 1..1 MS
* valueIdentifier.value ^comment = "Z.B. DOI: 10.1000/182"
* valueIdentifier.value ^comment = "Z.B. PMID: 30016818"

// Other publication source
* valueString ^short = "Andere Publikationsquelle"
* valueString ^definition = "Publikationsquelle die nicht über eine Publikationsdatenbank referenzierbar ist"
* valueString ^comment = "Z.B. Whitepaper oder Leitlinie"