Profile: MII_PR_MTB_TherapeutischeImplikation
Parent: $mii-pr-molgen-therapeutische-implikation
Id: mii-pr-mtb-therapeutische-implikation
Title: "MII PR MTB Therapeutische Implikation"
Description: "Das Profil beschreibt den möglichen Einfluss genetischer Merkmale auf eine medikamentöse oder nicht-medikamentöse Therapie."
* insert PR_Header

* component[evidence-level] MS
* component[evidence-level] ^definition = "Evidenzlevel gemäß NCT-Klassifikation."
* component[evidence-level].code = $LNC#93044-6 "Level of evidence"
* component[evidence-level].valueCodeableConcept from MII_VS_MTB_Empfehlung_Evidenzgrad

// TODO: MII_VS_MTB_Empfehlung_EvidenzgradZusatzverweis
