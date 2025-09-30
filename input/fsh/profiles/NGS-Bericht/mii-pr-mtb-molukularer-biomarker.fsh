
Profile: MII_PR_MTB_Molekularer_Biomarker
Parent: MII_PR_MolGen_MolekularerBiomarker
Id: mii-pr-mtb-molekularer-biomarker
Title: "MII PR MTB Molekularer Biomarker"
Description: "Stellt einen gefundenden Biomarker dar. Das Profil ist auf Basis von https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-molecular-biomarker.html nachgebaut."
* insert PR_Header

* focus MS 
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)



* code 1..1 MS
* code from $mii-vs-mtb-molekulare-biomarker (extensible)



