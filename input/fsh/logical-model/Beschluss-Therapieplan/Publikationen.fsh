RuleSet: Publikationen
* Publikationen               0..* BackboneElement     "Publikationen"                    "Publikationen zur Evidenzeinstufung"
  * DigitalObjectIdentifier   0..1 url                 "Digital Object Identifier (DOI)"   "DOI zur Publikation"
  * PubMedIdentifier          0..1 url                 "PubMed Identifier (PMID)"         "PMID zur Publikation"

RuleSet: PublikationenMapping
// TODO: Neues Profil zur Darstellung von Publikationen (Zitationen)
// TODO: Referenz via Observation.component.extension(Publikationen) oder Observation.extension(workflow-relatedArtifact)
* Publikationen               -> "RelatedArtifact"
  // NOTE: Basis URL ist http://doi.org/<DOI>
  * DigitalObjectIdentifier   -> "RelatedArtifact.url[DOI]"
  // NOTE: Basis URL ist http://www.ncbi.nlm.nih.gov/pubmed/<PMID>
  * PubMedIdentifier          -> "RelatedArtifact.url[PMID]"