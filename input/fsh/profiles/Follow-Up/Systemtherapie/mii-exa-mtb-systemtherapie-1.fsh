Instance: MII-EXA-MTB-Systemtherapie-Beispiel-1
InstanceOf: MII_PR_MTB_Systemtherapie
Usage: #example
Title: "Beispiel fuer eine Systemtherapie"


* basedOn = Reference(MedicationRequest/Example)
* status = #active
* medicationReference = Reference(Medication/Example)
* subject = Reference(Patient/Example)
* effectivePeriod.start = "2014-02-12"
* effectivePeriod.end = "2014-02-12"
* note.text = "Test Text!"