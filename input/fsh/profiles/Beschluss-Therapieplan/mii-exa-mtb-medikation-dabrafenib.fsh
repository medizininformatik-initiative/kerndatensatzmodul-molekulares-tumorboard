
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

Instance: mii-exa-mtb-medikation-dabrafenib
InstanceOf: MII_PR_Medikation_Medication
Usage: #example
Description: "Dabrafenib (Dabrafenib/Trametinib-Kombinationstherapie)"
// Repräsentation Dabrafenib
* code.coding[+] = $ATC_DE#L01EC02 "Dabrafenib 0,3 g O"
* code.coding[=].version = "2023"
// Einnahme jeweils als Tablette
* form.coding[+] = $EDQM#10219000 "Tablette"
// Erstes Medikament der Kombinationstherapie: Dabrafenib, 4x 75mg, 2-0-2
* ingredient[+].itemCodeableConcept.coding[+] = $ASK#39606 "Dabrafenibmesilat"
* ingredient[=].itemCodeableConcept.coding[=] = $SCT#703648007 "Dabrafenib (as dabrafenib mesilate) 75 mg oral capsule"
* ingredient[=].strength.numerator.system = "http://unitsofmeasure.org"
* ingredient[=].strength.numerator.value = 75
* ingredient[=].strength.numerator.code = #mg
* ingredient[=].strength.denominator.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* ingredient[=].strength.denominator.value = 1
* ingredient[=].strength.denominator.code = #TAB
* ingredient[=].extension[MII_EX_Medikation_Wirkstofftyp].valueCoding = #MIN