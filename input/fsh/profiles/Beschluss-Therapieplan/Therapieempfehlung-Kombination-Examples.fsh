
/*
  Quellen:
    - https://themelanomanurse.org/wp-content/uploads/2022/12/DabrafTrab-Toolkit-German-5.pdf
    - https://www.sd-krebs.de/wissensbereich/therapien/dabrafenib-und-trametinib

  Struktur:
    - Therapieplan (CarePlan)
      - Therapieempfehlung Dabrafenib/Trametinib (CarePlan.activity -> RequestGroup)
        - Priorität = 1
        - Evidenzgraduierung = m1C
        - Publikation = https://doi.org/10.1002/gcc.23222
        - Dabrafenib (RequestGroup.action.resource -> MedicationRequest)
          - Dabrafenib (MedicationRequest.medicationReference -> Medication.ingredient)
        - Trametinib (RequestGroup.action.resource -> MedicationRequest)
          - Trametinib (MedicationRequest.medicationReference -> Medication.ingredient)
*/

Instance: mii-exa-mtb-patient
InstanceOf: Patient
Usage: #example
Description: "Beispiel-Patient für Therapieplan mit Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie"
* name.given = "Maxim"
* name.family = "Muster"

Instance: mii-exa-mtb-therapieplan-kombinationstherapie
InstanceOf: MII_PR_MTB_Therapieplan
Usage: #example
Description: "Therapieplan mit Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie"
// Erforderliche Angaben
* status = #active
* intent = #proposal
* category = $mii-cs-onko-therapieplanung-typ#postth
* subject = Reference(mii-exa-mtb-patient)
* created = "2024-08-09"
// Therapieempfehlungen
* activity.reference = Reference(mii-exa-mtb-therapieempfehlung-kombinationstherapie)
// Nachfolgende Attribute aufgrund Elternprofile erforderlich
* activity.detail.code = $mii-cs-onko-therapie-typ#ZS "Zielgerichtete Substanz"
* activity.detail.status = #not-started

Instance: mii-exa-mtb-therapieempfehlung-kombinationstherapie
InstanceOf: MII_PR_MTB_Therapieempfehlung_Kombination
Usage: #example
Description: "Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie"
// Erforderliche Angaben
* status = #active
* intent = #proposal
// Optional: Referenz Patient
* subject = Reference(mii-exa-mtb-patient)
// Referenz Kombinationstherapie
* action[+].title = "Therapieempfehlung für Dabrafenib"
* action[=].resource = Reference(mii-exa-mtb-therapieempfehlung-dabrafenib)
* action[+].title = "Therapieempfehlung für Trametinib"
* action[=].resource = Reference(mii-exa-mtb-therapieempfehlung-trametinib)
// Therapieempfehlung Priorität = 1 (hoch)
* extension[Prioritaet].valuePositiveInt = 1
* extension[Publikation].valueUrl = "https://doi.org/10.1002/gcc.23222"
* extension[Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #m1C

Instance: mii-exa-mtb-therapieempfehlung-dabrafenib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Description: "Therapieempfehlung für Dabrafenib"
// Erforderliche Angaben
* status = #active
* intent = #option // Gefordert von RequestGroup.action.resource!
// Referenz Patient
* subject = Reference(mii-exa-mtb-patient)
// Referenz Medikation
* medicationReference = Reference(mii-exa-mtb-medikation-dabrafenib)

Instance: mii-exa-mtb-therapieempfehlung-trametinib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Description: "Therapieempfehlung für Trametinib"
// Erforderliche Angaben
* status = #active
* intent = #option // Gefordert von RequestGroup.action.resource!
// Referenz Patient
* subject = Reference(mii-exa-mtb-patient)
// Referenz Medikation
* medicationReference = Reference(mii-exa-mtb-medikation-trametinib)

Instance: mii-exa-mtb-medikation-dabrafenib
InstanceOf: MII_PR_Medikation_Medication
Usage: #example
Description: "Dabrafenib (Dabrafenib/Trametinib-Kombinationstherapie)"
// Repräsentation Dabrafenib
* code.coding[+] = $ATC_DE#L01EC02 "Dabrafenib 0,3 g O"
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

Instance: mii-exa-mtb-medikation-trametinib
InstanceOf: MII_PR_Medikation_Medication
Usage: #example
Description: "Trametinib (Dabrafenib/Trametinib-Kombinationstherapie)"
// Repräsentation Trametinib
* code.coding[+] = $ATC_DE#L01EE01 "Trametinib 2 mg O"
// Einnahme jeweils als Tablette
* form.coding[+] = $EDQM#10219000 "Tablette"
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
