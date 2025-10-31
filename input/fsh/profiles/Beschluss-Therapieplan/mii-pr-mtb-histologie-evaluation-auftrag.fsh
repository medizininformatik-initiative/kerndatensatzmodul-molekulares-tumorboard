Profile: MII_PR_MTB_Histologie_Evaluation_Auftrag
Parent: ServiceRequest
//Parent: MII_PR_Patho_Service_Request -> requester and encounter required, but probably unknown (only recommendation)
Id: mii-pr-mtb-histologie-evaluation-auftrag
Title: "MII PR MTB Histologie-Evaluation Auftrag"
Description: "Auftrag zur (erneuten) Histologie-Evaluation"
* insert PR_Header

* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
* status ^definition = "Status der Umsetzung der Empfehlung"
* status ^comment = "
    draft: Nicht umgesetzt, 
    active: In Umsetzung, 
    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"

* intent = #proposal (exactly)

* code 1..1 MS
* code ^short = "Empfehlung zur histologischen (Re-)Evaluation"
* code ^definition = "Empfehlung zur histologischen (Re-)Evaluation"
* code = $SCT#183825009  "Refer for histology (procedure)" (exactly)

* reasonReference ^slicing.discriminator.type = #profile
* reasonReference ^slicing.discriminator.path = "$this.resolve()"
* reasonReference ^slicing.rules = #open
* reasonReference ^slicing.description = "Slice für referenzierten Histologiebefund oder bestimmten Tumorzellgehalt"
* reasonReference ^slicing.ordered = false

* reasonReference contains Histologie 0..1 MS
* reasonReference[Histologie] ^short = "Histologiebefund"
* reasonReference[Histologie] ^definition = "Verweis auf Histologiebefund"
* reasonReference[Histologie] 0..1 MS
* reasonReference[Histologie] only Reference(MII_PR_Onko_Befund)

* reasonReference contains Tumorzellgehalt 0..1 MS
* reasonReference[Tumorzellgehalt] ^short = "Tumorzellgehalt"
* reasonReference[Tumorzellgehalt] ^definition = "Verweis auf bestimmten Tumorzellgehalt"
* reasonReference[Tumorzellgehalt] 0..1 MS
* reasonReference[Tumorzellgehalt] only Reference(MII_PR_MTB_Tumorzellgehalt)

* specimen 0..* MS
* specimen only Reference(
    MII_PR_Onko_Specimen or
    MII_PR_Patho_Specimen or
    MII_PR_Biobank_Specimen_Bioprobe_Core or
    Specimen
)