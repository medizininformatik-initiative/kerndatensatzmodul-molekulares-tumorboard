RuleSet: DNAFusion
* DNAFusion                     0..*   BackboneElement        "DNA Fusion"
  * 5Domain                     0..1   Reference              "5' Domain"
  * 3Domain                     0..1   Reference              "3' Domain"
  * NumberReportedReads         0..1   integer                "Number Reported Reads"

RuleSet: DNAFusionMapping
* DNAFusion                 ->      ""
  * 5Domain                 ->      ""
  * 3Domain                 ->      ""
  * NumberReportedReads     ->      ""