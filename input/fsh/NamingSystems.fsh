// NOTE: Ggf. temporäre Aliasse, deshalb hier definiert
Alias: $mii-ns-onko-nct = https://www.medizininformatik-initiative.de/fhir/modul-onko/sid/nct
Alias: $mii-ns-studie-drks = https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/drks
Alias: $mii-ns-studie-eudract = https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/eudract

// NOTE: Nicht als OID beim BfArM registriert, siehe https://www.bfarm.de/EN/Code-systems/Services/OID-registry/_node.html
// TODO: Wie verfahren wir weiter mit der fehlenden Registrierung und der Modulzuordnung?
// TODO: Metadaten zum NamingSystem ggf. vervollständigen
Instance: mii-ns-onko-nct
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem für Identifikatoren des Nationalen Centrums für Tumorerkrankungen (NCT)"
* name = "mii-ns-onko-nct"
* status = #draft
* kind = #identifier
* date = "2024-07-19"
* uniqueId[+].type = #uri
* uniqueId[=].value = $mii-ns-onko-nct
* uniqueId[=].preferred = true

// NOTE: Im MII Studien-Modul IG bereits erwähnt, nicht aber definiert, siehe https://simplifier.net/guide/medizininformatikinitiative-modulstudie-implementationguide/ImplementationGuide-1.x-TechnischeImplementierung-ResearchStudy-1.x?version=current
// NOTE: Nicht als OID beim BfArM registriert, siehe https://www.bfarm.de/EN/Code-systems/Services/OID-registry/_node.html
// TODO: Wie verfahren wir weiter mit der fehlenden Registrierung und der Modulzuordnung?
// TODO: Metadaten zum NamingSystem ggf. vervollständigen
Instance: mii-ns-studie-drks
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem für Identifikatoren des Deutschen Register Klinischer Studien (DRKS)"
* name = "mii-ns-studie-drks"
* status = #draft
* kind = #identifier
* date = "2024-07-19"
* uniqueId[+].type = #uri
* uniqueId[=].value = $mii-ns-studie-drks
* uniqueId[=].preferred = true

// NOTE: Im MII Studien-Modul IG bereits erwähnt, nicht aber definiert, siehe https://simplifier.net/guide/medizininformatikinitiative-modulstudie-implementationguide/ImplementationGuide-1.x-TechnischeImplementierung-ResearchStudy-1.x?version=current
// NOTE: Nicht als OID beim BfArM registriert, siehe https://www.bfarm.de/EN/Code-systems/Services/OID-registry/_node.html
// TODO: Wie verfahren wir weiter mit der fehlenden Registrierung und der Modulzuordnung?
// TODO: Metadaten zum NamingSystem ggf. vervollständigen
Instance: mii-ns-studie-eudract
InstanceOf: NamingSystem
Usage: #definition
Title: "NamingSystem für Identifikatoren der European Union Drug Regulating Authorities Clinical Trials (EudraCT)"
* name = "mii-ns-studie-eudract"
* status = #draft
* kind = #identifier
* date = "2024-07-19"
* uniqueId[+].type = #uri
* uniqueId[=].value = $mii-ns-studie-eudract
* uniqueId[=].preferred = true