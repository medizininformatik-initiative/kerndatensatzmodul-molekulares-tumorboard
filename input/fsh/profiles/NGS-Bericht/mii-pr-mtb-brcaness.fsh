Profile: MII_PR_MTB_BRCAness
Parent: MII_PR_MTB_Molekularer_Biomarker
Id: mii-pr-mtb-brcaness
Title: "MII PR MTB BRCAness"
Description: "Beschreibt die BRCAness, also wie sehr ein Tumor ein Verhalten zeigt, welches BRCA1- oder BRCA2-Mutationen entspricht. Die BRCAness ist ein Indikator für die Wirksamkeit von PARP-Inhibitoren."
* insert PR_Header

* identifier MS
* identifier ^short = "Biomarker-ID im Kontext des NGS-Befundes"
* identifier ^definition = "Eindeutige Biomarker-ID im Kontext des NGS-Befundes."
* insert Translation(identifier ^short, de-DE, Biomarker-ID im Kontext des NGS-Befundes)
* insert Translation(identifier ^definition, de-DE, Eindeutige Biomarker-ID im Kontext des NGS-Befundes.)
* insert Translation(identifier ^short, en, Biomarker ID in the context of the NGS report)
* insert Translation(identifier ^definition, en, Unique biomarker ID in the context of the NGS report.)

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
* insert Translation(code ^short, de-DE, BRCAness)
* insert Translation(code ^definition, de-DE, BRCAness der Tumormutationsmuster)
* insert Translation(code ^short, en, BRCAness)
* insert Translation(code ^definition, en, BRCAness of tumor mutation patterns)
* value[x] MS
* valueQuantity MS
* valueQuantity.value MS
* valueQuantity.unit = "Score"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #1
