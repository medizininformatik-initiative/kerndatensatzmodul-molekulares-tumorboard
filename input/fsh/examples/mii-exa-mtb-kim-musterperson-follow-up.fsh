Instance: MII-EXA-MTB-Follow-Up-ClinicalImpression-1
InstanceOf: MII_PR_MTB_Follow_Up_ClinicalImpression
Usage: #example
Title: "Follow-Up Prozess zur Überprüfung der durchgeführten Therapien & Kostenübernahmen"
* status = #completed
* investigation.code.coding.code = #completed // Daten im Bsp nicht vorhanden
* subject = Reference(Patient/KimMusterperson)
* supportingInfo[UmgesetzteTherapien][0] = Reference(MII-EXA-MTB-Systemtherapie-1)
* supportingInfo[UmgesetzteTherapien][+] = Reference(MII-EXA-MTB-Systemtherapie-2)
* supportingInfo[UmgesetzteTherapien][+] = Reference(MII-EXA-MTB-Systemtherapie-3)
* supportingInfo[AntraegeKostenuebernahme][0] = Reference(MII-EXA-MTB-Antrag-Kostenuebernahme-1)
* supportingInfo[AntwortenKostenuebernahme][0] = Reference(MII-EXA-MTB-Antwort-Kostenuebernahme-1)


Instance: MII-EXA-MTB-Systemtherapie-1
InstanceOf: MII_PR_MTB_Systemtherapie
Usage: #example
Title: "24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/TherapieempfehlungExample) // hier auf Empfehlung des MTB vom 28.03.2023 verweisen
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectivePeriod.start = "2023-06-24"
* effectivePeriod.end = "2023-06-24"
* note.text = "24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* status = #completed
* dosage[Dosis].doseAndRate.doseQuantity.value = 6
* dosage[Dosis].doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage[Dosis].doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage[Dosis].doseAndRate.doseQuantity.system = $UCUM


Instance: MII-EXA-MTB-Systemtherapie-2
InstanceOf: MII_PR_MTB_Systemtherapie
Usage: #example
Title: "16.07.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"

* basedOn = Reference(MedicationRequest/TherapieempfehlungExample) // hier auf Empfehlung des MTB vom 28.03.2023 verweisen
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectivePeriod.start = "2023-07-16"
* effectivePeriod.end = "2023-07-16"
* note.text = "16.07.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* status = #completed
* statusReason = #E // Daten im Bsp nicht vorhanden
* dosage[Dosis].doseAndRate.doseQuantity.value = 6
* dosage[Dosis].doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage[Dosis].doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage[Dosis].doseAndRate.doseQuantity.system = $UCUM


Instance: MII-EXA-MTB-Systemtherapie-3
InstanceOf: MII_PR_MTB_Systemtherapie
Usage: #example
Title: "07.08.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"

* basedOn = Reference(MedicationRequest/TherapieempfehlungExample) // hier auf Empfehlung des MTB vom 28.03.2023 verweisen
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectivePeriod.start = "2023-08-07"
* effectivePeriod.end = "2023-08-07"
* note.text = "07.08.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* status = #completed
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
* partOf[0] = Reference(MII-EXA-MTB-Systemtherapie-1) 
* partOf[1] = Reference(MII-EXA-MTB-Systemtherapie-2) 
* partOf[2] = Reference(MII-EXA-MTB-Systemtherapie-3) 
* valueCodeableConcept.coding.code = #CR
* component[Lymphknoten_Verlauf].code.coding.code = #399656008
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding.code = #K



Instance: MII-EXA-MTB-Systemtherapie-4
InstanceOf: MII_PR_MTB_Systemtherapie
Usage: #example
Title: "29.08.2023 Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/TherapieempfehlungExample) // hier auf Empfehlung des MTB vom 28.03.2023 verweisen
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectivePeriod.start = "2023-08-29"
* effectivePeriod.end = "2023-08-29"
* note.text = "29.08.2023 Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* status = #completed
* dosage[Dosis].doseAndRate.doseQuantity.value = 6
* dosage[Dosis].doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage[Dosis].doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage[Dosis].doseAndRate.doseQuantity.system = $UCUM


Instance: MII-EXA-MTB-Systemtherapie-5
InstanceOf: MII_PR_MTB_Systemtherapie
Usage: #example
Title: "20.09.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"

* basedOn = Reference(MedicationRequest/TherapieempfehlungExample) // hier auf Empfehlung des MTB vom 28.03.2023 verweisen
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectivePeriod.start = "2023-09-20"
* effectivePeriod.end = "2023-09-20"
* note.text = "20.09.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* status = #completed
* statusReason = #E // Daten im Bsp nicht vorhanden
* dosage[Dosis].doseAndRate.doseQuantity.value = 6
* dosage[Dosis].doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage[Dosis].doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage[Dosis].doseAndRate.doseQuantity.system = $UCUM


Instance: MII-EXA-MTB-Systemtherapie-6
InstanceOf: MII_PR_MTB_Systemtherapie
Usage: #example
Title: "12.10.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"

* basedOn = Reference(MedicationRequest/TherapieempfehlungExample) // hier auf Empfehlung des MTB vom 28.03.2023 verweisen
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectivePeriod.start = "2023-10-12"
* effectivePeriod.end = "2023-10-12"
* note.text = "12.10.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* status = #completed
* statusReason = #E // Daten im Bsp nicht vorhanden
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
* partOf[0] = Reference(MII-EXA-MTB-Systemtherapie-4) 
* partOf[1] = Reference(MII-EXA-MTB-Systemtherapie-5) 
* partOf[2] = Reference(MII-EXA-MTB-Systemtherapie-6) 
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
* provider = Reference(Organization/InstitutionID) // Daten im Bsp nicht vorhanden
* prescription = Reference(MedicationRequest/TherapieempfehlungExample) // hier auf Empfehlung des MTB vom 28.03.2023 verweisen
* insurance.coverage = Reference(Coverage/CoverageExample) // Daten im Bsp nicht vorhanden
* insurance.claimResponse = Reference(ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-1)

* careTeam[ZPMBeteiligung].provider = Reference(Organization/ZPMExample) // Daten im Bsp nicht vorhanden
* careTeam[ZPMBeteiligung].responsible = true // Daten im Bsp nicht vorhanden
* extension[Antragsstadium].valueCodeableConcept = #initial-claim



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
* extension[Antragsstadium].valueCodeableConcept = #accepted