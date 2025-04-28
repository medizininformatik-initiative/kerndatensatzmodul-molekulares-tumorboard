Instance: MII-EXA-MTB-Systemtherapie-Beispiel-1
InstanceOf: MII_PR_MTB_Systemische_Therapie
Usage: #example
Title: "Beispiel fuer eine Systemtherapie"


* basedOn = Reference(MedicationRequest/Example)
* status = #active
* statusReason.coding.code = #regular-completion
* extension[Intention].valueCodeableConcept.coding[0] = $mii-cs-onko-intention#K
* code.coding[systemische_therapie_art] = $mii-cs-onko-therapie-typ#CH // Chemotherapy
* subject = Reference(Patient/Example)
* performedPeriod.start = "2014-02-12"
* performedPeriod.end = "2014-02-12"
* note.text = "Test Text!"