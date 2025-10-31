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

* intent = #proposal (exactly)

* code 1..1 MS
* code ^short = "Empfehlung zur (Re-)Biopsie"
* code ^definition = "Empfehlung zur (Re-)Biopsie"
* code = $SCT#86273004 "Biopsy (procedure)" (exactly)

* reasonReference ^slicing.discriminator.type = #profile
* reasonReference ^slicing.discriminator.path = "$this.resolve()"
* reasonReference ^slicing.rules = #open
* reasonReference ^slicing.description = "Slice für referenzierten Histologiebefund oder bestimmten Tumorzellgehalt"
* reasonReference ^slicing.ordered = false

* reasonReference contains Histologie 0..1 MS
* reasonReference[Histologie] ^short = "Histologiebefund"
* reasonReference[Histologie] ^definition = "Verweis auf Histologiebefund, der eine Rebiopsie begründet"
* reasonReference[Histologie] 0..1 MS
* reasonReference[Histologie] only Reference(MII_PR_Onko_Befund or DiagnosticReport)

* reasonReference contains Tumorzellgehalt 0..1 MS
* reasonReference[Tumorzellgehalt] ^short = "Tumorzellgehalt"
* reasonReference[Tumorzellgehalt] ^definition = "Verweis auf bestimmten, häufig zu niedrigen Tumorzellgehalt, der eine Rebiopsie notwendig macht"
* reasonReference[Tumorzellgehalt] 0..1 MS
* reasonReference[Tumorzellgehalt] only Reference(MII_PR_MTB_Tumorzellgehalt or Observation)

* specimen 0..* MS
* specimen only Reference(
    MII_PR_Onko_Specimen or
    MII_PR_Patho_Specimen or
    MII_PR_Biobank_Specimen_Bioprobe_Core or
    Specimen
)