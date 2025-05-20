Instance: MII-EXA-MTB-Follow-Up-ClinicalImpression-1
InstanceOf: MII_PR_MTB_Follow_Up_ClinicalImpression
Usage: #example
Title: "Follow-Up Prozess zur Überprüfung der durchgeführten Therapien & Kostenübernahmen"
* status = #completed
* investigation.code.coding.code = #completed // Daten im Bsp nicht vorhanden
* subject = Reference(Patient/KimMusterperson)
* supportingInfo[UmgesetzteTherapien][0] = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* supportingInfo[AntraegeKostenuebernahme][0] = Reference(MII-EXA-MTB-Antrag-Kostenuebernahme-1)
* supportingInfo[AntwortenKostenuebernahme][0] = Reference(MII-EXA-MTB-Antwort-Kostenuebernahme-1)


Instance: MII-EXA-MTB-Systemische-Therapie-1
InstanceOf: MII_PR_MTB_Systemische_Therapie
Usage: #example
Title: "24.06.2023 - 12.10.2023 Mirvetuximab soravtansine"
* status = #completed
* statusReason = #regular-completion
* extension[Intention].valueCodeableConcept.coding[0] = $mii-cs-onko-intention#K // kurativ
* code.coding[systemische_therapie_art] = $mii-cs-onko-therapie-typ#CH // Chemotherapy
* subject = Reference(Patient/KimMusterperson)
* performedPeriod.start = "2023-06-24"
* performedPeriod.end = "2023-10-12"
* basedOn = Reference(mii-exa-mtb-kim-musterperson-therapieplan)

Instance: MII-EXA-MTB-Systemische-Therapie-Medication-1
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/TherapieempfehlungExample) // hier auf Empfehlung des MTB vom 28.03.2023 verweisen
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectivePeriod.start = "2023-06-24"
* effectivePeriod.end = "2023-06-24"
* note.text = "24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage[Dosis].doseAndRate.doseQuantity.value = 6
* dosage[Dosis].doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage[Dosis].doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage[Dosis].doseAndRate.doseQuantity.system = $UCUM


Instance: MII-EXA-MTB-Systemische-Therapie-Medication-2
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "16.07.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/TherapieempfehlungExample) // hier auf Empfehlung des MTB vom 28.03.2023 verweisen
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectivePeriod.start = "2023-07-16"
* effectivePeriod.end = "2023-07-16"
* note.text = "16.07.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* statusReason = #E // Daten im Bsp nicht vorhanden
* dosage[Dosis].doseAndRate.doseQuantity.value = 6
* dosage[Dosis].doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage[Dosis].doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage[Dosis].doseAndRate.doseQuantity.system = $UCUM


Instance: MII-EXA-MTB-Systemische-Therapie-Medication-3
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "07.08.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/TherapieempfehlungExample) // hier auf Empfehlung des MTB vom 28.03.2023 verweisen
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectivePeriod.start = "2023-08-07"
* effectivePeriod.end = "2023-08-07"
* note.text = "07.08.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* statusReason = #E // Daten im Bsp nicht vorhanden
* dosage[Dosis].doseAndRate.doseQuantity.value = 6
* dosage[Dosis].doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage[Dosis].doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage[Dosis].doseAndRate.doseQuantity.system = $UCUM

Instance: MII-EXA-MTB-Response-Befund-1
InstanceOf: MII_PR_MTB_Response_Befund
Usage: #example
Title: "20.08.2023 CT T/A"
* status = #final
* code.coding.code = #396432002
* method = $SCT#312251004 // Computed tomography
* effectiveDateTime = "2023-08-20"
* subject = Reference(Patient/KimMusterperson)
* focus = Reference(MII_PR_Onko_Diagnose_Primaertumor/example)
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1) 
* valueCodeableConcept.coding.code = #CR
* component[Lymphknoten_Verlauf].code.coding.code = #399656008
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding.code = #K


