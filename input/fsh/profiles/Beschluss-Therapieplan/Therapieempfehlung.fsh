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

* extension contains 
    MII_EX_MTB_Therapieempfehlung_Prioritaet named prioritaet 0..1 MS and
    MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung named evidenzgraduierung 0..1 MS and
    MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung_Publikation named publikation 0..* MS

//* extension contains MII_EX_MTB_Therapieempfehlung_Prioritaet named Prioritaet 0..1 MS
//* extension[Prioritaet] ^short = "Priorität"
//* extension[Prioritaet] ^definition = "Priorität der (einzelnen) Therapieempfehlung"
//* extension[Prioritaet] ^comment = "Wert 1 entspricht der höchsten Priorität, alle weiteren eine jeweils niedrigere Priorität"
//
//* extension contains MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung named Evidenzgraduierung 0..1 MS
//* extension[Evidenzgraduierung] ^short = "Evidenzgraduierung"
//* extension[Evidenzgraduierung] ^definition = "Evidenzgraduierung für Biomarker-basierte Therapieempfehlung"
//* extension[Evidenzgraduierung] ^comment = "Evidenzgraduierung wird durch einen Evidenzgrad und einen optionalen Zusatzverweis angegeben"
//
//* extension contains MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung_Publikation named Publikation 0..* MS
//* extension[Publikation] ^short = "Publikation"
//* extension[Publikation] ^definition = "Verweis auf Publikation zur Evidenzgraduierung"
//* extension[Publikation] ^comment = "Verweis auf Publikation erfolgt anhand der DOI oder PMID"