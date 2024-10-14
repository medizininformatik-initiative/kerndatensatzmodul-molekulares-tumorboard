RuleSet: RNAFusion
* RNAFusion                            0..*   BackboneElement        "RNA Fusion"
  * 5FusionPartner                     0..1   Reference              "5' Fusion Partner" // hier insert RNA Fusion PArtners?
  * 3FusionPartner                     0..1   Reference              "3' Fusion Partner"
  * Effect                             0..1   string                 "Effect"
  * COSMICID                           0..1   string                 "COSMIC ID"
  * NumberReportedReads                0..1   integer                "Number Reported Reads"

RuleSet: RNAFusionMapping
* RNAFusion                        ->      ""
  * 3FusionPartner                 ->      ""
  * 5FusionPartner                 ->      ""
  * Effect                         ->      ""
  * COSMICID                       ->      ""
  * NumberReportedReads            ->      ""