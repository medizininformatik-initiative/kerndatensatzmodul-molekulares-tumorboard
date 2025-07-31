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

// TODO: Nochmal überlegen, ob man das in Onko auch doppelt darstellen kann -> die Trennung zwischen Status und Grund
* statusReason 0..1 MS
* statusReason ^short = "Abbruchsgrund Systemische Therapie"
* statusReason ^definition = "Falls abgebrochen: Angabe zum Abbruchsgrund der Systemischen Therapie"
* statusReason.coding 1..* MS
* statusReason.coding.system 1..1 MS
* statusReason.coding.code 1..1 MS

* statusReason.coding ^slicing.discriminator.type = #value
* statusReason.coding ^slicing.discriminator.path = "system"
* statusReason.coding ^slicing.rules = #open
* statusReason.coding ^slicing.description = "Slice für den Grund des Therapiestatus"
* statusReason.coding ^slicing.ordered = false

* statusReason.coding contains Therapiestatusgrund 0..1 MS
* statusReason.coding[Therapiestatusgrund] ^short = "Therapiestatusgrund"
* statusReason.coding[Therapiestatusgrund] ^definition = "Grund für den Status der Systemischen Therapie"
* statusReason.coding[Therapiestatusgrund].system = $mii-cs-mtb-therapiestatusgrund (exactly)
* statusReason.coding[Therapiestatusgrund] from MII_VS_MTB_Therapiestatusgrund (required)

* extension contains MII_EX_MTB_Leitlinie_Dokumentation named Leitlinie 0..1 MS