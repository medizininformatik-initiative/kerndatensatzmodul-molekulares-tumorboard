Extension: MII_EX_MTB_Medizinischer_Grund
Id: mii-ex-mtb-medizinischer-grund
Context: EpisodeOfCare
Title: "MII EX MTB Medizinischer Grund"
Description: "Medizinscher Grund, der während der Behandlungsepisode adressiert wird oder wurde"
* insert EX_Header($mii-ex-mtb-medizinischer-grund)

* value[x] 1..1 MS
* value[x] only Reference

* valueReference ^slicing.discriminator.type = #pattern
* valueReference ^slicing.discriminator.path = "type"
* valueReference ^slicing.rules = #open
* valueReference ^slicing.description = "Slice für adressierte Prozedur"
* valueReference ^slicing.ordered = false

* valueReference contains AdressierteProzedur 1..1 MS
* valueReference[AdressierteProzedur].type = #Procedure
* valueReference[AdressierteProzedur] ^short = "Adressierte Prozedur"
* valueReference[AdressierteProzedur] ^definition = "Während der Behandlungsepisode adressierte Prozedur"