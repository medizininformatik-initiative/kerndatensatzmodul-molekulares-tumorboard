Profile: MII_PR_MTB_Molekularer_Biomarker
Parent: molecular-biomarker
Id: mii-pr-mtb-molekularer-biomarker
Title: "MII PR MTB Molekularer Biomarker"
Description: "Stellt einen gefundenden Biomarker dar. Das Profil ist auf Basis von https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-molecular-biomarker.html nachgebaut."
* insert PR_Header

* focus MS 
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)


// to include in every Observation, copy:  * category[labCategory].coding= $fhir-observation-category#laboratory

// TODO Fhir comment about missing category and component


// to include in every Observation, copy:  * category[geCategory].coding= $hl7-v2-0074#GE



* code 1..1 MS
* code from $mii-vs-mtb-molekulare-biomarker (extensible)



// For some reason, the Publisher resolves these to STU3, despite their existence in STU2. Why?


// components gene-studied and biomarker-category