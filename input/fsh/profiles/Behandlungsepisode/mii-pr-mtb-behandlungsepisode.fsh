Profile: MII_PR_MTB_Behandlungsepisode
Parent: EpisodeOfCare
Id: mii-pr-mtb-behandlungsepisode
Title: "MII PR MTB Behandlungsepisode"
Description: "Behandlungsepisode"
* insert PR_Header

// Epsiode of Care Business Identifier
* identifier 1..* MS

// Patient from Module Person
* patient 1..1 MS 
* patient only Reference(MII_PR_Person_Patient or MII_PR_Person_PatientPseudonymisiert)

// Registration Date Molecular Tumor Board
* period 1..1 MS
* period.start 1..1 MS

// Diagnosis
* diagnosis 1..* MS
* diagnosis.condition 1..1 MS
* diagnosis.condition only Reference(MII_PR_MTB_Diagnose_Primaertumor)