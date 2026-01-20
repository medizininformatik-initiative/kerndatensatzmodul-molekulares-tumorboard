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
* insert Translation(method ^short, de-DE, IHC|PCR|bioinformatisch)
* insert Translation(method ^definition, de-DE, Methode der Untersuchung - IHC oder PCR oder NGS-basierte Untersuchung.)
* insert Translation(method ^short, en, IHC|PCR|bioinformatic)
* insert Translation(method ^definition, en, Method of examination - IHC or PCR or NGS-based examination.)
* method from MII_VS_MTB_MSI_Method_Type (preferred)

* interpretation MS
* interpretation from MII_VS_MTB_Microsatellite_Instability