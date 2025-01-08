RuleSet: DNAFusion
* DNAFusion                     0..*   BackboneElement        "DNA Fusion"
  * FiveDomain                  0..1   Reference              "5' Domain"
  * ThreeDomain                 0..1   Reference              "3' Domain"
  * NumberReportedReads         0..1   integer                "Number Reported Reads"

RuleSet: DNAFusionMapping
* DNAFusion                      ->      "MII_PR_MTB_DNA_Fusion"
  * FivePrimeDomain              ->      "MII_PR_MTB_DNA_Fusion.component[five-prime-chromosome]"
  * FivePrimeDomain              ->      "MII_PR_MTB_DNA_Fusion.component[five-prime-position]"
  * FivePrimeDomain              ->      "MII_PR_MTB_DNA_Fusion.component[five-prime-gene]"
  * ThreePrimeDomain             ->      "MII_PR_MTB_DNA_Fusion.component[three-prime-chromosome]"
  * ThreePrimeDomain             ->      "MII_PR_MTB_DNA_Fusion.component[three-prime-position]"
  * ThreePrimeDomain             ->      "MII_PR_MTB_DNA_Fusion.component[three-prime-gene]"
  * NumberReportedReads          ->      "MII_PR_MTB_DNA_Fusion.component[allelic-read-depth]"