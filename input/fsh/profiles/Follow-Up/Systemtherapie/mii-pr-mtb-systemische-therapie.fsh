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
* insert Translation(status ^short, de-DE, nicht durchgeführt | laufend | abgebrochen | abgeschlossen)
* insert Translation(status ^definition, de-DE, Status der Systemischen Therapie)
* insert Translation(status ^short, en, not-done | in-progress | stopped | completed)
* insert Translation(status ^definition, en, Status of the systemic therapy)
* status ^comment = "
        not-done: Die Therapie wurde nie angefangen und wird auch nicht mehr angefangen,
        in-progress: Die Therapie hat noch nicht angefangen oder läuft bereits,
        stopped: Die Therapie wurde bereits angefangen aber vorzeitig abgebrochen,
        completed: Die Therapie wurde plangemäß abgeschlossen"

* statusReason MS
* statusReason ^short = "Status Grund"
* statusReason ^definition = "Grund des Status der Therapie"
* insert Translation(statusReason ^short, de-DE, Status Grund)
* insert Translation(statusReason ^definition, de-DE, Grund des Status der Therapie)
* insert Translation(statusReason ^short, en, Status reason)
* insert Translation(statusReason ^definition, en, Reason for the therapy status)
* statusReason.coding 1..1 MS
* statusReason.coding from MII_VS_MTB_Therapiestatusgrund (required)
* statusReason.coding.system = $mii-cs-mtb-therapiestatusgrund
* statusReason.coding.code 1..1 MS

* subject MS

// performed[x] inherited from parent profile MII_PR_Onko_Systemische_Therapie

* basedOn 0..1 MS
* basedOn only Reference(MII_PR_MTB_Therapieplan or CarePlan)
* basedOn ^short = "MTB Therapieplan"
* basedOn ^definition = "Therapieplan gemäß Beschluss des Molekularen Tumorboards"
* insert Translation(basedOn ^short, de-DE, MTB Therapieplan)
* insert Translation(basedOn ^definition, de-DE, Therapieplan gemäß Beschluss des Molekularen Tumorboards)
* insert Translation(basedOn ^short, en, MTB therapy plan)
* insert Translation(basedOn ^definition, en, Therapy plan according to the molecular tumor board decision)

* note 0..1 MS
* note ^short = "Bemerkungen"
* insert Translation(note ^short, de-DE, Bemerkungen)
* insert Translation(note ^short, en, Remarks)

* extension contains $fhir-ext-caused-by named causedBy 0..1 MS
* extension[causedBy] ^short = "Therapieempfehlung"
* extension[causedBy] ^definition = "Verweis auf die MTB Therapieempfehlung"
* insert Translation(extension[causedBy] ^short, de-DE, Therapieempfehlung)
* insert Translation(extension[causedBy] ^definition, de-DE, Verweis auf die MTB Therapieempfehlung)
* insert Translation(extension[causedBy] ^short, en, Therapy recommendation)
* insert Translation(extension[causedBy] ^definition, en, Reference to the MTB therapy recommendation)
* extension[causedBy].value[x] only Reference(MII_PR_Medikation_MedicationRequest or MII_PR_MTB_Therapieempfehlung or MedicationRequest)