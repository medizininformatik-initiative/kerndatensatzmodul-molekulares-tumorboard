// Definition combined system therapy ---------------------------------------------------------------------------------
RuleSet: SystemTherapyMedicationStatement(text, dateTime, procedure, parent, atc, doseValue, doseUnit, doseUnitCode)
* partOf[+] = Reference(Procedure/{procedure})
* partOf[+] = Reference(MedicationStatement/{parent})
* status = $systemtherapie-status#completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE{atc}
* subject = Reference(Patient/KimMusterperson)
* effectiveDateTime = {dateTime}
* note.text = {text}
* dosage.doseAndRate.doseQuantity.value = {doseValue}
* dosage.doseAndRate.doseQuantity.unit = {doseUnit}
* dosage.doseAndRate.doseQuantity.code = {doseUnitCode}
* dosage.doseAndRate.doseQuantity.system = $UCUM

// MedicationStatements Carboplatin + Doxorubicin ---------------------------------------------------------------------
Instance: MTBChemo1Procedure
InstanceOf: MII_PR_MTB_Systemische_Therapie
Usage: #example
Description: "Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28; Sechs Zyklen ab 04.01.2023"
* extension[Intention].valueCodeableConcept.coding[0] = $mii-cs-onko-intention#K
* status = #completed
* category.coding[sct] = $SCT#277132007 // Therapeutic procedure | alternativ 18629005 Administration of medicine?
* code.coding[sct] = $SCT#367336001 // Chemotherapy
* code.coding[systemische_therapie_art] = $mii-cs-onko-therapie-typ#CH // Chemotherapy
* subject = Reference(Patient/KimMusterperson)
* performedPeriod.start = "2023-01-04"
* performedPeriod.end = "2023-05-24"
* outcome.coding[+] = $mii-cs-onko-therapie-grund-ende#W
* outcome.text = "Reguläres Ende mit Substanzwechsel"

// 04.01.2023 Z1 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28
Instance: MTBChemo1MedicationStatement1
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo1Procedure)
* status = $systemtherapie-status#completed
* medicationCodeableConcept.text = "Z1 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
* subject = Reference(Patient/KimMusterperson)
* effectiveDateTime = "2023-01-04"

Instance: MTBChemo1MedicationStatement1-1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z1 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-01-04", MTBChemo1Procedure, MTBChemo1MedicationStatement1, #L01XA02, 5, "AUC", #mg.min/ml)

Instance: MTBChemo1MedicationStatement1-2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z1 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-01-04", MTBChemo1Procedure, MTBChemo1MedicationStatement1, #L01DB01, 30, "mg/m2", #mg/m2)

// 01.02.2023 Z2 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28
Instance: MTBChemo1MedicationStatement2
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo1Procedure)
* status = $systemtherapie-status#completed
* medicationCodeableConcept.text = "Z2 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
* subject = Reference(Patient/KimMusterperson)
* effectiveDateTime = "2023-02-01"

Instance: MTBChemo1MedicationStatement2-1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z2 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-02-01", MTBChemo1Procedure, MTBChemo1MedicationStatement2, #L01XA02, 5, "AUC", #mg.min/ml)

Instance: MTBChemo1MedicationStatement2-2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z2 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-02-01", MTBChemo1Procedure, MTBChemo1MedicationStatement2, #L01DB01, 30, "mg/m2", #mg/m2)

// 01.03.2023 Z3 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28
Instance: MTBChemo1MedicationStatement3
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo1Procedure)
* status = $systemtherapie-status#completed
* medicationCodeableConcept.text = "Z3 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
* subject = Reference(Patient/KimMusterperson)
* effectiveDateTime = "2023-03-01"

Instance: MTBChemo1MedicationStatement3-1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z3 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-03-01", MTBChemo1Procedure, MTBChemo1MedicationStatement3, #L01XA02, 5, "AUC", #mg.min/ml)

Instance: MTBChemo1MedicationStatement3-2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z3 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-03-01", MTBChemo1Procedure, MTBChemo1MedicationStatement3, #L01DB01, 30, "mg/m2", #mg/m2)

