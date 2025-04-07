Instance: MolekularesTumorboardSession-1
InstanceOf: MII_PR_MTB_Therapieplan
* status = #completed
* intent = #plan
* title = "20.01.2023 Molekulares Tumorboard:"
* subject = Reference(Patient/KimMusterperson)
* created = 2023-01-20
* description = "1. Vorstellungsgrund: absehbare Ausschöpfung der leitliniengerechten Therapie
2. Die MTB-Aufklärung vom 02.01.2025 liegt vor.
3. Durchführung molekulare Diagnostik via SOP Ovar (inkl. IHC für Her2neu, Folat-Ra, Trop2) aus aktuellster Histologie (Aszitespunktion Z 230201/23) sowie TSO500 Panelsequenzierung inkl. HLA-Status.
4. Studiencheck (inkl. QuickQueck Suche): Evaluation einer CLDN6 (Claudin-6)-Expression und darauf basierend eines möglichen Einschlusses in die Phase 1/2 CLDN6 CAR-T-Zell-Studie (Kohorte 2: Eierstockkrebs) mit CLDN6 RNA-LPX (PI Dr. Desuki, Mainz oder Prof. Ungerechts, Heidelberg, NCT 04503278, erste Ergebnisse publiziert unter PMID: 37872225 ). Einschluss prüfen in TEDOVA: OSE2101 (Neo-Epitop-Vakzin)+/- Pembrolizumab vs. BSC in Platin-sensitiven rez. Ov-CA (NCT04713514, PI Prof. Schochter, Ulm. platin-sensibles Rezidiv (=CR, PR oder SD), nach mind. 4 Zyklen Platin im Rezidiv und HLA-A2). 
5. Wiedervorstellung nach Eingang der Befunde.
"
* activity[Studieneinschlussempfehlung].reference = Reference(mii-exa-mtb-study-request-cldn6)
* activity[Studieneinschlussempfehlung].detail.code = $mii-cs-onko-therapie-typ#SO "Sonstiges"
* activity[Studieneinschlussempfehlung].detail.status = #not-started
* activity[Studieneinschlussempfehlung].reference = Reference(mii-exa-mtb-study-request-tedova)
* activity[Studieneinschlussempfehlung].detail.code = $mii-cs-onko-therapie-typ#SO "Sonstiges"
* activity[Studieneinschlussempfehlung].detail.status = #not-started
* category.coding.code = $SCT#367531000000102 "Disease management" // Platzhalter
* category.text = "Molekulares Tumorboard"
* note.text = "Vorstellungsgrund: absehbare Ausschöpfung der leitliniengerechten Therapie"

// 2. Die MTB-Aufklärung vom 02.01.2025 liegt vor.
Instance: MolekularesTumorboardAufklaerung-1
InstanceOf: Consent
* status = #active
* scope.coding = $LNC#LP173034-2 "Tumor board"
* category.coding = #INFA "Information access"
* provision.data.reference = Reference(MolekularesTumorboardSession-1)
* provision.data.meaning = #dependents


