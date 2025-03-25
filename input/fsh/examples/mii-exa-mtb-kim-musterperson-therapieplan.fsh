// Komplexbeispiel Beschluss Therapieplan Molekulares Tumorboard
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

// Prio 1: Mirvetuximab soravtansine (m1A)
// Auf Grundlage der hohen Expression von Folat Rezeptor alpha (80% d. Tumorzellen) besteht die Rationale für einen
// Therapieversuch mit Mirvetuximab Soravtansine (EL m1A; DOI: 10.1200/JCO.2022.40.16_suppl.5512 Journal of Clinical
// Oncology 40, no. 16_suppl (June 01, 2022) 5512-5512 und PMID 38055253).
Instance: mii-exa-mtb-medication-request-mirvetuximab
InstanceOf: MII_PR_MTB_Therapieempfehlung
Title: "Mirvetuximab soravtansine"
Description: "Therapieempfehlung: Mirvetuximab soravtansine, Priorität: 1, Evidenzgrad: m1A"
Usage: #example
* status = #completed
* intent = #proposal
* subject = Reference(Patient/PatientKimMusterperson)
* medicationCodeableConcept.coding = $ATC_DE#L01FX26
* insert BeschlussPrioritaet(1)
* insert BeschlussEvidenzZweiQuellen(m1A, $doi, 10.1200/JCO.2022.40.16_suppl.5512, $pmid, 38055253)

// Prio 2.1: Phase 1/2 CLDN6 CAR-T-Zell-Studie (Kohorte 2: Eierstockkrebs, PI Dr. Desuki, Mainz oder Prof. Ungerechts, Heidelberg).
// Evaluation einer CLDN6 (Claudin-6)-Expression und darauf basierend eines möglichen Einschlusses in die
// Phase 1/2 CLDN6 CAR-T-Zell-Studie (Kohorte 2: Eierstockkrebs) mit CLDN6 RNA-LPX (PI Dr. Desuki, Mainz oder
// Prof. Ungerechts, Heidelberg, NCT 04503278, erste Ergebnisse publiziert unter PMID: 37872225).
Instance: mii-exa-mtb-study-cldn6
InstanceOf: MII_PR_MTB_Studie
Title: "Phase 1/2 CLDN6 CAR-T-Zell-Studie"
Description: "Studie: Phase 1/2 CLDN6 CAR-T-Zell-Studie"
Usage: #example
* status = #draft
* identifier[+].system = $mii-ns-mtb-nct
* identifier[=].value = "04503278"

Instance: mii-exa-mtb-study-request-cldn6
InstanceOf: MII_PR_MTB_Studieneinschluss_Anfrage
Title: "Phase 1/2 CLDN6 CAR-T-Zell-Studie"
Description: "Studieneinschlussempfehlung: Phase 1/2 CLDN6 CAR-T-Zell-Studie, Priorität: 2.1"
Usage: #example
* status = #draft
* subject = Reference(Patient/PatientKimMusterperson)
* supportingInfo = Reference(mii-exa-mtb-study-cldn6)
* insert BeschlussSubPrioritaet(2.1)
* insert BeschlussEvidenzPublikation($pmid, 37872225)

// Prio 2.2: TEDOVA (NCT04713514, PI Prof. Schochter, Ulm. platin-sensibles Rezidiv (=CR, PR oder SD), nach mind. 4 Zyklen Platin im Rezidiv und HLA-A2)
// Einschluss prüfen in TEDOVA: OSE2101 (Neo-Epitop-Vakzin)+/- Pembrolizumab vs. BSC in Platin-sensitiven
// rez. Ov-CA (NCT04713514, PI Prof. Schochter, Ulm. platin-sensibles Rezidiv (=CR, PR oder SD), nach
// mind. 4 Zyklen Platin im Rezidiv und HLA-A2).
Instance: mii-exa-mtb-study-tedova
InstanceOf: MII_PR_MTB_Studie
Title: "TEDOVA"
Description: "Studie: TEDOVA - OSE2101 (Neo-Epitop-Vakzin)+/- Pembrolizumab vs. BSC in Platin-sensitiven rez. Ov-CA"
Usage: #example
* status = #draft
* identifier[+].system = $mii-ns-mtb-nct
* identifier[=].value = "04713514"

Instance: mii-exa-mtb-study-request-tedova
InstanceOf: MII_PR_MTB_Studieneinschluss_Anfrage
Title: "TEDOVA"
Description: "Studieeinschlussempfehlung: TEDOVA - OSE2101 (Neo-Epitop-Vakzin)+/- Pembrolizumab vs. BSC in Platin-sensitiven rez. Ov-CA"
Usage: #example
* status = #draft
* subject = Reference(Patient/PatientKimMusterperson)
* supportingInfo = Reference(mii-exa-mtb-study-tedova)
* insert BeschlussSubPrioritaet(2.2)

