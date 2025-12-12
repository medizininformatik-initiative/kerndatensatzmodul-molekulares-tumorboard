Instance: MII-EXA-MTB-Follow-Up-ClinicalImpression-1
InstanceOf: MII_PR_MTB_Follow_Up_ClinicalImpression
Usage: #example
Title: "Follow-Up Prozess zur Überprüfung der durchgeführten Therapien & Kostenübernahmen"
* status = #completed
* code.coding = $SCT#390906007 "Follow-up encounter (procedure)"
* effectiveDateTime = "2023-10-22"
* previous = Reference(mii-exa-mtb-kim-musterperson-behandlungsepisode)
* investigation.code.coding = $mii-cs-mtb-follow-up-status#completed // Daten im Bsp nicht vorhanden
* subject = Reference(Patient/PatientKimMusterperson)
* supportingInfo[UmgesetzteTherapien][+] = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* supportingInfo[AntraegeKostenuebernahme][+] = Reference(MII-EXA-MTB-Antrag-Kostenuebernahme-1)
* supportingInfo[AntwortenKostenuebernahme][+] = Reference(MII-EXA-MTB-Antwort-Kostenuebernahme-1)


Instance: MII-EXA-MTB-Systemische-Therapie-1
InstanceOf: MII_PR_MTB_Systemische_Therapie
Usage: #example
Title: "24.06.2023 - 12.10.2023 Mirvetuximab soravtansine"
* status = #completed
* statusReason = #regular-completion
* extension[Intention].valueCodeableConcept.coding[0] = $mii-cs-onko-intention#K // kurativ
* code.coding[systemische_therapie_art] = $mii-cs-onko-therapie-typ#CH // Chemotherapy
* subject = Reference(Patient/PatientKimMusterperson)
* performedPeriod.start = "2023-06-24"
* performedPeriod.end = "2023-10-12"
* basedOn = Reference(mii-exa-mtb-kim-musterperson-therapieplan)

Instance: MII-EXA-MTB-Systemische-Therapie-Medication-1
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* status = #completed
* medicationCodeableConcept.coding[+] = $UNII#98DE7VN88D "Mirvetuximab soravtansine"
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26 "Mirvetuximab soravtansin"
* medicationCodeableConcept.coding[atcClassDe].version = "2025" //erste ATC-Version wo Code existiert
* subject = Reference(Patient/PatientKimMusterperson)
* effectivePeriod.start = "2023-06-24"
* effectivePeriod.end = "2023-06-24"
* note.text = "24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = $UCUM


Instance: MII-EXA-MTB-Systemische-Therapie-Medication-2
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "16.07.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* partOf[systemischeTherapie] = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* status = #completed
* medicationCodeableConcept.coding[+] = $UNII#98DE7VN88D "Mirvetuximab soravtansine"
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26 "Mirvetuximab soravtansin"
* medicationCodeableConcept.coding[atcClassDe].version = "2025" //erste ATC-Version wo Code existiert
* subject = Reference(Patient/PatientKimMusterperson)
* effectivePeriod.start = "2023-07-16"
* effectivePeriod.end = "2023-07-16"
* note.text = "16.07.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* statusReason = #E // Daten im Bsp nicht vorhanden
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = $UCUM


Instance: MII-EXA-MTB-Systemische-Therapie-Medication-3
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "07.08.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* status = #completed
* medicationCodeableConcept.coding[+] = $UNII#98DE7VN88D "Mirvetuximab soravtansine"
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26 "Mirvetuximab soravtansin"
* medicationCodeableConcept.coding[atcClassDe].version = "2025" //erste ATC-Version wo Code existiert
* subject = Reference(Patient/PatientKimMusterperson)
* effectivePeriod.start = "2023-08-07"
* effectivePeriod.end = "2023-08-07"
* note.text = "07.08.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* statusReason = #E // Daten im Bsp nicht vorhanden
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = $UCUM

Instance: MII-EXA-MTB-Response-Befund-1
InstanceOf: MII_PR_MTB_Response_Befund
Usage: #example
Title: "20.08.2023 CT T/A"
* status = #final
* code.coding.code = #396432002
* method = $mii-cs-mtb-response-befund-beurteilungsmethode#RECIST "RECIST"
* effectiveDateTime = "2023-08-20"
* subject = Reference(Patient/PatientKimMusterperson)
* focus = Reference(Condition/PatientKimMusterperson-PrimaryDiagnosis-2)
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1) 
* valueCodeableConcept.coding.code = #CR
* component[Lymphknoten_Verlauf].code.coding = $SCT#399656008 "Presence of metastatic neoplasm in regional lymph node (observable entity)"
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding = $mii-cs-onko-verlauf-lymphknoten#K "kein Lymphknotenbefall nachweisbar"


