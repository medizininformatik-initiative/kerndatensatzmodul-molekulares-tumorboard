Profile: MII_PR_MTB_Therapieempfehlung
Parent: MII_PR_Medikation_MedicationRequest
Id: mii-pr-mtb-therapieempfehlung
Title: "MII PR MTB Therapieempfehlung Systemische Therapie"
Description: "Therapieempfehlung für eine medikamentöse Systemische Therapie"
* insert PR_Header

* status ^short = "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown"
* status ^definition = "Status der Umsetzung der Therapieempfehlung"
* status ^comment = "
    draft: Nicht umgesetzt, 
    active: In Umsetzung, 
    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"

// TODO Strictly Constrain intent to proposal and option? (Option is needed for RequestGroup)
* intent ^short = "proposal | option"
* intent ^definition = "Da das MTB nur Empfehlungen abgibt, wird hier typischerweise 'proposal' stehen. Es sei denn,
        diese Therapieempfehlung ist Teil einer RequestGroup (z.B. Kombinationstherapie). In dem Fall muss hier 'option' stehen."

* medication[x] 1..1 MS
* medicationReference only Reference(MII_PR_Medikation_Medication)

// TODO Constrain status to draft?
// TODO Constrain intent to proposal and option? (Option is needed for RequestGroup)
// statt supportingInformation hier besser * reasonReference -> das hat die Semantik, dass die Empfehlung auf eine bestimmte Diagnose/Variante zurückgeht

* supportingInformation 0..* MS
* supportingInformation ^slicing.discriminator.type = #type
* supportingInformation ^slicing.discriminator.path = "reference.reference"
* supportingInformation ^slicing.rules = #open
* supportingInformation ^slicing.description = "Slice für stützende Angaben zur Systemischen Therapie auf Basis des referenzierten Ressourcentyps"
* supportingInformation ^slicing.ordered = false

* supportingInformation contains StuetzendeMolekulareAlteration 0..* MS
* supportingInformation[StuetzendeMolekulareAlteration] ^short = "Stützende molekulare Alteration(en)"
* supportingInformation[StuetzendeMolekulareAlteration] ^definition = "Verweis auf entsprechendes Feld in NGS Bericht und/oder IHC (Verweis auf KDS Molekular-Pathologischer Befundbericht)"
* supportingInformation[StuetzendeMolekulareAlteration] only Reference(
    MII_PR_Patho_Finding or
    MII_PR_MolGen_Variante or
    MII_PR_Onko_Genetische_Variante or
    Observation
)

* supportingInformation contains StuetzendeEntitaet 0..* MS
* supportingInformation[StuetzendeEntitaet] ^short = "Stützende Entität"
* supportingInformation[StuetzendeEntitaet] ^definition = "Verweis auf die Tumorentität, falls Therapie- oder Studieneinschlussempfehlung nicht aufgrund einer molekularen Alteration geschieht"
* supportingInformation[StuetzendeEntitaet] only Reference(MII_PR_MTB_Diagnose_Primaertumor or Condition)

* extension contains
    MII_EX_MTB_Empfehlung_Prioritaet named Prioritaet 0..1 MS and
    MII_EX_MTB_Empfehlung_Evidenzgraduierung named Evidenzgraduierung 0..1 MS and
    MII_EX_MTB_Empfehlung_Publikation named Publikation 0..* MS