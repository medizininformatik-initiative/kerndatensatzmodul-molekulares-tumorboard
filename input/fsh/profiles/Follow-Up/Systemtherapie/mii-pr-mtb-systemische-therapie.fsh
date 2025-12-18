Profile: MII_PR_MTB_Systemische_Therapie
Parent: MII_PR_Onko_Systemische_Therapie
Id: mii-pr-mtb-systemische-therapie
Title: "MII PR MTB Systemische Therapie"
Description: "Systemische Therapie im Follow-Up nach Abschluss des MTB"
* insert PR_Header

* status MS
* status from MII_VS_MTB_Systemische_Therapie_Status
* status ^short = "not-done | in-progress | stopped | completed"
* status ^definition = "Status der Systemischen Therapie"
* status ^comment = "
        not-done: Die Therapie wurde nie angefangen und wird auch nicht mehr angefangen,
        in-progress: Die Therapie hat noch nicht angefangen oder läuft bereits,
        stopped: Die Therapie wurde bereits angefangen aber vorzeitig abgebrochen,
        completed: Die Therapie wurde plangemäß abgeschlossen"

* statusReason MS
* statusReason ^short = "Status Grund"
* statusReason ^definition = "Grund des Status der Therapie"
* statusReason.coding 1..1 MS
* statusReason.coding from MII_VS_MTB_Therapiestatusgrund (required)
* statusReason.coding.system = $mii-cs-mtb-therapiestatusgrund
* statusReason.coding.code 1..1 MS

* subject MS

* performed[x] MS
* performed[x] only Period
* performedPeriod ^short = "Durchführungszeitraum"
* performedPeriod ^definition = "Durchführungszeitraum der Therapie"

* basedOn 0..1 MS
* basedOn only Reference(MII_PR_MTB_Therapieplan or CarePlan)
* basedOn ^short = "MTB Therapieplan"
* basedOn ^definition = "Therapieplan gemäß Beschluss des Molekularen Tumorboards"

* note 0..1 MS 
* note ^short = "Bemerkungen"

* extension contains $fhir-ext-caused-by named causedBy 0..1 MS
* extension[causedBy] ^short = "Therapieempfehlung"
* extension[causedBy] ^definition = "Verweis auf die MTB Therapieempfehlung"
* extension[causedBy].valueReference only Reference(MII_PR_Medikation_MedicationRequest or MII_PR_MTB_Therapieempfehlung or MedicationRequest)