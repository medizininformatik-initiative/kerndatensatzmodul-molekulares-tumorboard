RuleSet: Publikationen
* Publikationen 0..1 BackboneElement "Publikationen" "Publikationen zur Evidenzeinstufung"
  * DigitalObjectIdentifier 0..1 string "Digital Object Identfier (DOI)" "Die DOI-Nummer der relevante Publikationen"
  * PubmedIdentifier 0..1 string "PubMed Identifier (PMID)" "Identfier der Publikation in PubMed"

RuleSet: PublikationenMapping
* Publikationen -> "DocumentReference"
  * DigitalObjectIdentifier -> "DocumentReference.identifier.value"
  * PubmedIdentifier -> "DocumentReference.identifier.value"
  // in DocumentReference sind die Elemente content und status verpflichtet, diese zwei Elemente müssen befüllt werden.
  // DocumentReference kann direkt bei Observation(EvidenzLevel).derivedFrom referenziert werden.