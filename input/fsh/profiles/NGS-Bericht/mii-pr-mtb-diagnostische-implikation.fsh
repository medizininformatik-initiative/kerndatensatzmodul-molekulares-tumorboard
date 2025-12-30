Profile: MII_PR_MTB_Diagnostische_Implikation
Parent: $mii-pr-molgen-diagnostische-implikation
Id: mii-pr-mtb-diagnostische-implikation
Title: "MII PR MTB Diagnostische Implikation"
Description: "Beschreibt den Zusammenhang zwischen einem oder mehreren Genotyp/Haplotyp/Varianten und Beweisen für oder gegen eine bestimmte Krankheit."
* insert PR_Header

* focus MS 
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)

* component[clinical-significance] MS
* component[clinical-significance] ^definition = "Interpretation oder Einschätzung einer oder mehrerer genetischer Varianten."
* insert Translation(component[clinical-significance] ^definition, de-DE, Interpretation oder Einschaetzung einer oder mehrerer genetischer Varianten.)
* insert Translation(component[clinical-significance] ^definition, en, Interpretation or assessment of one or more genetic variants.)
