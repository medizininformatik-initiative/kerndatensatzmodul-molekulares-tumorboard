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

* type MS
* type from MII_VS_MTB_Antrag_Kostenuebernahme_Type
* type ^short = "Kategorie des Antragstellers" 
* type ^definition = "Kategorie des Antragstellers - z.B. stationär, ambulant, Apotheke"
* use MS
* use ^short = "Art des Kostenerstattungsantrags (claim, predetermination, preauthorization)"
* use ^definition = "folgt den Definitionen wie im amerikanischen Gesundsheitswesen gebräuchlich. claim: Erstattungsantrag nach erfolgter Therapie; predetermination: unverbindliche Anfrage, insb. zu Anteilen der Kostenübernahme;  preauthorization: Anfrage nach möglicher Erstattung für zukünftige Therapie"
* patient MS
// * patient only Reference(MII_Patient)
* created MS
* created ^short = "Datum der Zusage / des Widerspruchs"

* insurer MS
* request MS
* request ^short = "Antrag"
* request ^definition = "Dazugehöriger Antrag zur Kostenübernahme"
* request only Reference(MII_PR_MTB_Antrag_Kostenuebernahme)
* outcome MS
* outcome = http://hl7.org/fhir/remittance-outcome#complete

* extension contains 
    MII_EX_MTB_Antwort_Kostenuebernahme_Entscheidung named Entscheidung 0..1 MS and
    MII_EX_MTB_Antwort_Kostenuebernahme_Ablehnungsgrund named Ablehnungsgrund 0..1

* extension[Entscheidung] ^short = "Entscheidung"
* extension[Entscheidung] ^definition = "Stadium der Antwort auf den Antrag zur Kostenuebernahme"
* extension[Ablehnungsgrund] ^short = "Ablehnungsgrund"
* extension[Ablehnungsgrund] ^definition = "Stadium der Antwort auf den Antrag zur Kostenuebernahme"
