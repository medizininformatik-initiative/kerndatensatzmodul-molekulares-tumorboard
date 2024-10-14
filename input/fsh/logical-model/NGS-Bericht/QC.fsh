RuleSet: QC
* QC                                           0..*   BackboneElement      "QC"
  * SequencingReadType                         1..1   integer              "Sequencing Read Type"
  * Lueckenstatistik                           1..1   integer              "Lückenstatistik"
  * ReadLaenge                                 1..1   integer              "Read Länge"

RuleSet: QCMapping  
* QC                                       ->      ""
  * SequencingReadType                     ->      ""
  * Lueckenstatistik                       ->      ""
  * ReadLaenge                             ->      ""