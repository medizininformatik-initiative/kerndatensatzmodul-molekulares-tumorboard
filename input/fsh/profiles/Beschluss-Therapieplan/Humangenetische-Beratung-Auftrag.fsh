Profile: MII_PR_MTB_Humangenetische_Beratung_Auftrag
Parent: MII_PR_MolGen_AnforderungGenetischerTest
Id: mii-pr-mtb-humangenetische-beratung-auftrag
Title: "MII PR MTB Human-genetische Beratung Auftrag"
Description: "Auftrag zur (erneuten) Human-genetischen Beratung"
* insert PR_Header
* reasonCode 0..1 MS
// TODO: Bindingstärke klären
* reasonCode from MII_VS_MTB_AuftragBegruendung (preferred)
* specimen 1..* MS
* specimen only Reference(MII_PR_Onko_Specimen or MII_PR_Patho_Specimen or ProfileSpecimenBioprobe or Specimen)