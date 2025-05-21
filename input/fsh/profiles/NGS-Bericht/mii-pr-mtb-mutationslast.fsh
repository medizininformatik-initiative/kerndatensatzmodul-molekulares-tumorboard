Profile: MII_PR_MTB_Mutationslast
Parent: MII_PR_MTB_Molekularer_Biomarker
Id: mii-pr-mtb-mutationslast
Title: "MII PR MTB Mutationslast"
Description: "Beschreibt die Gesamtzahl von in Krebszellen gefundenen Mutationen pro 1 Mio. Basen."
* insert PR_Header

* status MS
* category MS
* code MS
* subject 1.. MS
* subject only Reference(Patient or Group)
* encounter MS
* value[x] MS
* value[x] 0..1
* value[x] only Quantity
* specimen MS
* interpretation MS
* interpretation from $hl7-v3-observation-high-low-codes
