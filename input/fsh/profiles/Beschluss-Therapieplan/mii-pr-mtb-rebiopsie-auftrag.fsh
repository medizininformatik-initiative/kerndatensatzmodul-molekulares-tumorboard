Profile: MII_PR_MTB_Biopsie_Auftrag
Parent: ServiceRequest
Id: mii-pr-mtb-biopsie-auftrag
Title: "MII PR MTB Biopsie Auftrag"
Description: "Auftrag zur (erneuten) Biopsie"
* insert PR_Header

* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
* status ^definition = "Status der Umsetzung der Empfehlung"
* status ^comment = "
    draft: Geplant, nicht angefragt,
    active: Biopsie,
    completed: Abgeschlossen"
* insert Translation(status ^short, de-DE, draft | active | on-hold | revoked | completed | entered-in-error | unknown)
* insert Translation(status ^definition, de-DE, Status der Umsetzung der Empfehlung)
* insert Translation(status ^short, en, draft | active | on-hold | revoked | completed | entered-in-error | unknown)
* insert Translation(status ^definition, en, Status of the recommendation implementation)

* intent = #proposal (exactly)

* code 1..1 MS
* code ^short = "Empfehlung zur (Re-)Biopsie"
* code ^definition = "Empfehlung zur (Re-)Biopsie"
* code = $SCT#86273004 "Biopsy (procedure)" (exactly)
* insert Translation(code ^short, de-DE, Empfehlung zur Re-Biopsie)
* insert Translation(code ^definition, de-DE, Empfehlung zur Re-Biopsie)
* insert Translation(code ^short, en, Recommendation for re-biopsy)
* insert Translation(code ^definition, en, Recommendation for re-biopsy)

* reasonReference ^slicing.discriminator.type = #profile
* reasonReference ^slicing.discriminator.path = "$this.resolve()"
* reasonReference ^slicing.rules = #open
* reasonReference ^slicing.description = "Slice für referenzierten Histologiebefund oder bestimmten Tumorzellgehalt"
* reasonReference ^slicing.ordered = false

* reasonReference contains Histologie 0..1 MS
* reasonReference[Histologie] ^short = "Histologiebefund"
* reasonReference[Histologie] ^definition = "Verweis auf Histologiebefund, der eine Rebiopsie begründet"
* insert Translation(reasonReference[Histologie] ^short, de-DE, Histologiebefund)
* insert Translation(reasonReference[Histologie] ^definition, de-DE, Verweis auf Histologiebefund der eine Rebiopsie begründet)
* insert Translation(reasonReference[Histologie] ^short, en, Histology Report)
* insert Translation(reasonReference[Histologie] ^definition, en, Reference to histology report that justifies a re-biopsy)
* reasonReference[Histologie] 0..1 MS
* reasonReference[Histologie] only Reference(MII_PR_Onko_Befund or DiagnosticReport)

* reasonReference contains Tumorzellgehalt 0..1 MS
* reasonReference[Tumorzellgehalt] ^short = "Tumorzellgehalt"
* reasonReference[Tumorzellgehalt] ^definition = "Verweis auf bestimmten, häufig zu niedrigen Tumorzellgehalt, der eine Rebiopsie notwendig macht"
* insert Translation(reasonReference[Tumorzellgehalt] ^short, de-DE, Tumorzellgehalt)
* insert Translation(reasonReference[Tumorzellgehalt] ^definition, de-DE, Verweis auf bestimmten - häufig zu niedrigen - Tumorzellgehalt der eine Rebiopsie notwendig macht)
* insert Translation(reasonReference[Tumorzellgehalt] ^short, en, Tumor Cell Content)
* insert Translation(reasonReference[Tumorzellgehalt] ^definition, en, Reference to determined - often too low - tumor cell content that necessitates a re-biopsy)
* reasonReference[Tumorzellgehalt] 0..1 MS
* reasonReference[Tumorzellgehalt] only Reference(MII_PR_MTB_Tumorzellgehalt or Observation)

* specimen 0..* MS
* specimen only Reference(
    MII_PR_Onko_Specimen or
    MII_PR_Patho_Specimen or
    MII_PR_Biobank_Specimen_Bioprobe_Core or
    Specimen
)