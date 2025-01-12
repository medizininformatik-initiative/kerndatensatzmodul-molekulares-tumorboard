Profile: MII_PR_MTB_Systemische_Therapie
Parent: MII_PR_Onko_Systemische_Therapie
Id: mii-pr-mtb-systemische-therapie
Title: "MII PR MTB Systemische Therapie"
Description: "Systemische Therapie"
* insert PR_Header

* outcome 0..1 MS
* outcome.coding 0..* MS

* outcome.coding ^slicing.discriminator.type = #value
* outcome.coding ^slicing.discriminator.path = "system"
* outcome.coding ^slicing.rules = #open
* outcome.coding ^slicing.description = "Slice für Abbruchsgrund"
* outcome.coding ^slicing.ordered = false

* outcome.coding contains Abbruchsgrund 0..1 MS
* outcome.coding[Abbruchsgrund] ^short = "Abbruchsgrund Systemische Therapie"
* outcome.coding[Abbruchsgrund] ^definition = "Angabe zum Abbruchsgrund der Systemischen Therapie"
* outcome.coding[Abbruchsgrund].system = $mii-cs-mtb-abbruchsgrund
* outcome.coding[Abbruchsgrund].code from MII_VS_MTB_Abbrungsgrund