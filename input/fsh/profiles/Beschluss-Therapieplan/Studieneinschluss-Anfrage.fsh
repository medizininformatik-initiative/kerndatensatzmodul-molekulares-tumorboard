// TODO: Klären, ob Anfrage zum Studieneinschluss bzw. Anmeldung eher in MII Studien-Modul einfließen soll
Profile: MII_PR_MTB_Studieneinschluss_Anfrage
Parent: ServiceRequest
Id: mii-pr-mtb-studieneinschluss-anfrage
Title: "MII PR MTB Studieneinschluss Anfrage"
Description: "Anfrage zum Studieneinschluss"
* insert PR_Header
* intent = #proposal
* category = $SCT#110465008 // Clinical trial (procedure)
* code = $SCT#709491003 // Enrollment in clinical trial (procedure)
// TODO: Alternative Darstellung
//* category = $SCT#308364004 // Research administrative procedure (procedure)
//* code = $SCT#780816009 // Invitation to participate in research study (procedure)
* reasonReference 0..* MS
* reasonReference only Reference(MII_PR_Onko_Diagnose or Condition)
* supportingInfo 1..* MS
* supportingInfo only Reference(MII_PR_Onko_Studie or MII_PR_Studie_Studie or ResearchStudy)

// TODO: Klären, ob in Studien durch komplexe onkol. Diagnosen (Condition) als Kriterium verwendet werden kann
// TODO: Ggf. auslagern in MII Onkologie-Modul
Profile: MII_PR_Onko_Studie
Parent: MII_PR_Studie_Studie
Id: mii-pr-onko-studie
Title: "MII PR Onkologie Studie"
Description: "Onkologische Studie"
* identifier 0..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice für Identifikator eines Studienregisters anhand von `system`"
* identifier ^slicing.ordered = false

* identifier contains NCT 0..1
* identifier[NCT].use = #official
* identifier[NCT].system = $mii-ns-onko-nct
* identifier[NCT].value 1..1 MS

* identifier contains DRKS 0..1
* identifier[DRKS].use = #official
* identifier[DRKS].system = $mii-ns-studie-drks
* identifier[DRKS].value 1..1 MS

* identifier contains EudraCT 0..1
* identifier[EudraCT].use = #official
* identifier[EudraCT].system = $mii-ns-studie-eudract
* identifier[EudraCT].value 1..1 MS

* condition.extension contains MII_EX_Onko_Diagnose named OnkologischeDiagnose 0..* MS

// Klären, ob Diagnose (für Studieneinschluss) als ResearchStudy.condition:valueCodeableConcept genügt
// TODO: Ggf. auslagern in MII Onkologie-Modul
Extension: MII_EX_Onko_Diagnose
Id: mii-ex-onko-diagnose
Title: "MII EX Onkologie Diagnose"
Description: "Onkologische Diagnose"
* insert EX_Header($mii-ex-onko-diagnose)
* value[x] only Reference(MII_PR_Onko_Diagnose or Condition)
* valueReference 1..1 MS

