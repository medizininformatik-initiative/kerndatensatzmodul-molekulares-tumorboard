RuleSet: Therapieempfehlungen
* Therapieempfehlungen              0..* BackboneElement "Therapieempfehlungen gemäß Beschluss des Molekularen Tumorboards"
  // NOTE: Referenz auf Patho.-Finding oder MolGen.-Variante
  * StuetzendeMolekularAlterationen 0..* Reference(Observation)       "Stützende molekulare Alteration(en)" "Verweis auf entsprechendes Feld in NGS Bericht und/oder IHC (Verweis auf KDS Molekular-Pathologischer Befundbericht)"
  * StuetzendeEntitaet              0..* Reference(Condition)         "Stützende Entität"                   "Verweis auf die Tumorentität, falls Therapie- oder Studieneinschlussempfehlung nicht aufgrund einer molekularen Alteration geschieht"
  * Wirkstoffe                      0..* Reference(Medication)        "Wirkstoffe"                          "Empfohlene Wirkstoffe zur Therapie"
  // NOTE: Ganzzahlangabe ohne Interpretation explizit gewünscht (kein CodeSystem); 1 - hohe Priorität
  * Prioritaet                      0..1 positiveInt                  "Priorität"                           "Priorität der (einzelnen) Therapieempfehlung"
  * insert EvidenzLevel
  * insert Studieneinschlussempfehlungen

RuleSet: TherapieempfehlungenMapping
// NOTE: Referenz von CarePlan.activity.reference(MedicationRequest)
* Therapieempfehlungen              -> "MedicationRequest"
  * StuetzendeMolekularAlterationen -> "MedicationRequest.supportingInformation[StuetzendeMolekulareAlteration]"
  * StuetzendeEntitaet              -> "MedicationRequest.supportingInformation[StuetzendeEntitaet]"
  * Wirkstoffe                      -> "MedicationRequest.medicationReference(Medication)"
  * Prioritaet                      -> "MedicationRequest.extension(Prioritaet)"
  * insert EvidenzLevelMapping
  * insert StudieneinschlussempfehlungenMapping