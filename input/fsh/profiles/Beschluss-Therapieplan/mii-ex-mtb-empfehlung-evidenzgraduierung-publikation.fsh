Extension: MII_EX_MTB_Empfehlung_Publikation
Id: mii-ex-mtb-empfehlung-publikation
Context: MedicationRequest, RequestGroup, ServiceRequest
Title: "MII EX MTB Empfehlung Publikation"
Description: "Verweis auf Publikation der (einzelnen) Empfehlung"
* insert EX_Header($mii-ex-mtb-empfehlung-publikation)

* value[x] 1..1 MS
* value[x] only Identifier

* valueIdentifier ^short = "Identifikator Publikation"
* valueIdentifier ^definition = "Eindeutiger Identifikator zur Publikation"
* valueIdentifier ^comment = "Für DOI: system=http://doi.org, value=10.1000/182. Für PMID: system=http://www.ncbi.nlm.nih.gov/pubmed, value=30016818. Für andere URLs (Whitepaper, Leitlinien): system=urn:ietf:rfc:3986, value=<vollständige URL>"
* insert Translation(valueIdentifier ^short, de-DE, Identifikator Publikation)
* insert Translation(valueIdentifier ^definition, de-DE, Eindeutiger Identifikator zur Publikation)
* insert Translation(valueIdentifier ^short, en, Publication Identifier)
* insert Translation(valueIdentifier ^definition, en, Unique identifier for the publication)
* valueIdentifier.system 1..1 MS
* valueIdentifier.system ^short = "Publikationsdatenbank oder URL-Schema"
* valueIdentifier.system ^comment = "DOI: http://doi.org, PMID: http://www.ncbi.nlm.nih.gov/pubmed, URLs: urn:ietf:rfc:3986"
* insert Translation(valueIdentifier.system ^short, de-DE, Publikationsdatenbank oder URL-Schema)
* insert Translation(valueIdentifier.system ^short, en, Publication database or URL scheme)
* valueIdentifier.value 1..1 MS
* valueIdentifier.value ^short = "Identifikator oder URL"
* valueIdentifier.value ^comment = "DOI: 10.1000/182, PMID: 30016818, oder vollständige URL"
* insert Translation(valueIdentifier.value ^short, de-DE, Identifikator oder URL)
* insert Translation(valueIdentifier.value ^short, en, Identifier or URL)