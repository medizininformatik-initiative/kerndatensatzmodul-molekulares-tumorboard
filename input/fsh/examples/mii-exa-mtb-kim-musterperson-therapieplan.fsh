Instance: mii-exa-mtb-kim-musterperson-therapieplan
InstanceOf: MII_PR_MTB_Therapieplan
Title: "MTB-Beschluss Kim Musterperson"
Description: "Beschluss MTB-Fall Kim Musterperson vom 28.03.2023"
Usage: #example
* status = #active

// Prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)
* category = $mii-cs-onko-therapieplanung-typ#praeth

// Patientin Kim Musterperson (siehe KDS Erweiterungsmodul Onkologie)
* subject = Reference(Patient/PatientKimMusterperson)

// Beschluss nach Wiedervorstellung am 28.03.2023
* created = 2023-03-28

// Primärdiagnose (siehe KDS Erweiterungsmodul Onkologie)
* addresses = Reference(Condition/PatientKimMusterperson-PrimaryDiagnosis-2)

// Behandlungsepisode
* supportingInfo = Reference(mii-exa-mtb-kim-musterperson-behandlungsepisode)

// Prio 1 - Therapieempfehlung: Mirvetuximab soravtansine (m1A)
* activity.reference = Reference(mii-exa-mtb-medication-request-mirvetuximab)
* activity.detail.code = $mii-cs-onko-therapie-typ#IZ "Immun-/Antikörpertherapie + zielgerichtete Substanzen"
* activity.detail.status = #not-started

// Prio 2.1 - Studieneinschlussempfehlung: Phase 1/2 CLDN6 CAR-T-Zell-Studie (Kohorte 2: Eierstockkrebs, PI Dr. Desuki, Mainz oder Prof. Ungerechts, Heidelberg)
* activity.reference = Reference(mii-exa-mtb-study-request-cldn6)
* activity.detail.code = $mii-cs-onko-therapie-typ#IZ "Immun-/Antikörpertherapie + zielgerichtete Substanzen"
* activity.detail.status = #not-started

// Prio 2.2 - Studieneinschlussempfehlung: TEDOVA (NCT04713514, PI Prof. Schochter, Ulm. platin-sensibles Rezidiv (=CR, PR oder SD), nach mind. 4 Zyklen Platin im Rezidiv und HLA-A2)
* activity.reference = Reference(mii-exa-mtb-study-request-tedova)
* activity.detail.code = $mii-cs-onko-therapie-typ#IZ "Immun-/Antikörpertherapie + zielgerichtete Substanzen"
* activity.detail.status = #not-started

// Prio 2.3 - Studieneinschlussempfehlung: Studie bei CCNE1 ampl. OvCA (UKF, PI Prof. Duque, ID ausstehend)
* activity.reference = Reference(mii-exa-mtb-study-request-ccne1)
* activity.detail.code = $mii-cs-onko-therapie-typ#ZS "zielgerichtete Substanzen"
* activity.detail.status = #not-started

// Prio 3 - Therapieempfehlung: Trastuzumab deruxtecan (m1B)
* activity.reference = Reference(mii-exa-mtb-medication-requestion-trastuzumab-deruxtecan)
* activity.detail.code = $mii-cs-onko-therapie-typ#IZ "Immun-/Antikörpertherapie + zielgerichtete Substanzen"
* activity.detail.status = #not-started

// Prio 4 - Therapieempfehlung: Adavosertib +/- Carboplatin (m1B) sofern verfügbar
* activity.reference = Reference(mii-exa-mtb-request-group-adavosertib-carboplatin)
* activity.detail.code = $mii-cs-onko-therapie-typ#CZ "Chemotherapie + zielgerichtete Substanzen"
* activity.detail.status = #not-started

// Prio 5 - Therapieempfehlung: Lunresertib + Camonsertib (m1B) sofern verfügbar
* activity.reference = Reference(mii-exa-mtb-request-group-lunresertib-camonsertib)
* activity.detail.code = $mii-cs-onko-therapie-typ#ZS "zielgerichtete Substanz"
* activity.detail.status = #not-started

// Prio 6 - Therapieempfehlung: MEKi, z.B. Cobimetinib (m3)
* activity.reference = Reference(mii-exa-mtb-medication-request-cobimetinib)
* activity.detail.code = $mii-cs-onko-therapie-typ#ZS "zielgerichtete Substanzen"
* activity.detail.status = #not-started


// Umgesetzte Therapieempfehlung (Mirvetuximab soravtansine)
* activity[UmgesetzteEmpfehlung].outcomeReference = Reference(MTBChemo2Procedure)
* activity[UmgesetzteEmpfehlung].detail.code = $mii-cs-onko-therapie-typ#IZ "Immun-/Antikörpertherapie + zielgerichtete Substanzen"
* activity[UmgesetzteEmpfehlung].detail.status = #completed
