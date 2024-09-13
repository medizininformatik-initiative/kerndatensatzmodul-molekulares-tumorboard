Profile: MII_PR_MTB_Follow_Up_Procedure
Parent: Procedure
Id: mii-pr-mtb-follow-up-procedure
Title: "MII PR MTB Follow-Up"
Description: "Follow-Up nach DNPM"

* status MS
* subject MS
* performed[x] MS
* performed[x] only dateTime
* performed[x] ^short = "Erfassungsdatum"
* performed[x] ^definition = "Erfassungsdatum Durchführung Follow-Up"
* basedOn 1..1 MS
* basedOn only Reference(MII_PR_MTB_Follow_Up_CarePlan)
* basedOn ^short = "Umgesetzte Therapien"
* basedOn ^definition = "Gemäß der Therapieempfehlungen umgesetzte Therapien"

* followUp 1..1 MS
* followUp ^slicing.discriminator.type = #value
* followUp ^slicing.discriminator.path = "system"
* followUp ^slicing.rules = #open
* followUp ^slicing.description = "Slice für Status des Follow-Up und Grund Nicht-Umsetzung bei Status 'not done'"
* followUp ^slicing.ordered = false
* followUp contains Status 1..1
* followUp[Status] ^short = "Follow-Up Status"
* followUp[Status].coding 1..1 MS
* followUp[Status].coding.system = $mii-cs-mtb-follow-up-status
* followUp[Status].coding.code MS
// GrundNichtUmsetzung - Wird entweder evaluiert, wenn Patient ein zweites mal im MTB vorgestellt wird oder Patient verstorben ist. -> Rule?
* followUp contains GrundNichtUmsetzung 0..1
* followUp[GrundNichtUmsetzung] ^short = "Grund Nicht-Umsetzung"
* followUp[GrundNichtUmsetzung] ^definition = "Grund für die Nicht-Umsetzung des gesamten Therapieplans"
* followUp[GrundNichtUmsetzung].coding 1..1
* followUp[GrundNichtUmsetzung].coding.system = $mii-cs-mtb-follow-up-grund-nicht-umsetzung
* followUp[GrundNichtUmsetzung].coding.code MS