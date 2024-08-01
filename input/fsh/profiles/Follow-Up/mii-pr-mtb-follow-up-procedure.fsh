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
* basedOn MS
* basedOn only Reference(CarePlan)
* basedOn ^short = "Umgesetzte Therapien"
* basedOn ^definition = "Gemäß der Therapieempfehlungen umgesetzte Therapien"