Profile: MII_PR_MTB_Mikrosatelliteninstabilitaet
Parent: MII_PR_MTB_Molekularer_Biomarker
Id: mii-pr-mtb-mikrosatelliteninstabilitaet
Title: "MII PR MTB Mikrosatelliteninstabilität"
Description: "Beschreibt die Neigung zu Mutationen aufgrund einer gestörten Fehlpaarungsreparatur (DNA mismatch repair, MMR)."
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

* method MS
* method ^short = "IHC|PCR|bioinformatic"
* method ^definition = "Methode der Untersuchung (IHC, PCR oder NGS-basierte Untersuchung)."
* method from MII_VS_MTB_MSI_Method_Type (preferred)

* interpretation MS
* interpretation from MII_VS_MTB_Microsatellite_Instability