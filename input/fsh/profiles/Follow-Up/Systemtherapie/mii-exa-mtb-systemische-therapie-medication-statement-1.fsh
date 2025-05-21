Instance: MII-EXA-MTB-Systemische-Therapie-Medication-Besipiel-1
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
* subject = Reference(Patient/PatientKimMusterperson)
* effectivePeriod.start = "2023-06-24"
* effectivePeriod.end = "2023-06-24"
* note.text = "24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = $UCUM
* dosage.doseAndRate.type.coding.code = #volle-Dosis