// Prio 2.3: Studie bei CCNE1 ampl. OvCA (UKF, PI Prof. Duque, ID ausstehend)
// Zudem Beachtung einer geplanten Studie bei CCNE1 ampl. OvCA (UKF, PI Prof. Duque, ID ausstehend).
Instance: mii-exa-mtb-study-ccne1
InstanceOf: MII_PR_MTB_Studie
Title: "CCNE1"
Description: "Studie: CCNE1 ampl. OvCA"
Usage: #example
* status = #draft

Instance: mii-exa-mtb-study-request-ccne1
InstanceOf: MII_PR_MTB_Studieneinschluss_Anfrage
Title: "CCNE1"
Description: "Studieneinschlussempfehlung: CCNE1 ampl. OvCA"
Usage: #example
* status = #draft
* subject = Reference(Patient/PatientKimMusterperson)
* supportingInfo = Reference(mii-exa-mtb-study-ccne1)
* insert BeschlussSubPrioritaet(2.3)

// Prio 3: Trastuzumab deruxtecan (m1B)
// Her2neu Score 2+: Bei Her2low in der immunhistochemischen Untersuchung besteht eine off-label Therapieoption mit
// Trastuzumab Deruxtecan. In einer Phase-III-Studie Trastuzumab Deruxtecan vs. Physicians choice Chemotherapyie bei
// Her2low Mamma-Cas zeigte sich ein deutlich positiver Effekt sowohl auf PFS als auch auf OS durch die Behandlung mit
// Trastuzumab deruxtecan (PMID 35665782, EL m1A). Daten aus der DESTINY-PanTumor02-Studie (Phase II), wurden auf dem
// ASCO2023 präsentiert: hier zeigt sich eine sehr gute ORR von 45% in der Kohorte für Ovarialkarzinome, wobei gemäß
// zentralem Assessment auch Score1+-Patient*innen eingeschlossen worden waren. 57% vom Patientinnen mit HER2-pos
// Endometrium Karzinom haben auf die Therapie mit Trastuzumab- Deruxtecan angesprochen
// (10.1200/JCO.2023.41.17_suppl.LBA3000, PMID: 37870536, EL m1B).
Instance: mii-exa-mtb-medication-requestion-trastuzumab-deruxtecan
InstanceOf: MII_PR_MTB_Therapieempfehlung
Title: "Trastuzumab deruxtecan"
Description: "Therapieempfehlung: Trastuzumab deruxtecan, Priorität: 3, Evidenzgrad: m1B"
Usage: #example
* status = #on-hold
* intent = #proposal
* subject = Reference(Patient/PatientKimMusterperson)
* medicationCodeableConcept.coding = $ATC_DE#L01FD04
* insert BeschlussPrioritaet(3)
* insert BeschlussEvidenzDreiQuellen(m1B, $pmid, 35665782, $pmid, 37870536, $doi, 10.1200/JCO.2023.41.17_suppl.LBA3000)

// Prio 4: Adavosertib +/- Carboplatin (m1B) sofern verfügbar
// Zudem bei CCNE1 ampl Rationale für Kombination aus WEE1-Inhibitor Adavosertib +/- Carboplatin
// (PMID: 37236033, EL m1B), Verfügbarkeit prüfen, jeweils nach Ausschöpfung der LL-Therapie.

// TODO: MII_PR_Medikation_Medication nicht möglich, da Medication.ingredient 1..*
Instance: mii-exa-mtb-medication-adavosertib
InstanceOf: Medication
Title: "Adavosertib"
Description: "Medikament: Adavosertib"
Usage: #example
* status = #draft
* code.coding = $UNII#K2T6HJX3I3
* code.text = "ADAVOSERTIB"

Instance: mii-exa-mtb-medication-request-adavosertib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Title: "Adavosertib"
Description: "Therapieempfehlung: Adavosertib"
Usage: #example
* status = #on-hold
* intent = #option
* subject = Reference(Patient/PatientKimMusterperson)
* medicationReference = Reference(mii-exa-mtb-medication-adavosertib)

Instance: mii-exa-mtb-medication-request-carboplatin
InstanceOf: MII_PR_MTB_Therapieempfehlung
Title: "Carboplatin"
Description: "Therapieempfehlung: Carboplatin"
Usage: #example
* status = #on-hold
* intent = #option
* subject = Reference(Patient/PatientKimMusterperson)
* medicationCodeableConcept.coding = $ATC_DE#L01XA02

