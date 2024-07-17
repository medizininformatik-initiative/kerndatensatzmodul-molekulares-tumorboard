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
// TODO: Neues Profil zur Darstellung der Therapieempfehlung
// NOTE: Referenz von CarePlan.activity.reference(MedicationRequest)
* Therapieempfehlungen              -> "MedicationRequest.where(meta.profile = $mii-pr-medikation-medication-request)"
  * StuetzendeMolekularAlterationen -> "MedicationRequest.where(meta.profile = $mii-pr-medikation-medication-request).supportingInformation[StuetzendeMolekulareAlteration]"
  * StuetzendeEntitaet              -> "MedicationRequest.where(meta.profile = $mii-pr-medikation-medication-request).supportingInformation[StuetzendeEntitaet]"
  * Wirkstoffe                      -> "MedicationRequest.where(meta.profile = $mii-pr-medikation-medication-request).medicationReference"
  * Prioritaet                      -> "MedicationRequest.where(meta.profile = $mii-pr-medikation-medication-request).extension(Prioritaet)"
  * insert EvidenzLevelMapping
  * insert StudieneinschlussempfehlungenMapping

// NOTE: Alternative wäre CarePlan anstatt MedicationRequest denkbar
//* Therapieempfehlungen              -> "CarePlan"
//  * StuetzendeMolekularAlterationen -> "CarePlan.supportingInfo[StuetzendeMolekulareAlteration]"
//  * StuetzendeEntitaet              -> "CarePlan.supportingInfo[StuetzendeEntitaet]"
//  // NOTE: Alternative wäre CarePlan.activity.detail.productReference:Reference(Medication)
//  * Wirkstoffe                      -> "CarePlan.activity.reference"
//  * Prioritaet                      -> "CarePlan.activity.extension(Prioritaet)"