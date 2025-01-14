Extension: MII_EX_MTB_Bericht
Id: mii-ex-mtb-bericht
Context: EpisodeOfCare
Title: "MII EX MTB Bericht"
Description: "Bericht, der mit einer Behandlungsepisode assoiziiert ist"
* insert EX_Header($mii-ex-mtb-bericht)

* value[x] 1..1 MS
* value[x] only Reference

* valueReference ^slicing.discriminator.type = #pattern
* valueReference ^slicing.discriminator.path = "type"
* valueReference ^slicing.rules = #open
* valueReference ^slicing.description = "Slice für Bericht"
* valueReference ^slicing.ordered = false

// E.g. using NGS report in molecular tumor board
* valueReference contains Bericht 1..1 MS
* valueReference[Bericht].type = #DiagnosticReport
* valueReference[Bericht] ^short = "Bericht"
* valueReference[Bericht] ^definition = "Assoziierter Bericht, z.B. zur Verwendung im Molekularen Tumorboard"