Instance: mii-exa-mtb-request-group-adavosertib-carboplatin
InstanceOf: MII_PR_MTB_Therapieempfehlung_Kombination
Title: "Adavosertib +/- Carboplatin"
Description: "Therapieempfehlung Kombinationstherapie: Adavosertib +/- Carboplatin"
Usage: #example
* status = #on-hold
* intent = #proposal
* subject = Reference(Patient/PatientKimMusterperson)
* action.resource = Reference(mii-exa-mtb-medication-request-adavosertib)
* action.resource = Reference(mii-exa-mtb-medication-request-carboplatin)
* insert BeschlussPrioritaet(4)
* insert BeschlussEvidenz(m1B, $pmid, 37236033)

// 5. Lunresertib + Camonsertib (m1B) sofern verfügbar
// Eine Phase I-Studie mit dem first-in-class PKMYT1-Inhibitor Lunresertib und dem ATR Inhibitor Camonsertib zeigte
// erste klinische Aktivität mit ordentlichem Ansprechen (OR 23,6%, 2x cPR bei OvarialCA mit CCNE1ampl dokumentiert,
// https://www.reparerx.com/wp-content/uploads/2023/10/ANE_B156_MYTHIC-clinical_poster.pdf und
// https://doi.org/10.1158/1535-7163.TARG-23-PR008, EL m1B). Verfügbarkeit prüfen.

// TODO: MII_PR_Medikation_Medication nicht möglich, da Medication.ingredient 1..*
Instance: mii-exa-mtb-medication-lunresertib
InstanceOf: Medication
Title: "Lunresertib"
Description: "Medikament: Lunresertib"
Usage: #example
* status = #draft
* code.coding = $UNII#N95U3A7N57
* code.text = "Lunresertib"

Instance: mii-exa-mtb-medication-request-lunresertib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Title: "Lunresertib"
Description: "Therapieempfehlung: Lunresertib"
Usage: #example
* status = #on-hold
* intent = #option
* subject = Reference(Patient/PatientKimMusterperson)
* medicationReference = Reference(mii-exa-mtb-medication-lunresertib)

// TODO: MII_PR_Medikation_Medication nicht möglich, da Medication.ingredient 1..*
Instance: mii-exa-mtb-medication-camonsertib
InstanceOf: Medication
Title: "Camonsertib"
Description: "Medikament: Camonsertib"
Usage: #example
* status = #draft
* code.coding = $UNII#S1Z7Y5G56T
* code.text = "Camonsertib"

Instance: mii-exa-mtb-medication-request-camonsertib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Title: "Camonsertib"
Description: "Therapieempfehlung: Camonsertib"
Usage: #example
* status = #on-hold
* intent = #option
* subject = Reference(Patient/PatientKimMusterperson)
* medicationReference = Reference(mii-exa-mtb-medication-camonsertib)

Instance: mii-exa-mtb-request-group-lunresertib-camonsertib
InstanceOf: MII_PR_MTB_Therapieempfehlung_Kombination
Title: "Lunresertib + Camonsertib"
Description: "Therapieempfehlung Kombinationstherapie: Lunresertib + Camonsertib, Priorität: 5, Evidenzgrad: m1B"
Usage: #example
* status = #on-hold
* intent = #proposal
* subject = Reference(Patient/PatientKimMusterperson)
* action.resource = Reference(mii-exa-mtb-medication-request-lunresertib)
* action.resource = Reference(mii-exa-mtb-medication-request-camonsertib)
* insert BeschlussPrioritaet(5)
* insert BeschlussEvidenz(m1B, $doi, 10.1158/1535-7163.TARG-23-PR008)
* insert BeschlussEvidenzQuelle(https://www.reparerx.com/wp-content/uploads/2023/10/ANE_B156_MYTHIC-clinical_poster.pdf)

// 6. MEKi, z.B. Cobimetinib (m3)
// PIK3R1mut (E160*): Ausweislich präklinischer Daten liegt ein Ansprechen auf MEK-Inhibition nahe (PMID: 31209687, EL m3).
Instance: mii-exa-mtb-medication-cobimetinib
InstanceOf: Medication
Title: "Cobimetinib"
Description: "Medikament: Cobimetinib"
Usage: #example
* status = #draft
* code.coding = $UNII#ER29L26N1X
* code.text = "COBIMETINIB"

Instance: mii-exa-mtb-medication-request-cobimetinib
InstanceOf: MII_PR_MTB_Therapieempfehlung
Title: "Cobimetinib"
Description: "Therapieempfehlung: Cobimetinib, Priorität: 6, Evidenzgrad: m3"
Usage: #example
* status = #on-hold
* intent = #option
* subject = Reference(Patient/PatientKimMusterperson)
* medicationReference = Reference(mii-exa-mtb-medication-cobimetinib)
* insert BeschlussPrioritaet(6)
* insert BeschlussEvidenz(m3, $pmid, 31209687)