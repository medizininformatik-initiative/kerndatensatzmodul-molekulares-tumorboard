ValueSet: MII_VS_MTB_Tumorausbreitung
Id: mii-vs-mtb-tumorausbreitung
Title: "MII VS Tumorausbreitung"
Description: "ValueSet zur Angabe der Tumorausbreitung"
* insert VS_Header($mii-vs-mtb-tumorausbreitung)

// DNPM: #tumor-free "Tumorfrei"
* $SCT#58899004 "No evidence of tumor"
// DNPM: #local "Lokal"
* $SCT#255127006 "Local tumor spread"
// DNPM: #metastasized "Metastasiert"
* $SCT#128462008 "Metastases"
// DNPM: #unknown "Unbekannt"
* $SCT#261665006 "Unknown"