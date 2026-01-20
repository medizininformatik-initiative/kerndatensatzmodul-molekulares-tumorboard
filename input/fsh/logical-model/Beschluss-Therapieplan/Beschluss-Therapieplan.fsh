RuleSet: BeschlussTherapieplan
* BeschlussTherapieplan           0..1 BackboneElement "Therapieplan gemäß Beschluss des Molekularen Tumorboards"
  * Erstellungsdatum              1..1 dateTime "Erstellungsdatum" "Erstellungsdatum des Therapieplans gemäß Beschluss des Molekularen Tumorboards"
  * Protokollauszug               0..1 string "Protokollauszug" "Protokollauszug aus dem Beschluss des Molekularen Tumorboards"
  * StatusBegruendung             0..1 code "Status Begründung" "Erforderliche Begründung für den Fall, dass der Beschluss keine Therapieempfehlungen enthält"
  * UmgesetzteEmpfehlung          0..* Reference(Consent or DiagnosticReport or MedicationStatement or Observation or Procedure) "Verweis auf umgesetzte Empfehlungen" "Verweis auf Dokumentation einer umgesetzten Empfehlung"
  * Behandlungsepisode            0..1 Reference(ClinicalImpression) "Verweis auf Behandlungsepisode" "Verweis auf Behandlungsepisode mit Angaben zum aktuellen Krankheitszustand und bisherige Behandlungsmaßnahmen"
  * insert Therapieempfehlungen
  * insert Studieneinschlussempfehlung
  * insert HumangenetischeBeratungAuftrag
  * insert HistologieReevaluationAuftrag
  * insert RebiopsieAuftrag

RuleSet: BeschlussTherapieplanMapping
* BeschlussTherapieplan         -> "CarePlan"
  * Erstellungsdatum            -> "CarePlan.created"
  * Protokollauszug             -> "CarePlan.description"
  * StatusBegruendung           -> "CarePlan.activity.detail.statusReason.valueCodeableConcept.coding.code"
  * UmgesetzteEmpfehlung        -> "CarePlan.activity.outcomeReference:Reference(Consent or DiagnosticReport or MedicationStatement or Observation or Procedure)"
  * Behandlungsepisode          -> "CarePlan.supportingInfo:Reference(ClinicalImpression)"
  * insert TherapieempfehlungenMapping
  * insert StudieneinschlussempfehlungMapping
  * insert HumangenetischeBeratungAuftragMapping
  * insert HistologieReevaluationAuftragMapping
  * insert RebiopsieAuftragMapping