// 29.03.2023 Z4 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28
Instance: MTBChemo1MedicationStatement4
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo1Procedure)
* status = $systemtherapie-status#completed
* medicationCodeableConcept.text = "Z4 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
* subject = Reference(Patient/KimMusterperson)
* effectiveDateTime = "2023-03-29"

Instance: MTBChemo1MedicationStatement4-1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z4 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-03-29", MTBChemo1Procedure, MTBChemo1MedicationStatement4, #L01XA02, 5, "AUC", #mg.min/ml)

Instance: MTBChemo1MedicationStatement4-2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z4 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-03-29", MTBChemo1Procedure, MTBChemo1MedicationStatement4, #L01DB01, 30, "mg/m2", #mg/m2)

// 26.04.2023 Z5 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28
Instance: MTBChemo1MedicationStatement5
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo1Procedure)
* status = $systemtherapie-status#completed
* medicationCodeableConcept.text = "Z5 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
* subject = Reference(Patient/KimMusterperson)
* effectiveDateTime = "2023-04-26"

Instance: MTBChemo1MedicationStatement5-1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z5 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-04-26", MTBChemo1Procedure, MTBChemo1MedicationStatement5, #L01XA02, 5, "AUC", #mg.min/ml)

Instance: MTBChemo1MedicationStatement5-2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z5 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-04-26", MTBChemo1Procedure, MTBChemo1MedicationStatement5, #L01DB01, 30, "mg/m2", #mg/m2)

// 24.05.2023 Z6 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28
Instance: MTBChemo1MedicationStatement6
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo1Procedure)
* status = $systemtherapie-status#completed
* medicationCodeableConcept.text = "Z6 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
* subject = Reference(Patient/KimMusterperson)
* effectiveDateTime = "2023-05-24"

Instance: MTBChemo1MedicationStatement6-1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z6 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-05-24", MTBChemo1Procedure, MTBChemo1MedicationStatement6, #L01XA02, 5, "AUC", #mg.min/ml)

Instance: MTBChemo1MedicationStatement6-2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z6 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-05-24", MTBChemo1Procedure, MTBChemo1MedicationStatement6, #L01DB01, 30, "mg/m2", #mg/m2)

// MedicationRequest Mirvetuximab soravtansine ------------------------------------------------------------------------
// Auf Grundlage der hohen Expression von Folat Rezeptor alpha (80% d. Tumorzellen) besteht die Rationale für einen
// Therapieversuch mit Mirvetuximab Soravtansine (EL m1A; DOI: 10.1200/JCO.2022.40.16_suppl.5512 Journal of Clinical
// Oncology 40, no. 16_suppl (June 01, 2022) 5512-5512 und PMID 38055253).
// 1. Mirvetuximab soravtansine (m1A)
Instance: MTBMedicationRequestMirvetuximab
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
* extension[Prioritaet].valuePositiveInt = 1
* extension[Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = $mii-cs-mtb-therapieempfehlung-evidenzgrad#m1A
* extension[Publikation].valueIdentifier.system = "http://doi.org"
* extension[Publikation].valueIdentifier.value = "10.1200/JCO.2022.40.16_suppl.5512"
* status = $medicationrequest-status#draft
* intent = $medicationrequest-intent#proposal
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)

