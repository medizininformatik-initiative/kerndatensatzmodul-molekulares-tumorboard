RuleSet: Auftrag(shortDesc, longDesc)
* Begruendung 0..1 string     "{shortDesc}"       "{longDesc}"
* Probe                  1..* BackboneElement     "Gewebeprobe des Tumors"        "Histologie und zum Tumorzellgehalt der Gewebeprobe"
  * Histologie           0..1 Reference           "Verweis auf Histologiebefund"  "Verweis auf den Befund zur Histologie des Tumors"
  * Tumorzellgehalt      0..1 BackboneElement     "Tumorzellgehalt"
    // TODO: Methode -> CS/VS erstellen oder suchen (LOINC/SNOMED)
    * Methode            1..1 code                "Untersuchungsmethode"        "Angewandte Methode zur Bestimmung des Tumorzellgehalts"
    // TODO: Gesamtanzahl aktiver und passiver Bestandteile? Prozentuale Angabe (Quantity), Ganzzahl (integer) oder Fließkommazahl (decimal)?
    * Wert               1..1 decimal             "Anzahl Tumorzellen"    "Gesamtanzahl an aktiven und inaktiven Tumorzellen"

RuleSet: AuftragMapping
// TODO: Begruendung -> "ServiceRequest.reasonCode.valueCodeableConcept.coding.code"
* Begruendung -> "ServiceRequest.where(meta.profile = $mii-pr-patho-service-request).note"
* Probe -> "ServiceRequest.where(meta.profile = $mii-pr-patho-service-request).specimen"
  * Histologie -> "Specimen.where(meta.profile = $mii-pr-onko-specimen)"
  * Tumorzellgehalt -> "Observation.where(meta.profile = $mii-pr-patho-base-observation)"
    * Methode       -> "Observation.where(meta.profile = $mii-pr-patho-base-observation).method.valueCodeableConcept.coding.code"
    * Wert          -> "Observation.where(meta.profile = $mii-pr-patho-base-observation).valueQuantity.value"
// TODO: Alternative Interpretation
//  * Tumorzellgehalt -> "Specimen.where(meta.profile = $mii-pr-patho-specimen)"
//    * Methode       -> "Specimen.where(meta.profile = $mii-pr-patho-specimen).collection.method.valueCodeableConcept.coding.code"
//    * Wert          -> "Specimen.where(meta.profile = $mii-pr-patho-specimen).quantity.value"