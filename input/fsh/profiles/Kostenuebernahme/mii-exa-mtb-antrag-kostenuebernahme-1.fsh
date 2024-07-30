Instance: BEISPIEL-1
InstanceOf: MII_PR_MTB_ANTRAG_KOSTENUEBERNAHME
Usage: #example
Title: "Beispiel 1"

* type = #institutional
* use = #claim
* patient = Reference(Patient/example)
* created = "2024-07-07"
* provider = Reference(Organization/InstitutionID)
* prescription = Reference(MedicationRequest/TherapieempfehlungExample)
* insurance.coverage = Reference(Coverage/CoverageExample)