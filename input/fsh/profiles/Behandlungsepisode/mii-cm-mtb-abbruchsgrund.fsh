Instance: mii-cm-mtb-abbruchsgrund
InstanceOf: ConceptMap
Usage: #definition
* insert CM_Header($mii-cm-mtb-abbruchsgrund, MTB, 2025-01-14, Abbruchsgrund Systemische Therapie, SNOMED-CT)

* sourceUri = $mii-cs-mtb-abbruchsgrund
* targetUri[+] = $SCT

* group[+].target = $SCT
* group[=].element[+].code = #patient-wish
* group[=].element[=].display = "Auf Wunsch des Patienten"
* group[=].element[=].target.code = #1186606009
* group[=].element[=].target.display = "Patient request observable (observable entity)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #progression
* group[=].element[=].display = "Progression"
* group[=].element[=].target.code = #419835002
* group[=].element[=].target.display = "Tumor progression (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #toxicity
* group[=].element[=].display = "Toxizität"
* group[=].element[=].target.code = #75478009
* group[=].element[=].target.display = "Toxicity"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #deterioration
* group[=].element[=].display = "Zustandsverschlechterung"
* group[=].element[=].target.code = #285384003
* group[=].element[=].target.display = "General health deterioration (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #chronic-remission
* group[=].element[=].display = "Anhaltende Remission"
* group[=].element[=].target.code = #277022003
* group[=].element[=].target.display = "Remission phase (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #other
* group[=].element[=].display = "Weitere Gründe"
* group[=].element[=].target.code = #74964007
* group[=].element[=].target.display = "Other (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #unknown
* group[=].element[=].display = "Unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent