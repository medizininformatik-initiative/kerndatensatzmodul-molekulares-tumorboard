RuleSet: NGSBericht
* NGSBericht               0..*        BackboneElement     "NGS-Bericht"
  * Erstellungsdatum        1..1        dateTime            "Erstellungsdatum"      "Erstellungsdatum für den NGS-Bericht"
  * Probe                   1..1        Reference           "Probe"                 "Referenz zur zugehörigen Probe"
  * insert Metadaten
  * insert TumorMutationalBurden
  * insert BRCAness
  * insert MicroSatelliteInstabilities
  * insert HRDScore
  * insert EinfacheVariante
  * insert CopyNumberVariant
  * insert DNAFusion
  * insert RNAFusion
  * insert RNASeq


RuleSet: NGSBerichtMapping
* NGS-Bericht                                       ->          "" 
  * Erstellungsdatum                                ->          ""
  * Probe                                           ->          ""
  * insert MetadatenMapping                         
  * insert TumorMutationalBurdenMapping             
  * insert BRCAnessMapping                          
  * insert MicroSatelliteInstabilitiesMapping      
  * insert HRDScoreMapping                          
  * insert EinfacheVarianteMapping                  
  * insert CopyNumberVariantMapping                 
  * insert DNAFusionMapping                         
  * insert RNAFusionMapping                         
  * insert RNASeqMapping                            