Extension: MII_EX_MTB_Therapieplan
Id: mii-ex-mtb-therapieplan
Context: EpisodeOfCare
Title: "MII EX MTB Therapieplan"
Description: "Therapieplan, der mit einer Behandlungsepisode assoiziiert ist"
* insert EX_Header($mii-ex-mtb-therapieplan)

* value[x] 1..1 MS
* value[x] only Reference

* valueReference ^slicing.discriminator.type = #pattern
* valueReference ^slicing.discriminator.path = "type"
* valueReference ^slicing.rules = #open
* valueReference ^slicing.description = "Slice für Therapieplan"
* valueReference ^slicing.ordered = false

// E.g. using care plan for futher patient treatments
* valueReference contains Therapieplan 1..1 MS
* valueReference[Therapieplan].type = #CarePlan
* valueReference[Therapieplan] ^short = "Therapieplan"
* valueReference[Therapieplan] ^definition = "Assoziierter Therapieplan, z.B. durch Beschluss im Molekulare Tumorboard"