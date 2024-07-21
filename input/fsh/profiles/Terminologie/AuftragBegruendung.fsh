CodeSystem: MII_CS_MTB_AuftragBegruendung
Id: mii-cs-mtb-auftrag-begruendung
Title: "MII CS Auftrag Begründung"
Description: "Begründung zum Auftrag zur (erneuten) Untersuchung oder Diagnostik"
* insert CS_Header($mii-cs-mtb-auftrag-begruendung)
* #family-anamnesis "Familienanamnese"
* #self-anamnesis   "Eigenanamnese"
* #secondary-tumor  "Zweittumor"
* #other            "Andere"
* #unknown          "Unbekannt"

ValueSet: MII_VS_MTB_AuftragBegruendung
Id: mii-vs-mtb-auftrag-begruendung
Title: "MII VS Auftrag Begründung"
Description: "ValueSet für Begründung zum Auftrag zur (erneuten) Untersuchung oder Diagnostik"
* insert VS_Header($mii-vs-mtb-auftrag-begruendung)
* include codes from system MII_CS_MTB_AuftragBegruendung