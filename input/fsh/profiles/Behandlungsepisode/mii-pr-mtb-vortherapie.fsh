Profile: MII_PR_MTB_Vortherapie
Parent: MII_PR_Prozedur_Procedure
Id: mii-pr-mtb-vortherapie
Title: "MII PR MTB Vortherapie"
Description: "Vortherapie"
* insert PR_Header

// Therapy Cancelation Reason
* statusReason 0..1 MS
* statusReason.coding 1..* MS

* statusReason.coding ^slicing.discriminator.type = #value
* statusReason.coding ^slicing.discriminator.path = "system"
* statusReason.coding ^slicing.rules = #open
* statusReason.coding ^slicing.description = ""
* statusReason.coding ^slicing.ordered = false

* statusReason.coding contains Abbruchsgrund 0..1 MS
* statusReason.coding[Abbruchsgrund].system = $mii-cs-mtb-abbruchsgrund
* statusReason.coding[Abbruchsgrund].code from MII_VS_MTB_Abbrungsgrund

// TODO: Custom DNPM vs. OPS vs. SCT
// Category, esp. Non-Systematic Therapy
* category 1..1 MS

// Previous Guideline Therapy Period
* performed[x] 1..1 MS
* performed[x] only Period
* performedPeriod.start 0..1 MS
* performedPeriod.end 0..1 MS

// Primary Diagnosis
* reasonReference 0..* MS
* reasonReference only Reference(MII_PR_MTB_Diagnose_Primaertumor)

// Therapy according to Guideline Recommendations
* extension contains MII_EX_MTB_Leitlinienbehandlung_Status named LeitlinenbehandlungStatus 0..1 MS
* extension contains MII_EX_MTB_Therapielinie named Therapielinie 0..1 MS
* extension contains MII_EX_MTB_Zulassungsstatus named Zulassungsstatus 0..1 MS

// TODO: Wirkstoff und Grund Therapieende in MedicationStatement mit Referenz auf Procedure oder andere Richtung?