RuleSet: BRCAness
* BRCAness                  0..*   BackboneElement      "BRCAness"
  * Interpretation          0..1   code                 "Interpretation"
  * Wert                    0..1   decimal              "Wert"
  * Metadaten               0..*   code                 "Metadaten"
//   * Konfidenz-Intervall   0..*    unklar, wird diskutiert

RuleSet: BRCAnessMapping
* BRCAness                  ->      "Observation"
  * Interpretation          ->      "Observation.interpretation"
  * Wert                    ->      "Observation.valueQuantity"
  * Metadaten               ->      ""
  //   * Konfidenz-Intervall        ->    "Observation.component[confidence-interval]"