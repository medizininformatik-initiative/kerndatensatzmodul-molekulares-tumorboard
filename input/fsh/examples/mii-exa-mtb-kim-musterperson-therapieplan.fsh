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
* supportingInfo[Behandlungsepisode] = Reference(mii-exa-mtb-kim-musterperson-behandlungsepisode)

// Prio 1 - Therapieempfehlung: Mirvetuximab soravtansine (m1A)
* activity[Therapieempfehlung][+].reference = Reference(mii-exa-mtb-medication-request-mirvetuximab)
* activity[Therapieempfehlung][=].detail.code = $mii-cs-onko-therapie-typ#IZ "Immun-/Antikörpertherapie + zielgerichtete Substanzen"
* activity[Therapieempfehlung][=].detail.status = #completed
* activity[Therapieempfehlung][=].outcomeReference = Reference(MTBChemo2Procedure)

// Prio 2.1 - Studieneinschlussempfehlung: Phase 1/2 CLDN6 CAR-T-Zell-Studie (Kohorte 2: Eierstockkrebs, PI Dr. Desuki, Mainz oder Prof. Ungerechts, Heidelberg)
* activity[Studieneinschlussempfehlung][+].reference = Reference(mii-exa-mtb-study-request-cldn6)
* activity[Studieneinschlussempfehlung][=].detail.code = $mii-cs-onko-therapie-typ#IZ "Immun-/Antikörpertherapie + zielgerichtete Substanzen"
* activity[Studieneinschlussempfehlung][=].detail.status = #not-started

// Prio 2.2 - Studieneinschlussempfehlung: TEDOVA (NCT04713514, PI Prof. Schochter, Ulm. platin-sensibles Rezidiv (=CR, PR oder SD), nach mind. 4 Zyklen Platin im Rezidiv und HLA-A2)
* activity[Studieneinschlussempfehlung][+].reference = Reference(mii-exa-mtb-study-request-tedova)
* activity[Studieneinschlussempfehlung][=].detail.code = $mii-cs-onko-therapie-typ#IZ "Immun-/Antikörpertherapie + zielgerichtete Substanzen"
* activity[Studieneinschlussempfehlung][=].detail.status = #not-started

// Prio 2.3 - Studieneinschlussempfehlung: Studie bei CCNE1 ampl. OvCA (UKF, PI Prof. Duque, ID ausstehend)
* activity[Studieneinschlussempfehlung][+].reference = Reference(mii-exa-mtb-study-request-ccne1)
* activity[Studieneinschlussempfehlung][=].detail.code = $mii-cs-onko-therapie-typ#ZS "zielgerichtete Substanzen"
* activity[Studieneinschlussempfehlung][=].detail.status = #not-started

// Prio 3 - Therapieempfehlung: Trastuzumab deruxtecan (m1B)
* activity[Therapieempfehlung][+].reference = Reference(mii-exa-mtb-medication-request-trastuzumab-deruxtecan)
* activity[Therapieempfehlung][=].detail.code = $mii-cs-onko-therapie-typ#IZ "Immun-/Antikörpertherapie + zielgerichtete Substanzen"
* activity[Therapieempfehlung][=].detail.status = #not-started

// Prio 4 - Therapieempfehlung: Adavosertib +/- Carboplatin (m1B) sofern verfügbar
* activity[Therapieempfehlung][+].reference = Reference(mii-exa-mtb-request-group-adavosertib-carboplatin)
* activity[Therapieempfehlung][=].detail.code = $mii-cs-onko-therapie-typ#CZ "Chemotherapie + zielgerichtete Substanzen"
* activity[Therapieempfehlung][=].detail.status = #not-started

// Prio 5 - Therapieempfehlung: Lunresertib + Camonsertib (m1B) sofern verfügbar
* activity[Therapieempfehlung][+].reference = Reference(mii-exa-mtb-request-group-lunresertib-camonsertib)
* activity[Therapieempfehlung][=].detail.code = $mii-cs-onko-therapie-typ#ZS "zielgerichtete Substanzen"
* activity[Therapieempfehlung][=].detail.status = #not-started

// Prio 6 - Therapieempfehlung: MEKi, z.B. Cobimetinib (m3)
* activity[Therapieempfehlung][+].reference = Reference(mii-exa-mtb-medication-request-cobimetinib)
* activity[Therapieempfehlung][=].detail.code = $mii-cs-onko-therapie-typ#ZS "zielgerichtete Substanzen"
* activity[Therapieempfehlung][=].detail.status = #not-started


// NOTE: Zusätzliche Angaben, die nicht zum fiktiven Therapieverlauf passen und nur der Veranschaulichung dienen
* activity[HumangenetischeBeratung][+].reference = Reference(mii-exa-mtb-kim-humangenetische-beratung-aszites)
* activity[HumangenetischeBeratung][=].detail.code = $mii-cs-onko-therapie-typ#SO "Sonstiges"
* activity[HumangenetischeBeratung][=].detail.status = #completed

* activity[HistologieEvaluation][+].reference = Reference(mii-exa-mtb-kim-histologie-evaluation-aszites)
* activity[HistologieEvaluation][=].detail.code = $mii-cs-onko-therapie-typ#SO "Sonstiges"
* activity[HistologieEvaluation][=].detail.status = #not-started

* activity[Biopsie][+].reference = Reference(mii-exa-mtb-kim-rebiopsie-aszites)
* activity[Biopsie][=].detail.code = $mii-cs-onko-therapie-typ#SO "Sonstiges"
* activity[Biopsie][=].detail.status = #completed
