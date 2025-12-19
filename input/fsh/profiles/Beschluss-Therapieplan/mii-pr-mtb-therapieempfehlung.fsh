Profile: MII_PR_MTB_Therapieempfehlung
Parent: MII_PR_Onko_Therapieempfehlung_Medikation
Id: mii-pr-mtb-therapieempfehlung
Title: "MII PR MTB Therapieempfehlung Systemische Therapie"
Description: "Therapieempfehlung für eine medikamentöse Systemische Therapie"
* insert PR_Header

// TODO Constrain status to draft?
* status ^short = "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown"
* status ^definition = "Status der Umsetzung der Therapieempfehlung"
* status ^comment = "
    draft: Nicht umgesetzt, 
    active: In Umsetzung, 
    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"

// TODO Constrain intent to proposal and option? (Option is needed for RequestGroup)
* intent ^short = "proposal | option"
* intent ^definition = "Da das MTB nur Empfehlungen abgibt, wird hier typischerweise 'proposal' stehen. Es sei denn,
        diese Therapieempfehlung ist Teil einer RequestGroup (z.B. Kombinationstherapie). In dem Fall muss hier 'option' stehen."

* medication[x] 1..1 MS
// Erlaubt: medicationCodeableConcept (einfache ATC/UNII-Codierung) ODER medicationReference (komplexe Medikation mit Dosierung/Wirkstoffen)

* reasonReference ^slicing.discriminator.type = #profile
* reasonReference ^slicing.discriminator.path = "$this.resolve()"
* reasonReference ^slicing.rules = #open
* reasonReference ^slicing.description = "Slice für stützende Angaben zur Systemischen Therapie auf Basis des referenzierten Ressourcentyps"
* reasonReference ^slicing.ordered = false

* reasonReference contains StuetzendeMolekulareAlteration 0..* MS
* reasonReference[StuetzendeMolekulareAlteration] ^short = "Stützende molekulare Alteration(en)"
* reasonReference[StuetzendeMolekulareAlteration] ^definition = "Verweis auf entsprechendes Feld in NGS Bericht und/oder IHC (Verweis auf KDS Molekular-Pathologischer Befundbericht)"
* reasonReference[StuetzendeMolekulareAlteration] only Reference(
    MII_PR_Patho_Finding or
    https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante or
    MII_PR_Onko_Genetische_Variante or
    Observation
)

* reasonReference contains StuetzendeEntitaet 0..* MS
* reasonReference[StuetzendeEntitaet] ^short = "Stützende Entität"
* reasonReference[StuetzendeEntitaet] ^definition = "Verweis auf die Tumorentität, falls Therapie- oder Studieneinschlussempfehlung nicht aufgrund einer molekularen Alteration geschieht"
* reasonReference[StuetzendeEntitaet] only Reference(MII_PR_MTB_Diagnose_Primaertumor or Condition)

* extension contains
    MII_EX_MTB_Empfehlung_Prioritaet named Prioritaet 0..1 MS and
    MII_EX_MTB_Empfehlung_Evidenzgraduierung named Evidenzgraduierung 0..1 MS and
    MII_EX_MTB_Empfehlung_Publikation named Publikation 0..* MS