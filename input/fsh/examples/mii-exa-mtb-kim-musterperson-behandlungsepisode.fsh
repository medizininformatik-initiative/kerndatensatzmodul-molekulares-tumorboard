// MTB-Behandlungsepisode Kim Musterperson
Instance: mii-exa-mtb-kim-musterperson-behandlungsepisode
InstanceOf: MII_PR_MTB_Behandlungsepisode
Title: "MTB-Behandlungsepisode Kim Musterperson"
Description: "Molekulares Tumorboard-Behandlungsepisode von Kim Musterperson ab 01.03.2022"
Usage: #example
* status = #active
// Patientin Kim Musterperson (siehe KDS Erweiterungsmodul Onkologie)
* subject = Reference(Patient/PatientKimMusterperson)
// Beginn der Behandlungsepisode
* effectiveDateTime = 2022-03-01
// Primärdiagnosie (siehe KDS Erweiterungsmodul Onkologie)
* problem = Reference(Condition/PatientKimMusterperson-PrimaryDiagnosis-2)
// 10.06.2021 CT Abdomen (siehe KDS Erweiterungsmodul Onkologie)
* supportingInfo = Reference(Procedure/PatientKimMusterperson-Procedure-1)
// 15.06.2021 Aszitespunktion (siehe KDS Erweiterungsmodul Onkologie)
* supportingInfo = Reference(Procedure/PatientKimMusterperson-Procedure-2)
// 22.06.2021 CT Thorax (siehe KDS Erweiterungsmodul Onkologie)
* supportingInfo = Reference(Procedure/PatientKimMusterperson-Procedure-3)
// 30.09.2021 OP (siehe KDS Erweiterungsmodul Onkologie)
* supportingInfo = Reference(Procedure/PatientKimMusterperson-Procedure-4)
* supportingInfo = Reference(Procedure/PatientKimMusterperson-Procedure-4a)
* supportingInfo = Reference(Procedure/PatientKimMusterperson-Procedure-4b)
* supportingInfo = Reference(Procedure/PatientKimMusterperson-Procedure-4c)
* supportingInfo = Reference(Procedure/PatientKimMusterperson-Procedure-4d)
// 05.07.21-05.09.21 Chemotherapie Carboplatin/Paclitaxel (siehe KDS Erweiterungsmodul Onkologie)
* supportingInfo = Reference(Procedure/PatientKimMusterperson-SystemicTherapy-1)
// 08.11.21-09.01.22 Chemotherapie Carboplatin/Gemcitabin (siehe KDS Erweiterungsmodul Onkologie)
* supportingInfo = Reference(Procedure/PatientKimMusterperson-SystemicTherapy-2)
// 02.01.23 Aufklärung Molekulares Tumorboard
* supportingInfo = Reference(mii-exa-mtb-kim-musterperson-aufklaerung)
// 25.01.22 Chemotherapie Niraparib (siehe KDS Erweiterungsmodul Onkologie)
* supportingInfo = Reference(Procedure/PatientKimMusterperson-SystemicTherapy-3)
// 04.01.23-24.05.23 Chemotherapie Carboplatin/Doxorubicin
* supportingInfo = Reference(Procedure/MTBChemo1Procedure)
// 24.06.23-12.10.23 Chemotherapie Mirvetuximab soravtansine
* supportingInfo = Reference(Procedure/MTBChemo2Procedure)

// Aufklärung Molekulares Tumorboard
Instance: mii-exa-mtb-kim-musterperson-aufklaerung
InstanceOf: Consent
Title: "Einwilligung zur MTB-Besprechung Kim Musterperson"
Description: "Einwilligung von Kim Musterperson zur Besprechung im Molekularen Tumorboard vom 02.01.2023"
Usage: #example
* status = #active
* scope = #patient-privacy
* category = $LNC#57084-0 "Patient Consent"
* patient = Reference(Procedure/PatientKimMusterperson)
* dateTime = 2023-01-02