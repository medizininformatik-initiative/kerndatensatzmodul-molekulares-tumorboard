// https://themelanomanurse.org/wp-content/uploads/2022/12/DabrafTrab-Toolkit-German-5.pdf
// https://www.sd-krebs.de/wissensbereich/therapien/dabrafenib-und-trametinib

/*
  IST-Struktur (Kombinationstherapie Dabrafenib/Trametinib):
    - Therapieplan (CarePlan)
      - Therapieempfehlung Dabrafenib/Trametinib (CarePlan.activity -> MedicationRequest)
        - Priorität = 1
        - Evidenzgraduierung = m1C (weitere Angabe von m2A nicht möglich)
        - Publikation = https://doi.org/10.1002/gcc.23222
        - Dabrafenib/Trametinib (MedicationRequest.medicationReference -> Medication)
          - Dabrafenib (Medication.ingredient)
          - Trametinib (Medication.ingredient)

  SOLL-Struktur (Kombinationstherapie Dabrafenib/Trametinib):
    - Therapieplan (CarePlan)
      - Therapieempfehlung Dabrafenib/Trametinib (CarePlan.activity -> RequestGroup)
        - Priorität = 1
        - Evidenzgraduierung = m1C
        - Publikation = https://doi.org/10.1002/gcc.23222
        - Dabrafenib (RequestGroup.action.resource -> MedicationRequest)
          - Dabrafenib (MedicationRequest.medicationReference -> Medication.ingredient)
        - Trametinib (RequestGroup.action.resource -> MedicationRequest)
          - Trametinib (MedicationRequest.medicationReference -> Medication.ingredient)
  
  Probleme:
    - Keine Evidenzgraduierung je Medikament/Bestandteil
    - Neue FHIR Ressource "RequestGroup" wird eingeführt
*/

Instance: mii-exa-mtb-patient-04
InstanceOf: Patient
Usage: #example
Description: "Beispiel-Patient für Therapieplan mit Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie (Variante 04)"
* name.given = "Maxim"
* name.family = "Muster"

Instance: mii-exa-mtb-therapieplan-kombinationstherapie-04
InstanceOf: CarePlan
// TODO: RequestGroup in Profil nicht erlaubt, deshalb erstmal CarePlan
//InstanceOf: MII_PR_MTB_Therapieplan
Usage: #example
Description: "Therapieplan mit Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie (Variante 04)"
// Erforderliche Angaben
* status = #active
* intent = #proposal
* category = $mii-cs-onko-therapieplanung-typ#postth
* subject = Reference(mii-exa-mtb-patient-04)
* created = "2024-08-09"
// TOOD: activity -> activity[Therapieempfehlung]
// Therapieempfehlungen
* activity.reference = Reference(mii-exa-mtb-therapieempfehlung-kombinationstherapie-04)
// Nachfolgende Attribute aufgrund Elternprofile erforderlich
* activity.detail.kind = #RequestGroup
* activity.detail.code = $mii-cs-onko-therapie-typ#ZS "Zielgerichtete Substanz"
* activity.detail.status = #not-started

Instance: mii-exa-mtb-therapieempfehlung-kombinationstherapie-04
InstanceOf: MII_PR_MTB_Therapieempfehlung_Gruppe
Usage: #example
Description: "Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie"
// Erforderliche Angaben
* status = #active
* intent = #proposal
// Optional: Referenz Patient
* subject = Reference(mii-exa-mtb-patient-04)
// Referenz Kombinationstherapie
* action[+].title = "Therapieempfehlung für Dabrafenib"
* action[=].resource = Reference(mii-exa-mtb-therapieempfehlung-04-dabrafenib)
* action[+].title = "Therapieempfehlung für Trametinib"
* action[=].resource = Reference(mii-exa-mtb-therapieempfehlung-04-trametinib)
// Therapieempfehlung Priorität = 1 (hoch)
* extension[MII_EX_MTB_Therapieempfehlung_Prioritaet].valuePositiveInt = 1

Instance: mii-exa-mtb-therapieempfehlung-04-dabrafenib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Description: "Therapieempfehlung für Dabrafenib"
// Erforderliche Angaben
* status = #active
* intent = #option // Gefordert von RequestGroup.action.resource!
// Referenz Patient
* subject = Reference(mii-exa-mtb-patient-04)
// Referenz Medikation
* medicationReference = Reference(mii-exa-mtb-medikation-04-dabrafenib)
// Therapieempfehlung Evidenzgraduierung
* extension[MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #m1C
 // Therapieempfehlung Publikation zur Evidenzgraduierung
* extension[MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung_Publikation].valueUrl = "https://doi.org/10.1002/gcc.23222"

Instance: mii-exa-mtb-therapieempfehlung-04-trametinib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Description: "Therapieempfehlung für Trametinib"
// Erforderliche Angaben
* status = #active
* intent = #option // Gefordert von RequestGroup.action.resource!
// Referenz Patient
* subject = Reference(mii-exa-mtb-patient-04)
// Referenz Medikation
* medicationReference = Reference(mii-exa-mtb-medikation-04-trametinib)
// Therapieempfehlung Evidenzgraduierung
* extension[MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #m2A
 // Therapieempfehlung Publikation zur Evidenzgraduierung
* extension[MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung_Publikation].valueUrl = "https://doi.org/10.1002/gcc.23222"

Instance: mii-exa-mtb-medikation-04-dabrafenib
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

Instance: mii-exa-mtb-medikation-04-trametinib
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
