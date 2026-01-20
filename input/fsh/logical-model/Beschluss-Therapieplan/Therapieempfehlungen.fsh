RuleSet: Therapieempfehlungen
* Therapieempfehlungen              0..* BackboneElement "Therapieempfehlungen gemäß Beschluss des Molekularen Tumorboards"
  * StuetzendeMolekularAlterationen 0..* Reference(Observation)       "Stützende molekulare Alteration(en)" "Verweis auf entsprechendes Feld in NGS Bericht und/oder IHC (Verweis auf KDS Molekular-Pathologischer Befundbericht)"
  * StuetzendeEntitaet              0..* Reference(Condition)         "Stützende Entität"                   "Verweis auf die Tumorentität, falls Therapie- oder Studieneinschlussempfehlung nicht aufgrund einer molekularen Alteration geschieht"
  * Wirkstoffe                      0..* Reference(Medication)        "Wirkstoffe"                          "Empfohlene Wirkstoffe zur Therapie"
  * Prioritaet                      0..1 positiveInt                  "Priorität"                           "Priorität der (einzelnen) Therapieempfehlung"
  * insert EvidenzLevel

RuleSet: TherapieempfehlungenMapping
* Therapieempfehlungen              -> "MedicationRequest"
  * StuetzendeMolekularAlterationen -> "MedicationRequest.reasonReference:Reference(Observation)"
  * StuetzendeEntitaet              -> "MedicationRequest.reasonReference:Reference(Condition)"
  * Wirkstoffe                      -> "MedicationRequest.medicationReference(Medication)"
  * Prioritaet                      -> "MedicationRequest.extension(Prioritaet)"
  * insert EvidenzLevelMapping