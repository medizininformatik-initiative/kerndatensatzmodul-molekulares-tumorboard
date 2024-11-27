Profile: MII_PR_MTB_Diagnose_Primaertumor
Parent: MII_PR_Onko_Diagnose_Primaertumor
Id: mii-pr-mtb-diagnose-primaertumor
Title: "MII PR MTB Diagnose Primaertumor"
Description: "Diagnose zum Primaertumor"
* insert PR_Header

* stage 0..* MS
* stage ^slicing.discriminator.type = #type
* stage ^slicing.discriminator.path = "type"
* stage ^slicing.rules = #open
* stage ^slicing.description = "Slice fuer Stage/Grad"
* stage ^slicing.ordered = false

// ECOG Performance Status
* stage contains ECOG 0..1 MS
* stage[ECOG].assessment 1..* MS
* stage[ECOG].assessment only Reference(MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG)
* stage[ECOG].type 1..1 MS
* stage[ECOG].type.coding.system = $SCT
* stage[ECOG].type.coding.code = #423740007 "ECOG Performanz-Status"

// WHO Grade for Central Nervous System Tumor
* stage contains WHOGradZNS 0..1 MS
* stage[WHOGradZNS].assessment 1..* MS
* stage[WHOGradZNS].assessment only Reference(MII_PR_MTB_WHO_Grad_Tumor_ZNS)
* stage[WHOGradZNS].type 1..1 MS
* stage[WHOGradZNS].type.coding.system = $SCT
* stage[WHOGradZNS].type.coding.code = #396920006 "WHO-Grad bei Tumoren des zentralen Nervensystems"