Instance: MII-EXA-MTB-Systemische-Therapie-Medication-4
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "29.08.2023 Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* status = #completed
* medicationCodeableConcept.coding[+] = $UNII#98DE7VN88D "Mirvetuximab soravtansine"
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26 "Mirvetuximab soravtansin"
* medicationCodeableConcept.coding[atcClassDe].version = "2025" //erste ATC-Version wo Code existiert
* subject = Reference(Patient/PatientKimMusterperson)
* effectivePeriod.start = "2023-08-29"
* effectivePeriod.end = "2023-08-29"
* note.text = "29.08.2023 Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = $UCUM


Instance: MII-EXA-MTB-Systemische-Therapie-Medication-5
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "20.09.2023 Z5 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* status = #completed
* medicationCodeableConcept.coding[+] = $UNII#98DE7VN88D "Mirvetuximab soravtansine"
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26 "Mirvetuximab soravtansin"
* medicationCodeableConcept.coding[atcClassDe].version = "2025" //erste ATC-Version wo Code existiert
* subject = Reference(Patient/PatientKimMusterperson)
* effectivePeriod.start = "2023-09-20"
* effectivePeriod.end = "2023-09-20"
* note.text = "20.09.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* statusReason = #E // Daten im Bsp nicht vorhanden
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = $UCUM

Instance: MII-EXA-MTB-Systemische-Therapie-Medication-6
InstanceOf: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Usage: #example
Title: "12.10.2023 Z6 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* status = #completed
* medicationCodeableConcept.coding[+] = $UNII#98DE7VN88D "Mirvetuximab soravtansine"
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26 "Mirvetuximab soravtansin"
* medicationCodeableConcept.coding[atcClassDe].version = "2025" //erste ATC-Version wo Code existiert
* subject = Reference(Patient/PatientKimMusterperson)
* effectivePeriod.start = "2023-10-12"
* effectivePeriod.end = "2023-10-12"
* note.text = "12.10.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = $UCUM


Instance: MII-EXA-MTB-Response-Befund-2
InstanceOf: MII_PR_MTB_Response_Befund
Usage: #example
Title: "22.10.2023 CT T/A"
* status = #final
* code.coding.code = #396432002
* method = $mii-cs-mtb-response-befund-beurteilungsmethode#RECIST "RECIST"
* effectiveDateTime = "2023-10-22"
* subject = Reference(Patient/PatientKimMusterperson)
* focus = Reference(Condition/PatientKimMusterperson-PrimaryDiagnosis-2)
* partOf = Reference(MII-EXA-MTB-Systemische-Therapie-1)
* valueCodeableConcept.coding.code = #T "Teilremission (partial remission, PR)"
* component[Lymphknoten_Verlauf].code.coding = $SCT#399656008 "Presence of metastatic neoplasm in regional lymph node (observable entity)"
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding = $mii-cs-onko-verlauf-lymphknoten#K "kein Lymphknotenbefall nachweisbar"



Instance: MII-EXA-MTB-Antrag-Kostenuebernahme-1
InstanceOf: MII_PR_MTB_Antrag_Kostenuebernahme
Usage: #example
Title: "10.03.2023 Krankenkassenantrag gestellt Mirvetuximab soravtansine"
* type = #institutional
* use = #claim
* patient = Reference(Patient/PatientKimMusterperson)
* created = "2023-03-10"
* provider = Reference(Organization/MyHospital) // Daten im Bsp nicht vorhanden, sollte die Klinik oder die verschreibende Einrichtung sein
* prescription = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* insurance.sequence = 1 // Daten im Bsp nicht vorhanden
* insurance.coverage = Reference(Coverage/MyCoverage) // Daten im Bsp nicht vorhanden
* insurance.claimResponse = Reference(ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-1)
* careTeam[ZPMBeteiligung].provider = Reference(Organization/MyInsurer) // Daten im Bsp nicht vorhanden
* careTeam[ZPMBeteiligung].responsible = true // Daten im Bsp nicht vorhanden
* related.relationship.coding.code = #initial-claim



Instance: MII-EXA-MTB-Antwort-Kostenuebernahme-1
InstanceOf: MII_PR_MTB_Antwort_Kostenuebernahme
Usage: #example
Title: "01.05.2023 Krankenkassenantrag Mirvetuximab soravtansine genehmigt"
* type = #institutional
* use = #claim
* patient = Reference(Patient/PatientKimMusterperson)
* created = "2023-05-01"
* insurer = Reference(Organization/MyHospital) // Daten im Bsp nicht vorhanden
* request = Reference(Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-1)
// * extension[Ergebnis].valueCodeableConcept.coding = $mii-cs-mtb-antwort-kostenuebernahme-status#accepted
//* extension[GrundAblehnung].valueCodeableConcept.coding = $mii-cs-mtb-antwort-kostenuebernahme-status#