RuleSet: Publikationen
* Publikationen               0..* BackboneElement     "Publikationen"                    "Publikationen zur Evidenzgraduierung"
  * DigitalObjectIdentifier   0..1 url                 "Digital Object Identifier (DOI)"  "DOI zur Publikation"
  * PubMedIdentifier          0..1 url                 "PubMed Identifier (PMID)"         "PMID zur Publikation"

RuleSet: PublikationenMapping
// TODO: Neues Profil zur Darstellung von Publikationen (Zitationen)
* Publikationen               -> "Extension"
  // NOTE: Basis URL ist http://doi.org/<DOI>
  * DigitalObjectIdentifier   -> "Idenfifier[DOI].value"
  // NOTE: Basis URL ist http://www.ncbi.nlm.nih.gov/pubmed/<PMID>
  * PubMedIdentifier          -> "Identifier[PMID].value"