Instance: MII-EXA-MTB-Systemische-Therapie-Medication-4
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "29.08.2023 Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/TherapieempfehlungExample) // hier auf Empfehlung des MTB vom 28.03.2023 verweisen
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectivePeriod.start = "2023-08-29"
* effectivePeriod.end = "2023-08-29"
* note.text = "29.08.2023 Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage[Dosis].doseAndRate.doseQuantity.value = 6
* dosage[Dosis].doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage[Dosis].doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage[Dosis].doseAndRate.doseQuantity.system = $UCUM


Instance: MII-EXA-MTB-Systemische-Therapie-Medication-5
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "20.09.2023 Z5 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/TherapieempfehlungExample) // hier auf Empfehlung des MTB vom 28.03.2023 verweisen
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectivePeriod.start = "2023-09-20"
* effectivePeriod.end = "2023-09-20"
* note.text = "20.09.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* statusReason = #E // Daten im Bsp nicht vorhanden
* dosage[Dosis].doseAndRate.doseQuantity.value = 6
* dosage[Dosis].doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage[Dosis].doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage[Dosis].doseAndRate.doseQuantity.system = $UCUM

Instance: MII-EXA-MTB-Systemische-Therapie-Medication-6
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "12.10.2023 Z6 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/TherapieempfehlungExample) // hier auf Empfehlung des MTB vom 28.03.2023 verweisen
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectivePeriod.start = "2023-10-12"
* effectivePeriod.end = "2023-10-12"
* note.text = "12.10.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage[Dosis].doseAndRate.doseQuantity.value = 6
* dosage[Dosis].doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage[Dosis].doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage[Dosis].doseAndRate.doseQuantity.system = $UCUM


Instance: MII-EXA-MTB-Response-Befund-2
InstanceOf: MII_PR_MTB_Response_Befund
Usage: #example
Title: "22.10.2023 CT T/A"
* status = #final
* code.coding.code = #396432002
* method = $SCT#312251004 // Computed tomography
* effectiveDateTime = "2023-10-22"
* subject = Reference(Patient/KimMusterperson)
* focus = Reference(MII_PR_Onko_Diagnose_Primaertumor/example)
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* valueCodeableConcept.coding.code = #PR
* component[Lymphknoten_Verlauf].code.coding.code = #399656008
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding.code = #K



Instance: MII-EXA-MTB-Antrag-Kostenuebernahme-1
InstanceOf: MII_PR_MTB_Antrag_Kostenuebernahme
Usage: #example
Title: "10.03.2023 Krankenkassenantrag gestellt Mirvetuximab soravtansine"
* type = #institutional
* use = #claim
* patient = Reference(Patient/KimMusterperson)
* created = "2023-03-10"
* provider = Reference(Organization/InstitutionID) // Daten im Bsp nicht vorhanden, sollte die Klinik oder die verschreibende Einrichtung sein
* prescription = Reference(MedicationRequest/TherapieempfehlungExample) // hier auf Empfehlung des MTB vom 28.03.2023 verweisen
* insurance.sequence = 1 // Daten im Bsp nicht vorhanden
* insurance.coverage = Reference(Coverage/CoverageExample) // Daten im Bsp nicht vorhanden
* insurance.claimResponse = Reference(ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-1)
* careTeam[ZPMBeteiligung].provider = Reference(Organization/ZPMExample) // Daten im Bsp nicht vorhanden
* careTeam[ZPMBeteiligung].responsible = true // Daten im Bsp nicht vorhanden
* related.relationship.coding.code = #initial-claim



Instance: MII-EXA-MTB-Antwort-Kostenuebernahme-1
InstanceOf: MII_PR_MTB_Antwort_Kostenuebernahme
Usage: #example
Title: "01.05.2023 Krankenkassenantrag Mirvetuximab soravtansine genehmigt"
* type = #institutional
* use = #claim
* patient = Reference(Patient/KimMusterperson)
* created = "2023-05-01"
* insurer = Reference(Organization/InstitutionID) // Daten im Bsp nicht vorhanden
* request = Reference(Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-1)
// * extension[Ergebnis].valueCodeableConcept.coding = $mii-cs-mtb-antwort-kostenuebernahme-status#accepted
//* extension[GrundAblehnung].valueCodeableConcept.coding = $mii-cs-mtb-antwort-kostenuebernahme-status#