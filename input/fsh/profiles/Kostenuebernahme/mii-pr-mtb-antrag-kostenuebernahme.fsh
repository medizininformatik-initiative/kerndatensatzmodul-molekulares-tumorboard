Profile: MII_PR_MTB_Antrag_Kostenuebernahme
Parent: Claim
Id: mii-pr-mtb-antrag-kostenuebernahme
Title: "MII PR MTB Antrag Kostenuebernahme"
Description: "Antrag Kostenübernahme"
* insert PR_Header
* status MS
* status = #active
* type MS
* type from MII_VS_MTB_Antrag_Kostenuebernahme
* use MS
* patient MS
* patient only Reference(Patient)
* created MS
* created ^definition = "Austellungsdatum"
* provider MS
* provider only Reference(Organization)
* priority MS
* priority = #normal
// TODO: Überlegen ob prescription die richtige Wahl für Therapieempfehlung ist
* prescription MS
* prescription ^short = "Therapieempfehlung"
* prescription ^definition = "Verweis auf die Therapieempfehlung des MTB"
* prescription only Reference(MedicationRequest)
* insurance MS
* insurance.sequence MS
* insurance.sequence = 1
* insurance.focal MS
* insurance.focal = true
* insurance.coverage MS
* insurance.coverage only Reference(Coverage)
* insurance.claimResponse MS
* extension contains MII_EX_MTB_Antrag_Kostenuebernahme_Antragsstadium named Antragsstadium 1..1 MS
// Antragsstadium über related
* extension[Antragsstadium] ^short = "Antragsstadium"
* extension[Antragsstadium] ^definition = "Stadium des Antrags auf Kostenuebernahme"

* careTeam ^slicing.discriminator.type = #type
* careTeam ^slicing.discriminator.path = "sequence"
* careTeam ^slicing.rules = #open
* careTeam ^slicing.description = "Slice für Antragsstellung ZPM"
* careTeam ^slicing.ordered = false

* careTeam contains ZPMBeteiligung 1..* MS
* careTeam[ZPMBeteiligung] ^short = "Antragstellung ZPM"
* careTeam[ZPMBeteiligung] ^definition = "Verweis auf entsprechendes Feld in NGS Bericht und/oder IHC (Verweis auf KDS Molekular-Pathologischer Befundbericht)"
* careTeam[ZPMBeteiligung] 1..1 MS

* careTeam[ZPMBeteiligung].sequence MS
* careTeam[ZPMBeteiligung].sequence = 1
* careTeam[ZPMBeteiligung].provider MS
* careTeam[ZPMBeteiligung].provider only Reference(Organization)
* careTeam[ZPMBeteiligung].responsible 1..1 MS
* careTeam[ZPMBeteiligung].responsible ^short = "Beteiliung - Ja/Nein"
* careTeam[ZPMBeteiligung].responsible ^definition = "Beteiliung des ZPM - Ja/Nein"

// slice 
// careTeam mit Organizsation zpm
// responsible true or false
