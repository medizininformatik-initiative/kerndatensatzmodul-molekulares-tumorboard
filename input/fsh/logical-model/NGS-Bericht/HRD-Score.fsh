RuleSet: HRDScore
* HRDScore                        0..*   BackboneElement      "HRD Score"
  * Interpretation                0..1   code                 "Interpretation"
  * Wert                          0..1   decimal              "Wert"
  * Metadaten                     0..*   code                 "Metadaten"

RuleSet: HRDScoreMapping
* HRDScore                          ->      "MII_PR_MTB_HRD_Score"
  * Interpretation                  ->      "MII_PR_MTB_HRD_Score.interpretation"
  * Wert                            ->      "MII_PR_MTB_HRD_Score.value"