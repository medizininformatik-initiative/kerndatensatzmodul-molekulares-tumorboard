RuleSet: TumorMutationalBurden
* TumorMutationalBurden     0..*   BackboneElement      "Tumor Mutational Burden (TMB)"
  * Interpretation          0..1   code                 "Interpretation"
  * Wert                    0..1   decimal              "Wert"
  * Metadaten               0..*   code                 "Metadaten"

RuleSet: TumorMutationalBurdenMapping
* TumorMutationalBurden     ->      "MII_PR_MTB_Mutationslast"
  * Interpretation          ->      "MII_PR_MTB_Mutationslast.interpretation"
  * Wert                    ->      "MII_PR_MTB_Mutationslast.value"
  * Metadaten               ->      "MII_PR_MTB_Mutationslast.method"
