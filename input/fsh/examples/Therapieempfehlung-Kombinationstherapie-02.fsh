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
      - Therapieempfehlung Dabrafenib/Trametinib: Bestandteil Dabrafenib (CarePlan.activity[1] -> MedicationRequest)
        - Priorität = 1
        - Evidenzgraduierung = m1C
        - Publikation = https://doi.org/10.1002/gcc.23222
        - Dabrafenib (MedicationRequest.medicationReference -> Medication)
      - Therapieempfehlung Dabrafenib/Trametinib: Bestandteil Trametinib (CarePlan.activity[2] -> MedicationRequest)
        - Priorität = 1
        - Evidenzgraduierung = m2A
        - Publikation = https://doi.org/10.1002/gcc.23222
        - Trametinib (MedicationRequest.medicationReference -> Medication)
  
  Probleme:
    - Keine Evidenzgraduierung je Medikament/Bestandteil
    - Zusammengehörigkeit nur implizit über "Priorität" erkennbar

  Lösungen:
    - Jedes zusammengehörige Medikament/ Bestandteil bei Kombinationstherapie als MedicationRequest
    - Prioritäten gleich setzen, um Zusammengehörigkeit zu kennzeichnen (implizites Wissen notwendig)
*/

Instance: mii-exa-mtb-patient-02
InstanceOf: Patient
Usage: #example
Description: "Beispiel-Patient für Therapieplan mit Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie (Variante 02)"
* name.given = "Maxim"
* name.family = "Muster"

Instance: mii-exa-mtb-therapieplan-kombinationstherapie-02
InstanceOf: MII_PR_MTB_Therapieplan
Usage: #example
Description: "Therapieplan mit Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie (Variante 02)"
// Erforderliche Angaben
* status = #active
* intent = #proposal
* category = $mii-cs-onko-therapieplanung-typ#postth
* subject = Reference(mii-exa-mtb-patient-02)
* created = "2024-08-09"
// Therapieempfehlungen Dabrafenib/Trametinib: Bestandteil Dabrafenib
* activity[Therapieempfehlung].reference = Reference(mii-exa-mtb-therapieempfehlung-02-dabrafenib)
// Nachfolgende Attribute aufgrund Elternprofile erforderlich
* activity[Therapieempfehlung].detail.kind = #MedicationRequest
* activity[Therapieempfehlung].detail.code = $mii-cs-onko-therapie-typ#ZS "Zielgerichtete Substanz"
* activity[Therapieempfehlung].detail.status = #not-started
// Therapieempfehlungen Dabrafenib/Trametinib: Bestandteil Trametinib
* activity[Therapieempfehlung].reference = Reference(mii-exa-mtb-therapieempfehlung-02-trametinib)
// Nachfolgende Attribute aufgrund Elternprofile erforderlich:
* activity[Therapieempfehlung].detail.kind = #MedicationRequest
* activity[Therapieempfehlung].detail.code = $mii-cs-onko-therapie-typ#ZS "Zielgerichtete Substanz"
* activity[Therapieempfehlung].detail.status = #not-started

Instance: mii-exa-mtb-therapieempfehlung-02-dabrafenib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Description: "Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie: Bestandteil Dabrafenib"
// Erforderliche Angaben
* status = #active
* intent = #proposal
// Referenz Patient
* subject = Reference(mii-exa-mtb-patient-02)
// Referenz Dabrafenib
* medicationReference = Reference(mii-exa-mtb-kombinationstherapie-02-dabrafenib)
// Therapieempfehlung Priorität = 1 (hoch)
* extension[MII_EX_MTB_Therapieempfehlung_Prioritaet].valuePositiveInt = 1
// Therapieempfehlung Evidenzgraduierung m1C
* extension[MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #m1C
//* extension[MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #m2A
// Therapieempfehlung Publikation zur Evidenzgraduierung
* extension[MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung_Publikation].valueUrl = "https://doi.org/10.1002/gcc.23222"

Instance: mii-exa-mtb-kombinationstherapie-02-dabrafenib
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

Instance: mii-exa-mtb-therapieempfehlung-02-trametinib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Description: "Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie: Bestandteil Trametinib"
// Erforderliche Angaben
* status = #active
* intent = #proposal
// Referenz Trametinib
* subject = Reference(mii-exa-mtb-patient-02)
// Referenz Kombinationstherapie
* medicationReference = Reference(mii-exa-mtb-kombinationstherapie-02-trametinib)
// Therapieempfehlung Priorität = 1 (hoch)
* extension[MII_EX_MTB_Therapieempfehlung_Prioritaet].valuePositiveInt = 1
// Therapieempfehlung Evidenzgraduierung m2A
* extension[MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #m2A
// Therapieempfehlung Publikation zur Evidenzgraduierung
* extension[MII_EX_MTB_Therapieempfehlung_Evidenzgraduierung_Publikation].valueUrl = "https://doi.org/10.1002/gcc.23222"

Instance: mii-exa-mtb-kombinationstherapie-02-trametinib
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