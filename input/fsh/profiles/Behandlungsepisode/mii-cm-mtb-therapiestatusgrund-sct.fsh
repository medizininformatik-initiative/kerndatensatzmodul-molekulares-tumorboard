Instance: mii-cm-mtb-therapiestatusgrund-sct
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ConceptMap/mii-cm-mtb-therapiestatusgrund-sct"
* name = "MII CM MTB Therapiestatusgrund SNOMED CT Mapping"
* title = "MII CM MTB Therapiestatusgrund SNOMED CT Mapping"
* status = #active
* experimental = false
* date = 2025-05-01
* description = "Mapping der Codes zur Begründung des Therapiestatus nach SNOMED CT"
* purpose = "Technische Mappings zur Transformation der Therapiestatusgründe nach SNOMED CT"

* sourceUri = $mii-vs-mtb-therapiestatusgrund
* targetUri[+] = "http://snomed.info/sct/900000000000207008/version/20250501"

* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund"
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #payment-refused
* group[=].element[=].display = "Kostenübernahme abgelehnt"
* group[=].element[=].target.code = #302179005
* group[=].element[=].target.display = "Benefit application rejected (finding)"
//* group[=].element[=].target.code = #763079000 
//* group[=].element[=].target.display = "Follow up refused"
//* group[=].element[=].target.code = #161637005
//* group[=].element[=].target.display = "Insurance refused - medical reasons (situation)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #payment-pending
* group[=].element[=].display = "Kostenübernahme noch ausstehend"
* group[=].element[=].target.code = #302178002
* group[=].element[=].target.display = "Outcome of benefit application awaited (finding)"
//* group[=].element[=].target.code = #160811003
//* group[=].element[=].target.display = "Compensation claim pending (finding)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #payment-ended
* group[=].element[=].display = "Ende der Kostenübernahme"
* group[=].element[=].target.code = #224196001
* group[=].element[=].target.display = "Benefits received (finding)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #no-indication
* group[=].element[=].display = "Klinisch keine Indikation"
* group[=].element[=].target.code = #71653005
* group[=].element[=].target.display = "No indication of (contextual qualifier) (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #medical-reasons
* group[=].element[=].display = "Medizinische Gründe"
* group[=].element[=].target.code = #373788008
* group[=].element[=].target.display = "Treatment delay - clinical reason (finding)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #patient-refusal
* group[=].element[=].display = "Therapie durch Patient abgelehnt"
* group[=].element[=].target.code = #413311005
* group[=].element[=].target.display = "Patient non-compliant - declined intervention / support (situation)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #patient-wish
* group[=].element[=].display = "Auf Wunsch des Patienten"
* group[=].element[=].target.code = #1186606009
* group[=].element[=].target.display = "Patient request observable (observable entity)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #patient-death
* group[=].element[=].display = "Tod"
* group[=].element[=].target.code = #419099009
* group[=].element[=].target.display = "Dead (finding)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #lost-to-fu
* group[=].element[=].display = "Lost to follow-up"
* group[=].element[=].target.code = #399307001 
* group[=].element[=].target.display = "Lost to follow-up (finding)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #chronic-remission
* group[=].element[=].display = "Anhaltende Remission"
* group[=].element[=].target.code = #277022003
* group[=].element[=].target.display = "Remission phase (qualifier value)"
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

* group[=].element[+].code = #other-therapy-chosen
* group[=].element[=].display = "Wahl einer anderen Therapie durch Behandler"
* group[=].element[=].target.code = #182868002
* group[=].element[=].target.display = "Treatment stopped - alternative therapy undertaken (situation)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #best-supportive-care
* group[=].element[=].display = "Best Supportive Care"
* group[=].element[=].target.code = #243114000
* group[=].element[=].target.display = "Supportive care"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #deterioration
* group[=].element[=].display = "Zustandsverschlechterung"
* group[=].element[=].target.code = #285384003
* group[=].element[=].target.display = "General health deterioration (finding)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #regular-completion
* group[=].element[=].display = "Reguläres Ende"
* group[=].element[=].target.code = #385656004
* group[=].element[=].target.display = "Ended (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #regular-completion-with-dosage-reduction
* group[=].element[=].display = "Reguläres Ende mit Dosisreduktion"
* group[=].element[=].target.code = #182822000
* group[=].element[=].target.display = "Reducing dose prescribed (situation)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #regular-completion-with-substance-change
* group[=].element[=].display = "Reguläres Ende mit Substanzwechsel"
* group[=].element[=].target.code = #417886001
* group[=].element[=].target.display = "Treatment adjusted per protocol (situation)"
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