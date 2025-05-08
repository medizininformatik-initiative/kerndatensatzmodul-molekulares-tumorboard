Instance: MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1
InstanceOf: MII_PR_MTB_Antwort_Kostenuebernahme
Usage: #example
Title: "Beispiel fuer eine Antwort auf den Antrag auf Kostenuebernahme"
* type = #institutional
* use = #claim
* patient = Reference(Patient/example)
* created = "2024-07-07"
* insurer = Reference(Organization/InstitutionID)
* request = Reference(MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1)

* extension[Entscheidung].valueCodeableConcept.coding.code = #rejected
* extension[Ablehnungsgrund].valueCodeableConcept.coding.code = #other-therapy-recommended