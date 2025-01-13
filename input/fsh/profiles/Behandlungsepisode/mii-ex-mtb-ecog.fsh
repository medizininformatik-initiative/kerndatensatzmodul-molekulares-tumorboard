Extension: MII_EX_MTB_Allgemeiner_Leistungszustand
Id: mii-ex-mtb-allgemeiner-leistungszustand
Context: EpisodeOfCare
Title: "MII EX MTB Allgemeiner Leistungszustand"
Description: "Allgemeiner Leistungszustand, z.B. ECOG oder Karnofsky Performance Status"
* insert EX_Header($mii-ex-mtb-probe)

* value[x] 1..1 MS
* value[x] only Reference

* valueReference ^slicing.discriminator.type = #pattern
* valueReference ^slicing.discriminator.path = "type"
* valueReference ^slicing.rules = #open
* valueReference ^slicing.description = "Slice für allgemeinen Leistungszustand"
* valueReference ^slicing.ordered = false

// E.g. using observation profile ECOG or Karnofsky from module Onkologie
* valueReference contains AllgemeinerLeistungszustand 1..1 MS
* valueReference[AllgemeinerLeistungszustand].type = #Observation
* valueReference[AllgemeinerLeistungszustand] ^short = "Allgemeiner Leistungszustand"
* valueReference[AllgemeinerLeistungszustand] ^definition = "Allgemeiner Leistungszustand, z.B. ECOG oder  Karnofsky Performance Status"