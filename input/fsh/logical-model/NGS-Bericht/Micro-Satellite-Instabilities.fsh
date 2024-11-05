RuleSet: MicroSatelliteInstabilities
* MicroSatelliteInstabilities     0..*   BackboneElement      "Micro-Satellite Instabilities"
  * Interpretation                0..1   code                 "Interpretation"
  * Wert                          0..1   decimal              "Wert"

RuleSet: MicroSatelliteInstabilitiesMapping
* MicroSatelliteInstabilities       ->      "MII_PR_MolGen_Mikrosatelliteninstabilitaet"
  * Interpretation                  ->      "MII_PR_MolGen_Mikrosatelliteninstabilitaet.interpretation"
  * Wert                            ->      "MII_PR_MolGen_Mikrosatelliteninstabilitaet.value"