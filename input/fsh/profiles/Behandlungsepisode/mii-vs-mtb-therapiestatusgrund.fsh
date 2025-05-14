ValueSet: MII_VS_MTB_Therapiestatusgrund
Id: mii-vs-mtb-therapiestatusgrund
Title: "MII VS Therapiestatusgrund"
Description: "ValueSet zum Therapiestatusgrund"
* insert VS_Header($mii-vs-mtb-therapiestatusgrund)

// oBDS: E (reguläres Ende)
// DNPM: regular-completion
* $SCT#385656004 "Ended (qualifier value)"

// oBDS: R (reguläres Ende mit Dosisreduktion)
// DNPM: regular-completion-with-dosage-reduction
* $SCT#182822000 "Reducing dose prescribed (situation)"
// * $SCT#275975001 "Treatment dose changed (situation)"

// oBDS: W (reguläres Ende mit Substanzwechsel)
// DNPM: regular-completion-with-substance change
* $SCT#417886001 "Treatment adjusted per protocol (situation)"
//* $SCT#274512008 "Drug therapy discontinued (situation)"
//* $SCT#182840001 "Drug treatment stopped - medical advice (situation)"

// oBDS: A (Abbruch wegen Nebenwirkungen)
// DNPM: toxicity
* $SCT#75478009 "Toxicity"

// oBDS: P (Abbruch wegen Progress)
// DNPM: progression
* $SCT#419835002 "Tumor progression (finding)"

// oBDS: S (Abbruch aus sonstigen Gründen)
// DNPM: other
* $SCT#74964007 "Other (qualifier value)"

// oBDS: V (Patient verweigert weitere Therapie)
// DNPM: patient-refusal
* $SCT#413311005 "Patient non-compliant - declined intervention / support (situation)"

// oBDS: T (Patient verstorben)
// DNPM: patient-death
* $SCT#419099009 "Dead (finding)"

// oBDS: U (unbekannt)
* $SCT#261665006 "Unknown (qualifier value)"

// DNPM: deterioration
* $SCT#285384003 "General health deterioration (finding)"

// DNPM: chronic-remission
* $SCT#277022003 "Remission phase (qualifier value)"

// DNPM: patient-wish
* $SCT#1186606009 "Patient request observable (observable entity)"