
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
          - Dabrafenib (MedicationRequest.medicationCodeableConcept)
        - Trametinib (RequestGroup.action.resource -> MedicationRequest)
          - Trametinib (MedicationRequest.medicationCodeableConcept)
*/

Instance: mii-exa-mtb-therapieempfehlung-kombinationstherapie
InstanceOf: MII_PR_MTB_Therapieempfehlung_Kombination
Usage: #example
Description: "Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie"
// Erforderliche Angaben
* status = #active
* intent = #proposal
* authoredOn = 2024-01-01
// Optional: Referenz Patient
* subject = Reference(mii-exa-mtb-patient)
// Referenz Kombinationstherapie
* action[+].title = "Therapieempfehlung für Dabrafenib"
* action[=].resource = Reference(mii-exa-mtb-therapieempfehlung-dabrafenib)
* action[+].title = "Therapieempfehlung für Trametinib"
* action[=].resource = Reference(mii-exa-mtb-therapieempfehlung-trametinib)
// Therapieempfehlung Priorität = 1 (hoch)
* extension[Prioritaet].valuePositiveInt = 1
* extension[Publikation].valueIdentifier.system = "https://doi.org"
* extension[Publikation].valueIdentifier.value = "10.1002/gcc.23222"
* extension[Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #m1C