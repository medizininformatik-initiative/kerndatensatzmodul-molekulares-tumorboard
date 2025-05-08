Profile: MII_PR_MTB_HRD_Score
Parent: MII_PR_MTB_Molekularer_Biomarker
Id: mii-pr-mtb-hrd-score
Title: "MII PR MTB HRD Score"
Description: "Der HRD-Score, welcher den Grad der homologen Rekombinationsdefizienz bei Zellen beschreibt."
* insert PR_Header

* identifier MS
* category MS
* subject 1..1 MS
* subject only Reference(Patient or Group)
* encounter MS
* specimen MS
* value[x] MS
* value[x] only integer
* interpretation MS
* interpretation from $hl7-v3-observation-high-low-codes
* component MS

* code = $mii-cs-mtb-molekulare-biomarker#hrd
