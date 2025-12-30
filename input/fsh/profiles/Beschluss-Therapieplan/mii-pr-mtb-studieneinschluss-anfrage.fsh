Profile: MII_PR_MTB_Studieneinschluss_Anfrage
Parent: ServiceRequest
Id: mii-pr-mtb-studieneinschluss-anfrage
Title: "MII PR MTB Studieneinschluss Anfrage"
Description: "Anfrage zum Studieneinschluss"
* insert PR_Header

* status MS
* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
* status ^definition = "Status des Studieneinschlusses"
* status ^comment = "
    draft: Nicht umgesetzt,
    active: In Umsetzung,
    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"
* insert Translation(status ^short, de-DE, draft | active | on-hold | revoked | completed | entered-in-error | unknown)
* insert Translation(status ^definition, de-DE, Status des Studieneinschlusses)
* insert Translation(status ^short, en, draft | active | on-hold | revoked | completed | entered-in-error | unknown)
* insert Translation(status ^definition, en, Status of study enrollment)

* extension contains http://hl7.org/fhir/StructureDefinition/request-statusReason named statusReason 0..1 MS
* extension[statusReason] ^short = "Grund für Ablehnung"
* extension[statusReason] ^definition = "Grund für Ablehnung des Studieneinschlusses (Tod, Studie geschlossen etc)"
* insert Translation(extension[statusReason] ^short, de-DE, Grund für Ablehnung)
* insert Translation(extension[statusReason] ^definition, de-DE, Grund für Ablehnung des Studieneinschlusses - z.B. Tod oder Studie geschlossen)
* insert Translation(extension[statusReason] ^short, en, Reason for Rejection)
* insert Translation(extension[statusReason] ^definition, en, Reason for rejection of study enrollment - e.g. death or study closed)

* intent = #proposal (exactly)

* category 1..1 MS
* category = $SCT#110465008 "Clinical trial (procedure)" (exactly)

* code 1..1 MS
* code ^short = "Studieneinschlussempfehlung"
* code ^definition = "Empfehlung zum Einschluss in eine Studie"
* code = $SCT#702475000 "Referral to clinical trial (procedure)" (exactly)
* insert Translation(code ^short, de-DE, Studieneinschlussempfehlung)
* insert Translation(code ^definition, de-DE, Empfehlung zum Einschluss in eine Studie)
* insert Translation(code ^short, en, Study Enrollment Recommendation)
* insert Translation(code ^definition, en, Recommendation for enrollment in a study)

* reasonReference 0..* MS
* reasonReference only Reference(MII_PR_MTB_Diagnose_Primaertumor or Condition)

* supportingInfo 0..* MS
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice für Referenz auf eine Studie"
* supportingInfo ^slicing.ordered = false

* supportingInfo contains Studie 0..* MS
* supportingInfo[Studie] only Reference(
    MII_PR_MTB_Studie or
    MII_PR_Studie_Studie or
    ResearchStudy
)

* extension contains
    MII_EX_MTB_Empfehlung_Prioritaet named Prioritaet 0..1 MS and
    MII_EX_MTB_Empfehlung_Publikation named Publikation 0..* MS