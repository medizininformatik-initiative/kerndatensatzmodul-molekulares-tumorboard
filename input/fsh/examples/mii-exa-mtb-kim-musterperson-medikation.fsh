// Definition combined system therapy ---------------------------------------------------------------------------------
RuleSet: SystemTherapyMedicationStatement(text, dateTime, procedure, parent, atc, doseValue, doseUnit, doseUnitCode)
* partOf[+] = Reference(Procedure/{procedure})
* partOf[+] = Reference(MedicationStatement/{parent})
* status = #completed
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
InstanceOf: MII_PR_MTB_Systemische_Vortherapie
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
* status = #completed
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
* status = #completed
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
* status = #completed
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
* status = #completed
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
* status = #completed
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
* status = #completed
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

// MedicationStatements Mirvetuximab soravtansine ---------------------------------------------------------------------
// DAS entsteht quasi erst im DIZ, Muss / Kann Followup hierauf zeigen? Zei
Instance: MTBChemo2Procedure
InstanceOf: MII_PR_MTB_Systemische_Vortherapie
Usage: #example
Description: "Mirvetuximab soravtansine 6mg/kg KG, Wdh d22; Sechs Zyklen ab 24.06.2023"
* extension[Intention].valueCodeableConcept.coding[0] = $mii-cs-onko-intention#K
* basedOn[Therapieplan] = Reference(mii-exa-mtb-kim-musterperson-therapieplan)
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
* status = #completed
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
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
* status = #completed
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
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
* status = #completed
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
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
* status = #completed
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
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
* status = #completed
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
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
* status = #completed
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* medicationCodeableConcept.coding[atcClassDe] = $ATC_DE#L01FX26
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
* subject = Reference(Patient/KimMusterperson)
* effectiveDateTime = "2023-10-12"
* note.text = "Z6 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = $UCUM