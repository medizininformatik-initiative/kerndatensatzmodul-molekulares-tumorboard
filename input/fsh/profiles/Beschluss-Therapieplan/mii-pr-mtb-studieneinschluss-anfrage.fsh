Profile: MII_PR_MTB_Studieneinschluss_Anfrage
Parent: ServiceRequest
Id: mii-pr-mtb-studieneinschluss-anfrage
Title: "MII PR MTB Studieneinschluss Anfrage"
Description: "Anfrage zum Studieneinschluss"
* insert PR_Header

* status ^short = "Umsetzungsstatus"
* status ^definition = "Status der Umsetzung der Empfehlung"
* status ^comment = "
    draft: Nicht umgesetzt, 
    active: In Umsetzung, 
    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"

* intent = #proposal
* category = $SCT#110465008 "Clinical trial (procedure)"
* code = $SCT#709491003 "Enrollment in clinical trial (procedure)"

* reasonReference 0..* MS
* reasonReference only Reference(MII_PR_MTB_Diagnose_Primaertumor or Condition)

* supportingInfo 1..* MS
* supportingInfo only Reference(
    MII_PR_MTB_Studie or
    MII_PR_Studie_Studie or
    ResearchStudy
)

* extension contains
    MII_EX_MTB_Empfehlung_Prioritaet named Prioritaet 0..1 MS and
    MII_EX_MTB_Empfehlung_Publikation named Publikation 0..* MS