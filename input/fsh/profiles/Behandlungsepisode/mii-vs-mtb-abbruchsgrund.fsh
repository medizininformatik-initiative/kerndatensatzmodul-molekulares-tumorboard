ValueSet: MII_VS_MTB_Abbrungsgrund
Id: mii-vs-mtb-abbruchsgrund
Title: "MII VS Abbruchsgrund"
Description: "ValueSet zum Abbruchsgrund"
* insert VS_Header($mii-vs-mtb-abbruchsgrund)

// DNPM: Auf Wunsch des Patienten
* $SCT#1186606009 "Patient request observable (observable entity)"
// DNPM: Progression
* $SCT#419835002 "Tumor progression (finding)"
// DNPM: Toxizität
* $SCT#75478009 "Toxicity"
// DNPM: Zustandsverschlechterung
* $SCT#285384003 "General health deterioration (finding)"
// DNPM: Anhaltende Remission
* $SCT#277022003 "Remission phase (qualifier value)"
// DNPM: Weitere Gründe
* $SCT#74964007 "Other (qualifier value)"
// DNPM: Unbekannt
* $SCT#261665006 "Unknown (qualifier value)"