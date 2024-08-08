Instance: MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1
InstanceOf: MII_PR_MTB_Antrag_Kostenuebernahme
Usage: #example
Title: "Beispiel fuer einen Antrag auf Kostenuebernahme"

* type = #institutional
* use = #claim
* patient = Reference(Patient/example)
* created = "2024-07-07"
* provider = Reference(Organization/InstitutionID)
* prescription = Reference(MedicationRequest/TherapieempfehlungExample)
* insurance.coverage = Reference(Coverage/CoverageExample)
* extension[Antragsstadium].valueCodeableConcept = #initial-claim
* careTeam[ZPMBeteiligung].provider = Reference(Organization/ZPMExample)
* careTeam[ZPMBeteiligung].responsible = true
* careTeam[ZPMBeteiligung].sequence = 1