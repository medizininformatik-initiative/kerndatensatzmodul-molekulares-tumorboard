Profile: MII_PR_MTB_BRCAness
Parent: MII_PR_MTB_Molekularer_Biomarker
Id: mii-pr-mtb-brcaness
Title: "MII PR MTB BRCAness"
Description: "Beschreibt die BRCAness, also wie sehr ein Tumor ein Verhalten zeigt, welches BRCA1- oder BRCA2-Mutationen entspricht. Die BRCAness ist ein Indikator für die Wirksamkeit von PARP-Inhibitoren."
* insert PR_Header

* identifier MS
* category MS
* subject 1..1 MS
* subject only Reference(Patient or Group)
* encounter MS
* specimen MS
* interpretation MS
* interpretation from HighLowCodesVS
* component MS

* code = $mii-cs-mtb-molekulare-biomarker#brcaness
