Profile: MII_PR_MTB_BRCAness
Parent: MII_PR_MTB_Molekularer_Biomarker
Id: mii-pr-mtb-brcaness
Title: "MII PR MTB BRCAness"
Description: "Beschreibt die BRCAness, also wie sehr ein Tumor ein Verhalten zeigt, welches BRCA1- oder BRCA2-Mutationen entspricht. Die BRCAness ist ein Indikator für die Wirksamkeit von PARP-Inhibitoren."
* insert PR_Header

* identifier MS
* focus MS 
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)

* category MS
* subject 1..1 MS
* subject only Reference(Patient or Group)
* encounter MS
* specimen MS
* interpretation MS
* interpretation from $hl7-v3-observation-high-low-codes
* component MS

* code = $mii-cs-mtb-molekulare-biomarker#brcaness
* code ^short = "BRCAness"
* code ^definition = "BRCAness der Tumormutationsmuster"
* value[x] MS
* valueQuantity MS
* valueQuantity.value MS
* valueQuantity.unit = "Score"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #1
