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
* insert Translation(status ^short, de-DE, active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown)
* insert Translation(status ^definition, de-DE, Status der Umsetzung der Therapieempfehlung)
* insert Translation(status ^short, en, active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown)
* insert Translation(status ^definition, en, Status of therapy recommendation implementation)

// TODO Constrain intent to proposal and option? (Option is needed for RequestGroup)
* intent ^short = "proposal | option"
* intent ^definition = "Da das MTB nur Empfehlungen abgibt, wird hier typischerweise 'proposal' stehen. Es sei denn,
        diese Therapieempfehlung ist Teil einer RequestGroup (z.B. Kombinationstherapie). In dem Fall muss hier 'option' stehen."
* insert Translation(intent ^short, de-DE, proposal | option)
* insert Translation(intent ^definition, de-DE, Da das MTB nur Empfehlungen abgibt wird hier typischerweise proposal stehen. Es sei denn diese Therapieempfehlung ist Teil einer RequestGroup - z.B. Kombinationstherapie. In dem Fall muss hier option stehen.)
* insert Translation(intent ^short, en, proposal | option)
* insert Translation(intent ^definition, en, Since the MTB only provides recommendations this will typically be proposal. Unless this therapy recommendation is part of a RequestGroup - e.g. combination therapy. In that case option must be used.)

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
* insert Translation(reasonReference[StuetzendeMolekulareAlteration] ^short, de-DE, Stützende molekulare Alterationen)
* insert Translation(reasonReference[StuetzendeMolekulareAlteration] ^definition, de-DE, Verweis auf entsprechendes Feld in NGS Bericht und/oder IHC - Verweis auf KDS Molekular-Pathologischer Befundbericht)
* insert Translation(reasonReference[StuetzendeMolekulareAlteration] ^short, en, Supporting Molecular Alterations)
* insert Translation(reasonReference[StuetzendeMolekulareAlteration] ^definition, en, Reference to corresponding field in NGS report and/or IHC - reference to KDS Molecular Pathology Report)
* reasonReference[StuetzendeMolekulareAlteration] only Reference(
    MII_PR_Patho_Finding or
    https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante or
    MII_PR_Onko_Genetische_Variante or
    Observation
)

// NOTE: Entity-based recommendations (without molecular alteration) use the inherited
// reasonReference[Primaertumor] slice from the parent profile. No separate slice needed.

* extension contains
    MII_EX_MTB_Empfehlung_Prioritaet named Prioritaet 0..1 MS and
    MII_EX_MTB_Empfehlung_Evidenzgraduierung named Evidenzgraduierung 0..1 MS and
    MII_EX_MTB_Empfehlung_Publikation named Publikation 0..* MS