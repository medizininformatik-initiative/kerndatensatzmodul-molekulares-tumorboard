Profile: MII_PR_MTB_Behandlungsepisode
Parent: EpisodeOfCare
Id: mii-pr-mtb-behandlungsepisode
Title: "MII PR MTB Behandlungsepisode"
Description: "Behandlungsepisode"
* insert PR_Header

// Epsiode of care business identifier
* identifier 1..* MS

// Patient from module Person
* patient 1..1 MS 
* patient only Reference(MII_PR_Person_Patient or MII_PR_Person_PatientPseudonymisiert)

// Registration date Molecular Tumor Board
* period 1..1 MS
* period.start 1..1 MS
* period ^short = "Anmeldedatum"
* period ^definition = "Anmeldedatum zum Molekularen Tumorboard"

// Diagnosis
* diagnosis 1..* MS
* diagnosis.condition 1..1 MS
* diagnosis.condition only Reference(MII_PR_MTB_Diagnose_Primaertumor)
* diagnosis ^short = "Diagnose Primärtumor"
* diagnosis ^definition = "Referenz auf Diagnose des Primärtumors"

// Performed pre-therapies according clinical guideline
* extension contains MII_EX_MTB_Vortherapie named Vortherapie 0..* MS
* extension[Vortherapie] ^short = "Vortherapie"
* extension[Vortherapie] ^definition = "Vortherapie in Behandlungsepisode"

// Patient consent for discussion in Molecular Tumor Board
* extension contains MII_EX_MTB_Einwilligung named Einwilligung 0..1 MS
* extension[Einwilligung] ^short = "Einwilligung"
* extension[Einwilligung] ^definition = "Einwilligung zum Molekularen Tumorboard"

// Specimen representing the tumour cell count
* extension contains MII_EX_MTB_Probe named Probe 0..* MS
* extension[Probe] ^short = "Bioprobe"
* extension[Probe] ^definition = "Bioprobe mit ermittelten Tumorzellgehalt"

// Observation for observed ECOG performance status
* extension contains MII_EX_MTB_Allgemeiner_Leistungszustand named ECOG 0..* MS
* extension[ECOG] ^short = "ECOG"
* extension[ECOG] ^definition = "ECOG Performance Status"

// Associated care plans from molekular tumor board
* extension contains MII_EX_MTB_Therapieplan named Therapieplan 0..* MS
* extension[Therapieplan] ^short = "Beschlossener Therapieplan"
* extension[Therapieplan] ^definition = "Im Molekularen Tumorboard beschlossener Therapieplan"