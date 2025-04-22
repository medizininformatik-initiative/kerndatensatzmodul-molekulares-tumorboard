Profile: MII_PR_MTB_Systemische_Therapie
Parent: MII_PR_Onko_Systemische_Therapie
Id: mii-pr-mtb-systemische-therapie
Title: "MII PR MTB Systemische Therapie"
Description: "Systemische Therapie im Follow-Up nach Abschluss des MTB"
* insert PR_Header



* status MS
* status ^short = "Status"
* status from MII_VS_MTB_Systemtherapie_Status

* statusReason MS
* statusReason ^short = "Status Grund"
* statusReason ^definition = "Grund des Status der Therapie"
* statusReason.coding 1..1
* statusReason.coding.system = $mii-cs-mtb-follow-up-grund-nicht-umsetzung
* statusReason.coding.code 1..1 MS 
* statusReason.coding.code from $mii-cs-mtb-follow-up-grund-nicht-umsetzung

* subject MS

* performed[x] MS
* performed[x] only Period
* performed[x] ^short = "Durchführungszeitraum"
* performed[x] ^definition = "Durchführungszeitraum der Therapie"
* basedOn 0..1 MS
* basedOn only Reference(MII_PR_MTB_Therapieplan)
* basedOn ^short = "MTB Therapieplan"
* basedOn ^definition = "Therapieplan gemäß Beschluss des Molekularen Tumorboards"
