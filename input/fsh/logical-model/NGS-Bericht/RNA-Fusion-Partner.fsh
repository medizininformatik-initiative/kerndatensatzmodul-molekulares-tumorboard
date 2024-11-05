RuleSet: RNAFusionPartner
* DNAFusionPartner              0..*   BackboneElement        "DNA Fusion: Partner"
  * Chromosom                   0..1   code                   "Chromosom"
  * Position                    0..1   integer                "Position"
  * Gen                         0..1   Reference              "Gen"

RuleSet: RNAFusionPartnerMapping
* DNAFusionPartner           ->      ""
  * Chromosom                ->      ""
  * Position                 ->      ""
  * Gen                      ->      ""