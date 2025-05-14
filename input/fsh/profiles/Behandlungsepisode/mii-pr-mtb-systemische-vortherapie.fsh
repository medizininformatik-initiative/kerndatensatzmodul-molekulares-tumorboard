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


// hier nochmal überlegen, ob man das in Onko auch doppelt darstellen kann - > die Trennung zwischen Status und Grund.
* statusReason 0..1 MS
* statusReason ^short = "Abbruchsgrund Systemische Therapie"
* statusReason ^definition = "Falls abgebrochen: Angabe zum Abbruchsgrund der Systemischen Therapie"
* statusReason.coding.code from MII_VS_MTB_Therapiestatusgrund
