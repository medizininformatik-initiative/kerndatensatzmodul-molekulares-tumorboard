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
// Das hier ist eigentlich das DIAGNOSTISCHE MTB. 


* category.coding.code = $SCT#12345678 // Platzhalter
* category.text = "Molekulares Tumorboard"
* activity[+].reference = Reference(ServiceRequest/mii-exa-mtb-service-request-patho-sop-ovar)
* activity[=].detail.code.coding.code = $SCT#12345678 // Platzhalter
* activity[=].detail.code.coding.display = "Molekulare Diagnostik SOP Ovar inkl. IHC Her2ne, Folar-Ra, Trop2"
* activity[=].detail.status = #completed
* activity[=].reference = Reference(ServiceRequest/mii-exa-mtb-service-request-TSO500-panel)
* activity[=].detail.code.coding.code = $SCT#12345678 // Platzhalter
* activity[=].detail.code.coding.display = "TSO500 Panel incl. HLA-Status"
* activity[=].detail.status = #completed
/* Das ist so nicht 100% richtig. Formal wird erst die Claudin-6 Expression bestimmt und je nachdem die Studie empfohlen. Wird im 2. MTB mit dem Therapieplan nochmal aufgegriffen
* activity[Studieneinschlussempfehlung].reference = Reference(mii-exa-mtb-study-request-cldn6)
* activity[Studieneinschlussempfehlung].detail.code.coding.code = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ#SO
* activity[Studieneinschlussempfehlung].detail.status = #not-started
*/

Instance: MII-EXA-MTB-Molekulare-Diagnostik-SOP-Ovar
InstanceOf: ServiceRequest // eigentlich MolGen Service Request
* status = #completed
* intent = #order
* subject = Reference(Patient/KimMusterperson)
* authoredOn = 2023-01-20

