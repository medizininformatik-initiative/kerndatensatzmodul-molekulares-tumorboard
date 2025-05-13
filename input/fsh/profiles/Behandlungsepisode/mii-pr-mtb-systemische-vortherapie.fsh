Profile: MII_PR_MTB_Systemische_Vortherapie
Parent: MII_PR_Onko_Systemische_Therapie
Id: mii-pr-mtb-systemische-vortherapie
Title: "MII PR MTB Systemische Vortherapie"
Description: "Systemische Vortherapie zum Molekularen Tumorboard"
* insert PR_Header

* basedOn 0..* MS
* basedOn ^slicing.discriminator.type = #profile
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.rules = #open
* basedOn ^slicing.description = "Slice für referenzierten Therapieplan"
* basedOn ^slicing.ordered = false

* basedOn contains Therapieplan 0..1 MS
* basedOn[Therapieplan] ^short = "Therpieplan"
* basedOn[Therapieplan] ^definition = "Verweis auf den im Molekularen Tumorboard beschlossenen Therpieplan"
* basedOn[Therapieplan] only Reference(MII_PR_MTB_Therapieplan)

* outcome.coding ^slicing.discriminator.type = #value
* outcome.coding ^slicing.discriminator.path = "system"
* outcome.coding ^slicing.rules = #open
* outcome.coding ^slicing.description = "Slice für Grund des Therapiestatus"
* outcome.coding ^slicing.ordered = false

// TODO: Change binding strength in Onkology module to extensible
* outcome.coding contains Therapiestatusgrund 0..1 MS
* outcome.coding[Therapiestatusgrund] ^short = "Grund des Therapiestatus"
* outcome.coding[Therapiestatusgrund] ^definition = "Genaue Begründung für den aktuellen Therapiestatus"
* outcome.coding[Therapiestatusgrund].system = $SCT
* outcome.coding[Therapiestatusgrund].code from MII_VS_MTB_Therapiestatusgrund