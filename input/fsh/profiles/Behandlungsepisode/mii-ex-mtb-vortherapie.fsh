Extension: MII_EX_MTB_Vortherapie
Id: mii-ex-mtb-vortherapie
Context: EpisodeOfCare
Title: "MII EX MTB Vortherapie"
Description: "Vortherapie in Behandlungsepisode"
* insert EX_Header($mii-ex-mtb-vortherapie)

// Reference to procedure representing a pre-therapy (e.g. procedures defined in module Onkologie)
* extension contains Vortherapie 1..1 MS
* extension[Vortherapie].value[x] 1..1 MS
* extension[Vortherapie].value[x] only Reference
* extension[Vortherapie].valueReference ^slicing.discriminator.type = #pattern
* extension[Vortherapie].valueReference ^slicing.discriminator.path = "type"
* extension[Vortherapie].valueReference ^slicing.rules = #open
* extension[Vortherapie].valueReference ^slicing.description = "Slice für Prozedur"
* extension[Vortherapie].valueReference ^slicing.ordered = false
* extension[Vortherapie].valueReference contains Vortherapie 1..1 MS
* extension[Vortherapie].valueReference[Vortherapie].type = #Procedure
* extension[Vortherapie].valueReference[Vortherapie] ^short = "Referenz Vortherapie"
* extension[Vortherapie].valueReference[Vortherapie] ^definition = "Referenz auf Vortherapie in Behandlungsepisode"

// Additional information regarding the conformance of the referenced pre-therapy
* extension contains MII_EX_MTB_Therapielinie named Therapielinie 0..1 MS
* extension contains MII_EX_MTB_Zulassungsstatus named Zulassungsstatus 0..1 MS