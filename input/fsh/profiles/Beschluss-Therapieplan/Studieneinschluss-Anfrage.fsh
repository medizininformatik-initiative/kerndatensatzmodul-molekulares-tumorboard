Profile: MII_PR_MTB_Studieneinschluss_Anfrage
Parent: ServiceRequest
Id: mii-pr-mtb-studieneinschluss-anfrage
Title: "MII PR MTB Studieneinschluss Anfrage"
Description: "Anfrage zum Studieneinschluss"
* insert PR_Header

* intent = #proposal
* category = $SCT#110465008 // Clinical trial (procedure)
* code = $SCT#709491003 // Enrollment in clinical trial (procedure)

* reasonReference 0..* MS
* reasonReference only Reference(MII_PR_Onko_Diagnose or Condition)

* supportingInfo 1..* MS
* supportingInfo only Reference(MII_PR_MTB_Studie or MII_PR_Studie_Studie or ResearchStudy)

// TODO: In nächster Version sollte nachfolgendes ggf. in Modul Forschungsvorhaben/ Onkologie umziehen
Profile: MII_PR_MTB_Studie
Parent: MII_PR_Studie_Studie
Id: mii-pr-mtb-studie
Title: "MII PR MTB Studie"
Description: "Onkologische Studie"
* insert PR_Header

* identifier 0..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice für Identifikator eines Studienregisters bzw. studiendurchführenden Organisation anhand von `system`"
* identifier ^slicing.ordered = false

* identifier contains NCT 0..1
* identifier[NCT].system = $mii-ns-mtb-nct
* identifier[NCT].value 1..1 MS

* identifier contains DRKS 0..1
* identifier[DRKS].system = $mii-ns-studie-drks
* identifier[DRKS].value 1..1 MS

* identifier contains EudraCT 0..1
* identifier[EudraCT].system = $mii-ns-studie-eudract
* identifier[EudraCT].value 1..1 MS

* extension contains MII_EX_MTB_Diagnose named OnkologischeDiagnose 0..* MS

// TODO: In nächster Version sollte nachfolgendes ggf. in Modul Forschungsvorhaben/ Onkologie umziehen
Extension: MII_EX_MTB_Diagnose
Id: mii-ex-mtb-diagnose
Context: ResearchStudy
Title: "MII EX MTB Diagnose"
Description: "Onkologische Diagnose"
* insert EX_Header($mii-ex-mtb-diagnose)

* value[x] only Reference(MII_PR_Onko_Diagnose or Condition)
* value[x] 1..1 MS
