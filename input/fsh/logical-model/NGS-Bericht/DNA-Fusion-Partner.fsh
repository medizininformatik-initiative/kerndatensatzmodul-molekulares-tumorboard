RuleSet: DNAFusionPartner
* DNAFusionPartner              0..*   BackboneElement        "DNA Fusion: Partner"
  * Chromosom                   0..1   code                   "Chromosom"
  * Position                    0..1   integer                "Position"
  * Gen                         0..1   Reference              "Gen"

RuleSet: DNAFusionPartnerMapping
* DNAFusionPartner           ->      "MII_PR_MTB_DNA_Fusion"
  * Chromosom                ->      ""
  * Position                 ->      ""
  * Gen                      ->      ""