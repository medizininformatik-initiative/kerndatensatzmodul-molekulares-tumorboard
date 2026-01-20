Instance: MII-EXA-MTB-Systemtherapie-Beispiel-1
InstanceOf: MII_PR_MTB_Systemische_Therapie
Usage: #example
Title: "Beispiel fuer eine Systemtherapie"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie)
* status = #completed
* statusReason.coding.code = #regular-completion
* category = $SCT#367336001 "Chemotherapy (procedure)"
* extension[Intention].valueCodeableConcept.coding[0] = $mii-cs-onko-intention#K
* extension[causedBy].valueReference = Reference(MedicationRequest/Example)
* basedOn = Reference(CarePlan/Example)
* code.coding[systemische_therapie_art] = $mii-cs-onko-therapie-typ#CH // Chemotherapy
* code.coding[ops] = $OPS#8-54 "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie"
* code.coding[ops].version = "2023"
* subject = Reference(Patient/Example)
* performedPeriod.start = "2014-02-12"
* performedPeriod.end = "2014-02-12"
* note.text = "Test Text!"