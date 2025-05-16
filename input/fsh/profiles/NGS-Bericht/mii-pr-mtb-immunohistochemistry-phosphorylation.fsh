Profile: MII_PR_MTB_Immunohistochemistry_Phosphorylation
Parent: MII_PR_MTB_Immunohistochemistry 
Id: mii-pr-mtb-immunohistochemistry-phosphorylation
Title: "MII PR MTB Immunohistochemistry Phosphorylation"
Description: "Immunhistorchemistry report"
* insert PR_Header


* component contains 
    phosphorylation-localization 0..* MS and 
    protein-isoform 0..1 MS

* component[phosphorylation-localization].code 1..1 MS
* component[phosphorylation-localization].code ^short = "Phosphorylation localization"
* component[phosphorylation-localization].code ^definition = "Phosphorylation localization according to UniProt"
* component[phosphorylation-localization].valueCodeableConcept 1..1 MS
* component[phosphorylation-localization].valueCodeableConcept ^short = "Phosphorylation localization"
* component[phosphorylation-localization].valueCodeableConcept ^definition = "Phosphorylation localization according to UniProt"
* component[protein-isoform] 0..1 MS
