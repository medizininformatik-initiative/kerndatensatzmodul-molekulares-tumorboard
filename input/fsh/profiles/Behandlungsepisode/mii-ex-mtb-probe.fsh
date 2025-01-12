Extension: MII_EX_MTB_Probe
Id: mii-ex-mtb-probe
Context: EpisodeOfCare
Title: "MII EX MTB Probe"
Description: "Bioprobe im Rahmen des Molekularen Tumorboards"
* insert EX_Header($mii-ex-mtb-probe)

* value[x] 1..1 MS
* value[x] only Reference

* valueReference ^slicing.discriminator.type = #pattern
* valueReference ^slicing.discriminator.path = "type"
* valueReference ^slicing.rules = #open
* valueReference ^slicing.description = "Slice für Bioprobe"
* valueReference ^slicing.ordered = false

// E.g. using specimen profile from module Onkologie or Biobank
* valueReference contains Bioprobe 1..1 MS
* valueReference[Bioprobe].type = #Specimen
* valueReference[Bioprobe] ^short = "Bioprobe"
* valueReference[Bioprobe] ^definition = "Bioprobe mit ermittelten Tumorzellgehalt"