RuleSet: DNAFusion
* DNAFusion                     0..*   BackboneElement        "DNA Fusion"
  * FiveDomain                  0..1   Reference              "5' Domain"
  * ThreeDomain                 0..1   Reference              "3' Domain"
  * NumberReportedReads         0..1   integer                "Number Reported Reads"

RuleSet: DNAFusionMapping
* DNAFusion                 ->      ""
  * FiveDomain              ->      ""
  * ThreeDomain             ->      ""
  * NumberReportedReads     ->      ""