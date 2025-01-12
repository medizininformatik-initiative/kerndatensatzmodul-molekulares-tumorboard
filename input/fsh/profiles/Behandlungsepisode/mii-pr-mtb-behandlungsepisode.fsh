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

// TODO: ECOG abweichend von InfoModell in Diagnose verschoben - iO?
// Diagnosis
* diagnosis 1..* MS
* diagnosis.condition 1..1 MS
* diagnosis.condition only Reference(MII_PR_MTB_Diagnose_Primaertumor)
* diagnosis ^short = "Diagnose Primärtumor"
* diagnosis ^definition = "Referenz auf Diagnose des Primärtumors"

// Medical reasons addressed during the episode of care
* extension contains MII_EX_MTB_Medizinischer_Grund named MedizinischerGrund 0..* MS
* extension[MedizinischerGrund] ^short = "Vortherapie"
* extension[MedizinischerGrund] ^short = "Vortherapien zur Behandlungsepisode"

// Patient consent for discussion in Molecular Tumor Board
* extension contains MII_EX_MTB_Einwilligung named Einwilligung 0..1 MS
* extension[Einwilligung] ^short = "Einwilligung"
* extension[Einwilligung] ^definition = "Einwilligung zum Molekularen Tumorboard"

// Specimen representing the tumour cell count
* extension contains MII_EX_MTB_Probe named Probe 0..* MS
* extension[Probe] ^short = "Bioprobe"
* extension[Probe] ^definition = "Bioprobe mit ermittelten Tumorzellgehalt"