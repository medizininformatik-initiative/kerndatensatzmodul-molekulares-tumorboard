
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