Profile: MII_PR_MTB_Therapeutische_Implikation
Parent: $mii-pr-molgen-therapeutische-implikation
Id: mii-pr-mtb-therapeutische-implikation
Title: "MII PR MTB Therapeutische Implikation"
Description: "Das Profil beschreibt den möglichen Einfluss genetischer Merkmale auf eine medikamentöse oder nicht-medikamentöse Therapie."
* insert PR_Header

* focus MS 
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)

* extension contains MII_EX_MTB_Empfehlung_Evidenzgraduierung named Evidenzgraduierung 0..1 MS // Ist das hier quatsch? Soll doch auf den medication-component assessed werden?
