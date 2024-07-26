RuleSet: Tumorzellgehalt
* Tumorzellgehalt     0..1 BackboneElement  "Tumorzellgehalt"
  * Methode           1..1 code             "Bestimmungsmethode"            "Angewandte Methode zur Bestimmung des Tumorzellgehalts"
  * Wert              1..1 decimal          "Anzahl Tumorzellen"            "Gesamtanzahl an aktiven und inaktiven Tumorzellen"

RuleSet: TumorzellgehaltMapping
* Tumorzellgehalt -> "Observation.where(meta.profile = $mii-pr-patho-base-observation)"
  * Methode       -> "Observation.where(meta.profile = $mii-pr-patho-base-observation).method.valueCodeableConcept.coding.code"
  * Wert          -> "Observation.where(meta.profile = $mii-pr-patho-base-observation).valueQuantity.value"