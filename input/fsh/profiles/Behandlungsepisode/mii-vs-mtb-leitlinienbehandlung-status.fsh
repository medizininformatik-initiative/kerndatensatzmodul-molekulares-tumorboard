ValueSet: MII_VS_MTB_WHO_Grad_Tumor_ZNS
Id: mii-vs-mtb-who-grad-tumor-zns
Title: "MII VS WHO Grad Tumor ZNS"
Description: "ValueSet zum Grad eines Tumors nach WHO-Klassifikation der Tumoren des zentralen Nervensystems"
* insert VS_Header($mii-vs-mtb-who-grad-tumor-zns)

// TODO: Custom vs. SCT CS? Version 2021 vs Pre-2021? Multi-lanugage display text?
// * include codes from system MII_CS_MTB_WHO_Grad_Tumor_ZNS
* include codes from system $SCT where concept descendant-of #396921005