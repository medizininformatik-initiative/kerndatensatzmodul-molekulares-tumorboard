
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

Instance: mii-exa-mtb-therapieempfehlung-trametinib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
Description: "Therapieempfehlung für Trametinib"
// Erforderliche Angaben
* status = #active
* intent = #option // Gefordert von RequestGroup.action.resource!
* authoredOn = 2024-01-01
// Referenz Patient
* subject = Reference(mii-exa-mtb-patient)
// Medikation
* medicationCodeableConcept.coding = $ATC_DE#L01EE01 "Trametinib"
* medicationCodeableConcept.coding.version = "2025"
* reasonReference[Primaertumor] = Reference(PatientKimMusterperson-PrimaryDiagnosis-2)