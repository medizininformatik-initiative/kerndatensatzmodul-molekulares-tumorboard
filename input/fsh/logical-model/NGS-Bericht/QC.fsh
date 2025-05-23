RuleSet: QC
* QC                                           0..*   BackboneElement      "QC"
  * SequencingDepth                            1..1   integer              "Sequencing Depth"
  * SequencingReadType                         1..1   integer              "Sequencing Read Type"
  * SequencingCoverage                         1..1   integer              "Sequencing Coverage"
  * Lueckenstatistik                           1..1   integer              "Lückenstatistik"
  * ReadLaenge                                 1..1   integer              "Read Länge"
  * Metrics                                    1..1   string               "Metrics Description"

RuleSet: QCMapping  
* QC                                       ->      "MII_EX_MTB_GenomicStudyAnalysis_QC"
  * SequencingDepth                        ->      "MII_EX_MTB_GenomicStudyAnalysis_QC.[sequencing-depth]"
  * SequencingReadType                     ->      "MII_EX_MTB_GenomicStudyAnalysis_QC.[sequencing-read-type]"
  * SequencingCoverage                     ->      "MII_EX_MTB_GenomicStudyAnalysis_QC.[sequencing-coverage]"
  * Lueckenstatistik                       ->      "MII_EX_MTB_GenomicStudyAnalysis_QC.[gap-statistics]"
  * ReadLaenge                             ->      "MII_EX_MTB_GenomicStudyAnalysis_QC.[read-length]"
  * Metrics                                ->      "MII_EX_MTB_GenomicStudyAnalysis_QC.[metrics-description]"