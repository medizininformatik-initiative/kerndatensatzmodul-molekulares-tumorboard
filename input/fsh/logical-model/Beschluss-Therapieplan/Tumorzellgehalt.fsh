RuleSet: Tumorzellgehalt
* Tumorzellgehalt     0..1 BackboneElement  "Tumorzellgehalt"
  // TODO: Neues CodeSystem für Methode erstellen
  * Methode           1..1 code             "Bestimmungsmethode"            "Angewandte Methode zur Bestimmung des Tumorzellgehalts"
  // TODO: Gesamtanzahl aktiver und passiver Bestandteile? Prozentuale Angabe (Quantity), Ganzzahl (integer) oder Fließkommazahl (decimal)?
  * Wert              1..1 decimal          "Anzahl Tumorzellen"            "Gesamtanzahl an aktiven und inaktiven Tumorzellen"

RuleSet: TumorzellgehaltMapping
* Tumorzellgehalt -> "Observation.where(meta.profile = $mii-pr-patho-base-observation)"
  * Methode       -> "Observation.where(meta.profile = $mii-pr-patho-base-observation).method.valueCodeableConcept.coding.code"
  * Wert          -> "Observation.where(meta.profile = $mii-pr-patho-base-observation).valueQuantity.value"

// NOTE: Alternative Interpretation
//  * Tumorzellgehalt -> "Specimen.where(meta.profile = $mii-pr-patho-specimen)"
//    * Methode       -> "Specimen.where(meta.profile = $mii-pr-patho-specimen).collection.method.valueCodeableConcept.coding.code"
//    * Wert          -> "Specimen.where(meta.profile = $mii-pr-patho-specimen).quantity.value"