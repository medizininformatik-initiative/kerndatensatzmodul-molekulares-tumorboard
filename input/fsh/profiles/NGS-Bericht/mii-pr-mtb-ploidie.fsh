Profile: MII_PR_MTB_Ploidie
Parent: MII_PR_MTB_Molekularer_Biomarker
Id: mii-pr-mtb-ploidie
Title: "MII PR MTB Ploidie"
Description: "Beschreibt die Gesamtploidie des Tumors. Die Ploidie ist ein Indikator für die Tumorproliferation und die Tumoraggressivität."
* insert PR_Header

* focus MS 
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slices for code.coding"
* code.coding ^slicing.ordered = false
* code.coding contains NCIT 1..1 MS
* code.coding[NCIT] = $NCIT#C18303 "DNA Ploidy Analysis"
* code ^short = "Ploidie"
* code ^definition = "Ploidie der Tumorprobe"
* insert Translation(code ^short, de-DE, Ploidie)
* insert Translation(code ^definition, de-DE, Ploidie der Tumorprobe)
* insert Translation(code ^short, en, Ploidy)
* insert Translation(code ^definition, en, Ploidy of the tumor specimen)
* value[x] MS
* valueQuantity MS
* interpretation MS
* interpretation from $hl7-v3-observation-high-low-codes

// Labels der Datenfelder ggf. aktualisieren
