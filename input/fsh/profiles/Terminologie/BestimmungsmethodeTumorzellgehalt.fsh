// TODO: Ggf. SCT bzw. LNC Codes suchen anstatt selbst zu definieren
CodeSystem: MII_CS_MTB_BestimmungsmethodeTumorzellgehalt
Id: mii-cs-mtb-bestimmungsmethode-tumorzellgehalt
Title: "MII CS Bestimmungsmethode Tumorzellgehalt"
Description: "Angewandte Methode zur Bestimmung des Tumorzellgehalts"
* insert CS_Header($mii-cs-mtb-bestimmungsmethode-tumorzellgehalt)
* #bioinformatic    "Bioinformatisch"
* #histologic       "Histologisch"

ValueSet: MII_VS_MTB_BestimmungsmethodeTumorzellgehalt
Id: mii-vs-mtb-bestimmungsmethode-tumorzellgehalt
Title: "MII VS Bestimmungsmethode Tumorzellgehalt"
Description: "ValueSet für Angewandte Methode zur Bestimmung des Tumorzellgehalts"
* insert VS_Header($mii-vs-mtb-bestimmungsmethode-tumorzellgehalt)
* include codes from system MII_CS_MTB_BestimmungsmethodeTumorzellgehalt