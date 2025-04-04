
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
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.when[0] = #MORN
* dosageInstruction.timing.repeat.when[1] = #EVE
* dosageInstruction.doseAndRate.doseQuantity.value = 2
* dosageInstruction.doseAndRate.doseQuantity.system = $UCUM
* dosageInstruction.doseAndRate.doseQuantity.code = #{Tablet}
* dosageInstruction.doseAndRate.doseQuantity.unit = "Tablet"