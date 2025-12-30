Profile: MII_PR_MTB_Antwort_Kostenuebernahme
Parent: ClaimResponse
Id: mii-pr-mtb-antwort-kostenuebernahme
Title: "MII PR MTB Anwort Kostenuebernahme"
Description: "Antwort auf Antrag Kostenübernahme"
* insert PR_Header

* status MS
* status = #active
* status ^short = "Status der FHIR-Ressource"
* status ^definition = "Status der FHIR-Ressource, statisch auf #active gesetzt, da retrospektive Datenerschließung"
* insert Translation(status ^short, de-DE, Status der FHIR-Ressource)
* insert Translation(status ^definition, de-DE, Status der FHIR-Ressource - statisch auf #active gesetzt da retrospektive Datenerschliessung)
* insert Translation(status ^short, en, FHIR Resource Status)
* insert Translation(status ^definition, en, Status of the FHIR resource - statically set to #active due to retrospective data acquisition)

* type MS
* type from MII_VS_MTB_Antrag_Kostenuebernahme_Type
* type ^short = "Kategorie des Antragstellers"
* type ^definition = "Kategorie des Antragstellers - z.B. stationär, ambulant, Apotheke"
* insert Translation(type ^short, de-DE, Kategorie des Antragstellers)
* insert Translation(type ^definition, de-DE, Kategorie des Antragstellers - z.B. stationaer - ambulant - Apotheke)
* insert Translation(type ^short, en, Applicant Category)
* insert Translation(type ^definition, en, Category of the applicant - e.g. inpatient - outpatient - pharmacy)
* use MS
* use ^short = "Art des Kostenerstattungsantrags (claim, predetermination, preauthorization)"
* use ^definition = "folgt den Definitionen wie im amerikanischen Gesundsheitswesen gebräuchlich. claim: Erstattungsantrag nach erfolgter Therapie; predetermination: unverbindliche Anfrage, insb. zu Anteilen der Kostenübernahme;  preauthorization: Anfrage nach möglicher Erstattung für zukünftige Therapie"
* insert Translation(use ^short, de-DE, Art des Kostenerstattungsantrags - claim oder predetermination oder preauthorization)
* insert Translation(use ^definition, de-DE, folgt den Definitionen wie im amerikanischen Gesundsheitswesen gebraeuchlich. claim: Erstattungsantrag nach erfolgter Therapie; predetermination: unverbindliche Anfrage insb. zu Anteilen der Kostenuebernahme; preauthorization: Anfrage nach moeglicher Erstattung fuer zukuenftige Therapie)
* insert Translation(use ^short, en, Type of cost reimbursement application - claim or predetermination or preauthorization)
* insert Translation(use ^definition, en, Follows definitions common in the American healthcare system. claim: reimbursement request after therapy; predetermination: non-binding inquiry esp. regarding coverage portions; preauthorization: inquiry about possible reimbursement for future therapy)
* patient MS
// * patient only Reference(MII_Patient)
* created MS
* created ^short = "Datum der Zusage / des Widerspruchs"
* insert Translation(created ^short, de-DE, Datum der Zusage / des Widerspruchs)
* insert Translation(created ^short, en, Date of approval / objection)

* insurer MS
* request MS
* request ^short = "Antrag"
* request ^definition = "Dazugehöriger Antrag zur Kostenübernahme"
* insert Translation(request ^short, de-DE, Antrag)
* insert Translation(request ^definition, de-DE, Dazugehoeriger Antrag zur Kostenuebernahme)
* insert Translation(request ^short, en, Application)
* insert Translation(request ^definition, en, Associated cost coverage application)
* request only Reference(MII_PR_MTB_Antrag_Kostenuebernahme)
* outcome MS
* outcome = http://hl7.org/fhir/remittance-outcome#complete
* outcome ^short = "Ergebnis der Kostenübernahme"
* outcome ^definition = "Ergebnis der Kostenübernahme. Für den Fall der Sekundärdatenenutzung ist davon auszugehen, dass die Kostenerstattung bereits erfolgt ist. Daher ist der Status auf #complete gesetzt."
* insert Translation(outcome ^short, de-DE, Ergebnis der Kostenuebernahme)
* insert Translation(outcome ^definition, de-DE, Ergebnis der Kostenuebernahme. Fuer den Fall der Sekundaerdatennutzung ist davon auszugehen dass die Kostenerstattung bereits erfolgt ist. Daher ist der Status auf #complete gesetzt.)
* insert Translation(outcome ^short, en, Cost Coverage Outcome)
* insert Translation(outcome ^definition, en, Cost coverage outcome. For secondary data use it is assumed that cost reimbursement has already occurred. Therefore the status is set to #complete.)

* extension MS
* extension contains 
    MII_EX_MTB_Antwort_Kostenuebernahme_Entscheidung named Entscheidung 0..1 MS and
    MII_EX_MTB_Antwort_Kostenuebernahme_Ablehnungsgrund named Ablehnungsgrund 0..1

* extension[Entscheidung] ^short = "Entscheidung"
* extension[Entscheidung] ^definition = "Stadium der Antwort auf den Antrag zur Kostenuebernahme"
* insert Translation(extension[Entscheidung] ^short, de-DE, Entscheidung)
* insert Translation(extension[Entscheidung] ^definition, de-DE, Stadium der Antwort auf den Antrag zur Kostenuebernahme)
* insert Translation(extension[Entscheidung] ^short, en, Decision)
* insert Translation(extension[Entscheidung] ^definition, en, Stage of the response to the cost coverage application)
* extension[Ablehnungsgrund] ^short = "Ablehnungsgrund"
* extension[Ablehnungsgrund] ^definition = "Stadium der Antwort auf den Antrag zur Kostenuebernahme"
* insert Translation(extension[Ablehnungsgrund] ^short, de-DE, Ablehnungsgrund)
* insert Translation(extension[Ablehnungsgrund] ^definition, de-DE, Stadium der Antwort auf den Antrag zur Kostenuebernahme)
* insert Translation(extension[Ablehnungsgrund] ^short, en, Reason for Rejection)
* insert Translation(extension[Ablehnungsgrund] ^definition, en, Stage of the response to the cost coverage application)
