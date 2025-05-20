Instance: mii-cm-mtb-therapiestatusgrund-obds
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ConceptMap/mii-cm-mtb-therapiestatusgrund-obds"
* name = "MII CM MTB Therapiestatusgrund oBDS Mapping"
* title = "MII CM MTB Therapiestatusgrund oBDS Mapping"
* status = #active
* experimental = false
* date = 2025-05-01
* description = "Mapping der Codes zur Begründung des Therapiestatus nach oBDS"
* purpose = "Technische Mappings zur Transformation der Therapiestatusgründe nach oBDS"

* sourceUri = $mii-vs-mtb-therapiestatusgrund
* targetUri[+] = "https://basisdatensatz.de"

* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-therapiestatusgrund"
* group[=].target = "https://basisdatensatz.de"

* group[=].element[+].code = #patient-refusal
* group[=].element[=].display = "Therapie durch Patient abgelehnt"
* group[=].element[=].target.code = #V
* group[=].element[=].target.display = "Patient verweigert weitere Therapie"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #patient-death
* group[=].element[=].display = "Tod"
* group[=].element[=].target.code = #T
* group[=].element[=].target.display = "Patient verstorben"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #chronic-remission
* group[=].element[=].display = "Anhaltende Remission"
* group[=].element[=].target.code = #S
* group[=].element[=].target.display = "Abbruch aus sonstigen Gründen"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #progression
* group[=].element[=].display = "Progression"
* group[=].element[=].target.code = #P
* group[=].element[=].target.display = "Abbruch wegen Progress"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #toxicity
* group[=].element[=].display = "Toxizität"
* group[=].element[=].target.code = #A
* group[=].element[=].target.display = "Abbruch wegen Nebenwirkungen"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #deterioration
* group[=].element[=].display = "Zustandsverschlechterung"
* group[=].element[=].target.code = #S
* group[=].element[=].target.display = "Abbruch aus sonstigen Gründen"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #regular-completion
* group[=].element[=].display = "Reguläres Ende"
* group[=].element[=].target.code = #E
* group[=].element[=].target.display = "reguläres Ende"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #regular-completion-with-dosage-reduction
* group[=].element[=].display = "Reguläres Ende mit Dosisreduktion"
* group[=].element[=].target.code = #R
* group[=].element[=].target.display = "reguläres Ende mit Dosisreduktion"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #regular-completion-with-substance-change
* group[=].element[=].display = "Reguläres Ende mit Substanzwechsel"
* group[=].element[=].target.code = #W
* group[=].element[=].target.display = "reguläres Ende mit Substanzwechsel"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #other
* group[=].element[=].display = "Weitere Gründe"
* group[=].element[=].target.code = #S
* group[=].element[=].target.display = "Abbruch aus sonstigen Gründen"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].unmapped.mode = #fixed
* group[=].unmapped.code = #U
* group[=].unmapped.display = "unbekannt"