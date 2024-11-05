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
* interpretation MS
* component MS

* code = $mii-cs-mtb-molekulare-biomarker#hrd
