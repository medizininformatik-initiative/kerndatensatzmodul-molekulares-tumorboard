Profile: MII_PR_MTB_BRCAness
Parent: MII_PR_MTB_Molekularer_Biomarker
Id: mii-pr-mtb-brcaness
Title: "MII PR MTB BRCAness"
Description: "Beschreibt die BRCAness, also wie sehr ein Tumor ein Verhalten zeigt, welches BRCA1- oder BRCA2-Mutationen entspricht. Die BRCAness ist ein Indikator für die Wirksamkeit von PARP-Inhibitoren."
* insert PR_Header

* identifier MS
* category MS
* code = $mii-cs-mtb-molekulare-biomarker#brcaness
* subject 1..1 MS
* subject only Reference(Patient or Group)
* encounter MS
* value[x] only Quantity
* specimen MS
* interpretation MS
* interpretation from HighLowCodesVS
* component MS

* component contains brcaness-score 0..*
* component[brcaness-score].code.coding = $LNC#81259-4 "BRCAness Score"
* component[brcaness-score].value[x] 1..1 MS
* component[brcaness-score].value[x] only Quantity
* component[brcaness-score].valueQuantity
* component[brcaness-score].valueQuantity.value 1..1
* component[brcaness-score].valueQuantity.unit 1..1
