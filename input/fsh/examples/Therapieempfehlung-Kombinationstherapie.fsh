// https://themelanomanurse.org/wp-content/uploads/2022/12/DabrafTrab-Toolkit-German-5.pdf
// https://www.sd-krebs.de/wissensbereich/therapien/dabrafenib-und-trametinib

Instance: MII-EXA-MTB-Therapieempfehlung-Kombinationstherapie
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Description: "Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie bei Melanom oder nicht-kleinzelligem Lungenkrebs mit BRAF-V600E- oder BRAF-V600K-Mutation"
// Erforderliche Angaben
* status = #active
* intent = #proposal

// Referenz Patientenpseudonym
* subject.identifier.type.coding = $hl7-v3-observation-value#PSEUDED
* subject.identifier.system = "http://www.acme.com/identifiers/patient"
* subject.identifier.value = "123456"

// Referenz Kombinationstherapie
* medicationReference = Reference(MII_EXA_MTB_Kombinationstherapie)

// Therapieempfehlung Priorität = 1 (hoch)
* extension[MII_EX_MTB_Therapieempfehlung_Prioritaet].valuePositiveInt = 1

// Therapieempfehlung Evidenzgraduierung m1c und m2A (beides zusammen geht nicht)
* extension[MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #m1C
//* extension[MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #m2A

// Therapieempfehlung Publikation zur Evidenzgraduierung
* extension[MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung_Publikation].valueUrl = "https://doi.org/10.1002/gcc.23222"

Instance: MII-EXA-MTB-Kombinationstherapie
InstanceOf: MII_PR_Medikation_Medication
Usage: #example
Description: "Dabrafenib/Trametinib-Kombinationstherapie bei Melanom oder nicht-kleinzelligem Lungenkrebs mit BRAF-V600E- oder BRAF-V600K-Mutation"

// Repräsentation Kombinationstherapie Dabrafenib/Trametinib
* code.coding[+] = $ATC_DE#L01EC02 "Dabrafenib 0,3 g O"
* code.coding[+] = $ATC_DE#L01EE01 "Trametinib 2 mg O"

// Einnahme jeweils als Tablette
* form.coding[+] = $EDQM#10219000 "Tablette"

// Erstes Medikament der Kombinationstherapie: Dabrafenib, 4x 75mg, 2-0-2
* ingredient[+].itemCodeableConcept.coding[+] = $ASK#39606 "Dabrafenibmesilat"
* ingredient[=].itemCodeableConcept.coding[=] = $SCT#703648007 "Dabrafenib (as dabrafenib mesilate) 75 mg oral capsule"
* ingredient[=].strength.numerator.system = "http://unitsofmeasure.org"
* ingredient[=].strength.numerator.value = 75
* ingredient[=].strength.numerator.code = #mg
* ingredient[=].strength.denominator.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* ingredient[=].strength.denominator.value = 4
* ingredient[=].strength.denominator.code = #TAB
* ingredient[=].extension[MII_EX_Medikation_Wirkstofftyp].valueCoding = #MIN

// Zweites Medikament der Kombinationstherapie: Trametinib, 1x 2mg, 1-0-0 oder 0-0-1
* ingredient[+].itemCodeableConcept.coding[+] = $ASK#41418 "Trametinib-Dimethylsulfoxid (1:1)"
* ingredient[=].itemCodeableConcept.coding[=] = $SCT#895671007 "Trametinib (as trametinib dimethyl sulfoxide) 2 mg oral tablet"
* ingredient[=].strength.numerator.system = "http://unitsofmeasure.org"
* ingredient[=].strength.numerator.value = 2
* ingredient[=].strength.numerator.code = #mg
* ingredient[=].strength.denominator.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* ingredient[=].strength.denominator.value = 1
* ingredient[=].strength.denominator.code = #TAB
* ingredient[=].extension[MII_EX_Medikation_Wirkstofftyp].valueCoding = #MIN