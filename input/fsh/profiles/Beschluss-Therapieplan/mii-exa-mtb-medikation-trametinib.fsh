
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
