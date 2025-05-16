Profile: MII_PR_MTB_Mikrosatelliteninstabilitaet
Parent: MII_PR_MolGen_Mikrosatelliteninstabilitaet
Id: mii-pr-mtb-mikrosatelliteninstabilitaet
Title: "MII PR MTB Mikrosatelliteninstabilität"
Description: "Beschreibt die Neigung zu Mutationen aufgrund einer gestörten Fehlpaarungsreparatur (DNA mismatch repair, MMR)."
* insert PR_Header

* focus MS 
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)

* method MS
* method ^short = "PCR|NGS"
* method ^definition = "Methode der Untersuchung (PCR oder NGS-basierte Untersuchung)."

* interpretation MS
* interpretation from $hl7-v3-observation-high-low-codes

// Labels der Datenfelder ggf. aktualisieren