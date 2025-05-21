RuleSet: MicroSatelliteInstabilities
* MicroSatelliteInstabilities     0..*   BackboneElement      "Mikrosatelliteninstabilität"
  * Interpretation                0..1   code                 "Interpretation"
  * Wert                          0..1   decimal              "Wert"

RuleSet: MicroSatelliteInstabilitiesMapping
* MicroSatelliteInstabilities       ->      "MII_PR_MTB_Mikrosatelliteninstabilitaet"
  * Interpretation                  ->      "MII_PR_MTB_Mikrosatelliteninstabilitaet.interpretation"
  * Wert                            ->      "MII_PR_MTB_Mikrosatelliteninstabilitaet.value"