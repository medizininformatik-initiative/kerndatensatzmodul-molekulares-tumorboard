RuleSet: HRDScore
* HRDScore                        0..*   BackboneElement      "HRD Score"
  * Interpretation                0..1   code                 "Interpretation"
  * Wert                          0..1   decimal              "Wert"
  * Metadaten                     0..*   code                 "Metadaten"

RuleSet: HRDScoreMapping
* HRDScore                          ->      "MII_PR_MTB_Molekularer_Biomarker"
  * Interpretation                  ->      "MII_PR_MTB_Molekularer_Biomarker.interpretation"
  * Wert                            ->      "MII_PR_MTB_Molekularer_Biomarker.value"
  * Metadaten                       ->      ""