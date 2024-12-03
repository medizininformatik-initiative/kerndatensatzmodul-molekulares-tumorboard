Extension: MII_EX_MTB_Therapielinie
Id: mii-ex-mtb-therapielinie
Context: Procedure
Title: "MII EX MTB Therapielinie"
Description: "Angabe der Therapielinie"
* insert EX_Header($mii-ex-mtb-therapielinie)

* value[x] 1..1 MS
* value[x] only unsignedInt
* valueUnsignedInt ^short = "Therapielinie"
* valueUnsignedInt ^definition = "Therapielinie 0 bis 9"