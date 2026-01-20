
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

Instance: mii-exa-mtb-therapieplan-kombinationstherapie
InstanceOf: MII_PR_MTB_Therapieplan
Usage: #example
Description: "Therapieplan mit Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan)
// Erforderliche Angaben
* status = #active
// * intent = #proposal im Onko wird Plan gesetzt
* category = $mii-cs-onko-therapieplanung-typ#postth
* subject = Reference(mii-exa-mtb-patient)
* created = "2024-08-09"
// Therapieempfehlungen
* activity.reference = Reference(mii-exa-mtb-therapieempfehlung-kombinationstherapie)
// Note: activity.detail removed to comply with FHIR constraint cpl-3
// (Provide a reference or detail, not both)