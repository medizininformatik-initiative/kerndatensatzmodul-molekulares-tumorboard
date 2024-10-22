Profile: MII_PR_MTB_Therapieempfehlung
Parent: MII_PR_Medikation_MedicationRequest
Id: mii-pr-mtb-therapieempfehlung
Title: "MII PR MTB Therapieempfehlung Systemische Therapie"
Description: "Therapieempfehlung für eine medikamentöse Systemische Therapie"
* insert PR_Header

* medication[x] 1..1 MS
* medicationReference only Reference(MII_PR_Medikation_Medication or Medication)

* supportingInformation 0..* MS
* supportingInformation ^slicing.discriminator.type = #type
* supportingInformation ^slicing.discriminator.path = "reference.reference"
* supportingInformation ^slicing.rules = #open
* supportingInformation ^slicing.description = "Slice für stützende Angaben zur Systemischen Therapie auf Basis des referenzierten Ressourcentyps"
* supportingInformation ^slicing.ordered = false

* supportingInformation contains StuetzendeMolekulareAlteration 0..* MS
* supportingInformation[StuetzendeMolekulareAlteration] ^short = "Stützende molekulare Alteration(en)"
* supportingInformation[StuetzendeMolekulareAlteration] ^definition = "Verweis auf entsprechendes Feld in NGS Bericht und/oder IHC (Verweis auf KDS Molekular-Pathologischer Befundbericht)"
* supportingInformation[StuetzendeMolekulareAlteration] only Reference(MII_PR_Patho_Finding or MII_PR_MolGen_Variante or MII_PR_Onko_Genetische_Variante or Observation)

* supportingInformation contains StuetzendeEntitaet 0..* MS
* supportingInformation[StuetzendeEntitaet] ^short = "Stützende Entität"
* supportingInformation[StuetzendeEntitaet] ^definition = "Verweis auf die Tumorentität, falls Therapie- oder Studieneinschlussempfehlung nicht aufgrund einer molekularen Alteration geschieht"
* supportingInformation[StuetzendeEntitaet] only Reference(MII_PR_Onko_Diagnose or Condition)

* insert Therapieempfehlung_Erweiterungen