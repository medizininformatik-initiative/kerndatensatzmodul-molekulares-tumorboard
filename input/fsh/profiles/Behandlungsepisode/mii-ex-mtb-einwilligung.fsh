Extension: MII_EX_MTB_Einwilligung
Id: mii-ex-mtb-einwilligung
Context: EpisodeOfCare
Title: "MII EX MTB Einwilligung"
Description: "Einwilligung zur Besprechung im Molekularen Tumorboard"
* insert EX_Header($mii-ex-mtb-einwilligung)

* value[x] 1..1 MS
* value[x] only Reference

* valueReference ^slicing.discriminator.type = #pattern
* valueReference ^slicing.discriminator.path = "type"
* valueReference ^slicing.rules = #open
* valueReference ^slicing.description = "Slice fuer referenzierten Typ"
* valueReference ^slicing.ordered = false

// TODO: Discuss if module Consent is best match (esp. strict min card.)
* valueReference contains Einwilligung 1..1 MS
* valueReference[Einwilligung].type = #Consent