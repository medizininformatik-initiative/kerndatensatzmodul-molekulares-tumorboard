Profile: MII_PR_MTB_Systemtherapie
Parent: MedicationStatement
Id: mii-pr-mtb-systemtherapie
Title: "MII PR MTB Systemtherapie"
Description: "Systemtherapie mit Referenz auf MTB Therapieempfehlung"
* insert PR_Header

* basedOn 0..1 MS
* basedOn ^slicing.discriminator.type = #value
* basedOn ^slicing.discriminator.path = "system"
* basedOn ^slicing.rules = #open
* basedOn ^slicing.description = "Slice für die Referenzierung der Therapie zum Follow-
                                  Up Careplan, wo die umgesetzten Therapien gesammelt werden.
                                  und zur Referenzierung der Therapieempfehlung, auf welche die Therapie basiert"
* basedOn ^slicing.ordered = false
* basedOn contains Therapieempfehlung 0..1
* basedOn[Therapieempfehlung] only Reference(MedicationRequest)
* basedOn[Therapieempfehlung] ^short = "Therapieempfehlung"
* basedOn[Therapieempfehlung] ^definition = "Referenz auf Therapieempfehlung in Therapieplan"
* basedOn contains FollowUpCarePlan 1..1
* basedOn[FollowUpCarePlan] only Reference(MII_PR_MTB_Follow_Up_CarePlan)
* basedOn[FollowUpCarePlan] ^short = "Follow-Up Careplan"

* status MS
* status ^short = "Status"
* status from MII_VS_MTB_Systemtherapie_Status
// RULE: WENN STATUS COMPLETED ODER STOPPED -> MUSS SYSTEMISCHE THERAPIE ENDE GRUND AUSFÜLLEN
* statusReason 0..1 MS
* statusReason from https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-systemische-therapie-ende-grund
* statusReason ^short = "Systemische Therapie Ende Grund" 
* statusReason ^definition = "Gibt den Grund an, warum die Systemtherapie beendet wurde." 

* medication[x] MS
* medication[x] ^short = "Wirkstoffe"
* subject MS
* subject only Reference(Patient)
* effective[x] 1..1 MS
* effective[x] only Period
* effectivePeriod MS
* effectivePeriod.start 1..1 MS
* effectivePeriod.start ^short = "Startdatum"
* effectivePeriod.end 1..1 MS
* effectivePeriod.end ^short = "Enddatum"
* note 0..* MS
* note ^short = "Bemerkungen"
* dosage MS
// TODO: überlegen wie man die Codes aus ArtDecor als 'Dosage' data type darstellen kann
* dosage ^short = "Dosisdichte"