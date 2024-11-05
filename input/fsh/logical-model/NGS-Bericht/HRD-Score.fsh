RuleSet: HRDScore
* HRDScore                        0..*   BackboneElement      "HRD Score"
  * Interpretation                0..1   code                 "Interpretation"
  * Wert                          0..1   decimal              "Wert"
  * Metadaten                     0..*   code                 "Metadaten"

RuleSet: HRDScoreMapping
* HRDScore                          ->      ""
  * Interpretation                  ->      ".interpretation"
  * Wert                            ->      ".value"
  * Metadaten                       ->      ""