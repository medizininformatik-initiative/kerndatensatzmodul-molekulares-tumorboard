// TODO: In nächster Version sollte nachfolgendes ggf. in Modul Forschungsvorhaben umziehen
Alias: $mii-ns-mtb-nct = https://www.medizininformatik-initiative.de/fhir/modul-mtb/sid/nct
Alias: $mii-ns-studie-drks = https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/drks
Alias: $mii-ns-studie-eudract = https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/eudract

Instance: mii-ns-mtb-nct
InstanceOf: NamingSystem
Usage: #definition
Title: "MII NS MTB NCT"
Description: "NamingSystem für Identifikatoren des Nationalen Centrums für Tumorerkrankungen (NCT)"
* name = "MII_NS_MTB_NCT"
* status = #draft
* kind = #identifier
* date = "2024-07-19"
* uniqueId[+].type = #uri
* uniqueId[=].value = $mii-ns-mtb-nct
* uniqueId[=].preferred = true

// NOTE: Im Modul Forschungsvorhaben IG aufgeführt, aber nicht als NamingSystem definiert
Instance: mii-ns-studie-drks
InstanceOf: NamingSystem
Usage: #definition
Title: "MII NS Studie DRKS"
Description: "NamingSystem für Identifikatoren des Deutschen Register Klinischer Studien (DRKS)"
* name = "MII_NS_Studie_DRKS"
* status = #draft
* kind = #identifier
* date = "2024-07-19"
* uniqueId[+].type = #uri
* uniqueId[=].value = $mii-ns-studie-drks
* uniqueId[=].preferred = true

// NOTE: Im Modul Forschungsvorhaben IG aufgeführt, aber nicht als NamingSystem definiert
Instance: mii-ns-studie-eudract
InstanceOf: NamingSystem
Usage: #definition
Title: "MII NS Studie EudraCT"
Description: "NamingSystem für Identifikatoren der European Union Drug Regulating Authorities Clinical Trials (EudraCT)"
* name = "MII_NS_Studie_EudraCT"
* status = #draft
* kind = #identifier
* date = "2024-07-19"
* uniqueId[+].type = #uri
* uniqueId[=].value = $mii-ns-studie-eudract
* uniqueId[=].preferred = true