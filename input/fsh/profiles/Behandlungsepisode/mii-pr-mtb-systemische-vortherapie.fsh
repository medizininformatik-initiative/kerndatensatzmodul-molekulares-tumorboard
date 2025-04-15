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
* outcome.coding ^slicing.discriminator.path = "code"
* outcome.coding ^slicing.rules = #open
* outcome.coding ^slicing.description = "Slice für Abbruchsgrund"
* outcome.coding ^slicing.ordered = false

// NOTE: More specific DNPM reasons for therapy cancelation
// TODO: Change binding strength in Onkology module to extensible
* outcome.coding contains Abbruchsgrund 0..1 MS
* outcome.coding[Abbruchsgrund] ^short = "Abbruchsgrund Systemische Therapie"
* outcome.coding[Abbruchsgrund] ^definition = "Angabe zum Abbruchsgrund der Systemischen Therapie"
* outcome.coding[Abbruchsgrund].system = $SCT
* outcome.coding[Abbruchsgrund].code from MII_VS_MTB_Abbrungsgrund