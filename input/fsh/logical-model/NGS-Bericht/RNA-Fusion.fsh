RuleSet: RNAFusion
* RNAFusion                            0..*   BackboneElement        "RNA Fusion"
  * FiveFusionPartner                  0..1   Reference              "5' Fusion Partner" // hier insert RNA Fusion PArtners?
  * ThreeFusionPartner                 0..1   Reference              "3' Fusion Partner"
  * Effect                             0..1   string                 "Effect"
  * COSMICID                           0..1   string                 "COSMIC ID"
  * NumberReportedReads                0..1   integer                "Number Reported Reads"

RuleSet: RNAFusionMapping
* RNAFusion                        ->      "MII_PR_MTB_RNA_Fusion"
  * FivePrimeFusionPartner         ->      "MII_PR_MTB_RNA_Fusion.component[five-prime-gene]"
  * FivePrimeFusionPartner         ->      "MII_PR_MTB_RNA_Fusion.component[five-prime-transcript-id]"
  * FivePrimeFusionPartner         ->      "MII_PR_MTB_RNA_Fusion.component[five-prime-exon-id]"
  * FivePrimeFusionPartner         ->      "MII_PR_MTB_RNA_Fusion.component[five-prime-position]"
  * FivePrimeFusionPartner         ->      "MII_PR_MTB_RNA_Fusion.component[five-prime-strand]"
  * ThreePrimeFusionPartner        ->      "MII_PR_MTB_RNA_Fusion.component[three-prime-gene]"
  * ThreePrimeFusionPartner        ->      "MII_PR_MTB_RNA_Fusion.component[three-prime-transcript-id]"
  * ThreePrimeFusionPartner        ->      "MII_PR_MTB_RNA_Fusion.component[three-prime-exon-id]"
  * ThreePrimeFusionPartner        ->      "MII_PR_MTB_RNA_Fusion.component[three-prime-position]"
  * ThreePrimeFusionPartner        ->      "MII_PR_MTB_RNA_Fusion.component[three-prime-strand]"
  * Effect                         ->      "MII_PR_MTB_RNA_Fusion.component[effect]"
  * COSMICID                       ->      "MII_PR_MTB_RNA_Fusion.component[cosmic-id]"
  * NumberReportedReads            ->      "MII_PR_MTB_RNA_Fusion.component[allelic-read-depth]"