// MedicationRequest Trastuzumab deruxtecan ---------------------------------------------------------------------------
// Her2neu Score 2+: Bei Her2low in der immunhistochemischen Untersuchung besteht eine off-label Therapieoption mit
// Trastuzumab Deruxtecan. In einer Phase-III-Studie Trastuzumab Deruxtecan vs. Physicians choice Chemotherapyie bei
// Her2low Mamma-Cas zeigte sich ein deutlich positiver Effekt sowohl auf PFS als auch auf OS durch die Behandlung mit
// Trastuzumab deruxtecan (PMID 35665782, EL m1A). Daten aus der DESTINY-PanTumor02-Studie (Phase II), wurden auf dem
// ASCO2023 präsentiert: hier zeigt sich eine sehr gute ORR von 45% in der Kohorte für Ovarialkarzinome, wobei gemäß
// zentralem Assessment auch Score1+-Patient*innen eingeschlossen worden waren . 57% vom Patientinnen mit HER2-pos
// Endometrium Karzinom haben auf die Therapie mit Trastuzumab- Deruxtecan angesprochen
// (10.1200/JCO.2023.41.17_suppl.LBA3000, PMID: 37870536, EL m1B).
//
// 3. Trastuzumab deruxtecan (m1B)
Instance: MTBMedicationRequestTrastuzumabDeruxtecan
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
* extension[Prioritaet].valuePositiveInt = 3
* extension[Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = $mii-cs-mtb-therapieempfehlung-evidenzgrad#m1B
* extension[Publikation][0].valueIdentifier.system = "http://www.ncbi.nlm.nih.gov/pubmed"
* extension[Publikation][0].valueIdentifier.value = "35665782"
* extension[Publikation][1].valueIdentifier.system = "http://www.ncbi.nlm.nih.gov/pubmed"
* extension[Publikation][1].valueIdentifier.value = "37870536"
* status = $medicationrequest-status#draft
* intent = $medicationrequest-intent#proposal
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FD04
* subject = Reference(Patient/KimMusterperson)

// RequestGroup Adavosertib / Carboplatin -----------------------------------------------------------------------------
// Zudem bei CCNE1 ampl Rationale für Kombination aus WEE1-Inhibitor Adavosertib +/- Carboplatin
// (PMID: 37236033, EL m1B), Verfügbarkeit prüfen, jeweils nach Ausschöpfung der LL-Therapie.
// 4. Adavosertib +/- Carboplatin (m1B) sofern verfügbar
Instance: MTBMedicationAdavosertib
InstanceOf: Medication
Usage: #example
* status = #active
* code.coding = $UNII#K2T6HJX3I3
* code.text = "ADAVOSERTIB"

Instance: MTBMedicationRequestAdavosertib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
* status = $medicationrequest-status#draft
* intent = $medicationrequest-intent#option
* medicationReference = Reference(Medication/MTBMedicationAdavosertib)
* subject = Reference(Patient/KimMusterperson)

Instance: MTBMedicationRequestCarboplatin
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
* status = $medicationrequest-status#draft
* intent = $medicationrequest-intent#option
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01XA02
* subject = Reference(Patient/KimMusterperson)

Instance: MTBRequestGroupAdavosertibCarboplatin
InstanceOf: MII_PR_MTB_Therapieempfehlung_Kombination
Usage: #example
* extension[Prioritaet].valuePositiveInt = 4
* extension[Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = $mii-cs-mtb-therapieempfehlung-evidenzgrad#m1B
* extension[Publikation].valueIdentifier.system = "http://www.ncbi.nlm.nih.gov/pubmed"
* extension[Publikation].valueIdentifier.value = "37236033"
* status = $request-status#draft
* intent = $request-intent#proposal
* action[+].resource = Reference(MedicationRequest/MTBMedicationRequestAdavosertib)
* action[+].resource = Reference(MedicationRequest/MTBMedicationRequestCarboplatin)
* subject = Reference(Patient/KimMusterperson)

// RequestGroup Lunresertib / Camonsertib -----------------------------------------------------------------------------
//  Eine Phase I-Studie mit dem first-in-class PKMYT1-Inhibitor Lunresertib und dem ATR Inhibitor Camonsertib zeigte
// erste klinische Aktivität mit ordentlichem Ansprechen (OR 23,6%, 2x cPR bei OvarialCA mit CCNE1ampl dokumentiert,
// https://www.reparerx.com/wp-content/uploads/2023/10/ANE_B156_MYTHIC-clinical_poster.pdf und
// https://doi.org/10.1158/1535-7163.TARG-23-PR008, EL m1B). Verfügbarkeit prüfen.
// 5. Lunresertib + Camonsertib (m1B) sofern verfügbar
Instance: MTBMedicationLunresertib
InstanceOf: Medication
Usage: #example
* status = #active
* code.coding = $UNII#N95U3A7N57
* code.text = "Lunresertib"

Instance: MTBMedicationCamonsertib
InstanceOf: Medication
Usage: #example
* status = #active
* code.coding = $UNII#S1Z7Y5G56T
* code.text = "Camonsertib"

Instance: MTBMedicationRequestLunresertib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
* status = $medicationrequest-status#draft
* intent = $medicationrequest-intent#option
* medicationReference = Reference(Medication/MTBMedicationLunresertib)
* subject = Reference(Patient/KimMusterperson)

Instance: MTBMedicationRequestCamonsertib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Usage: #example
* status = $medicationrequest-status#draft
* intent = $medicationrequest-intent#option
* medicationReference = Reference(Medication/MTBMedicationCamonsertib)
* subject = Reference(Patient/KimMusterperson)

Instance: MTBRequestGroupLunresertibCamonsertib
InstanceOf: MII_PR_MTB_Therapieempfehlung_Kombination
Usage: #example
* extension[Prioritaet].valuePositiveInt = 5
* extension[Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = $mii-cs-mtb-therapieempfehlung-evidenzgrad#m1B
* extension[Publikation].valueIdentifier.system = "http://doi.org"
* extension[Publikation].valueIdentifier.value = "10.1158/1535-7163.TARG-23-PR008"
* status = $request-status#draft
* intent = $request-intent#proposal
* action[+].resource = Reference(MedicationRequest/MTBMedicationRequestLunresertib)
* action[+].resource = Reference(MedicationRequest/MTBMedicationRequestCamonsertib)
* subject = Reference(Patient/KimMusterperson)

// MedicationStatements Mirvetuximab soravtansine ---------------------------------------------------------------------
Instance: MTBChemo2Procedure
InstanceOf: MII_PR_MTB_Systemische_Therapie
Usage: #example
Description: "Mirvetuximab soravtansine 6mg/kg KG, Wdh d22; Sechs Zyklen ab 24.06.2023"
* extension[Intention].valueCodeableConcept.coding[0] = $mii-cs-onko-intention#K
* status = #completed
* category.coding[sct] = $SCT#277132007 // Therapeutic procedure | alternativ 18629005 Administration of medicine?
* code.coding[sct] = $SCT#367336001 // Chemotherapy
* code.coding[systemische_therapie_art] = $mii-cs-onko-therapie-typ#CH // Chemotherapy
* subject = Reference(Patient/KimMusterperson)
* performedPeriod.start = "2023-06-24"
* performedPeriod.end = "2023-10-12"
* outcome.coding[+] = $mii-cs-onko-therapie-grund-ende#E
* outcome.text = "Reguläres Ende"

// 24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22
Instance: MTBChemo2MedicationStatement1
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo2Procedure)
* status = $systemtherapie-status#completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectiveDateTime = "2023-06-24"
* note.text = "Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = $UCUM

// 16.07.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22
Instance: MTBChemo2MedicationStatement2
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo2Procedure)
* status = $systemtherapie-status#completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectiveDateTime = "2023-07-16"
* note.text = "Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = $UCUM

// 07.08.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22
Instance: MTBChemo2MedicationStatement3
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo2Procedure)
* status = $systemtherapie-status#completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectiveDateTime = "2023-08-07"
* note.text = "Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = $UCUM

// 29.08.2023 Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22
Instance: MTBChemo2MedicationStatement4
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo2Procedure)
* status = $systemtherapie-status#completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectiveDateTime = "2023-08-29"
* note.text = "Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = $UCUM

// 20.09.2023 Z5 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22
Instance: MTBChemo2MedicationStatement5
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo2Procedure)
* status = $systemtherapie-status#completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectiveDateTime = "2023-09-20"
* note.text = "Z5 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = $UCUM

// 12.10.2023 Z6 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22
Instance: MTBChemo2MedicationStatement6
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo2Procedure)
* status = $systemtherapie-status#completed
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* subject = Reference(Patient/KimMusterperson)
* effectiveDateTime = "2023-10-12"
* note.text = "Z6 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = $UCUM