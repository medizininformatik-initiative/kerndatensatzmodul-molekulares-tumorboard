RuleSet: BeschlussTherapieplan
* BeschlussTherapieplan  0..* BackboneElement "Therapieplan gemäß Beschluss des Molekularen Tumorboards"
  * Erstellungsdatum     0..1 dateTime        "Erstellungsdatum"      "Erstellungsdatum des Therapieplans gemäß Beschluss des Molekularen Tumorboards"
  * Protokollauszug      0..1 string          "Protokollauszug"       "Protokollauszug aus dem Beschluss des Molekularen Tumorboards"
  // TODO: Neues CodeSystem für Statusgrund erstellen
  * StatusBegruendung    0..1 code            "Status Begründung"     "Erforderliche Begründung für den Fall, dass der Beschluss keine Therapieempfehlungen enthält"      // TODO: Auf welchen Status wird sich genau bezogen? Ein Status Attribut ist nicht vorgesehen.
  * insert Therapieempfehlungen
  * insert RebiopsieAuftrag
  * insert HumangenetischeBeratungAuftrag
  * insert HistologieReevaluationAuftrag
  * insert Studieneinschlussempfehlungen

RuleSet: BeschlussTherapieplanMapping
// TODO: Neues Profil zur Darstellung des Therapieplans
* BeschlussTherapieplan  -> "CarePlan"
  * Erstellungsdatum     -> "CarePlan.created"
  * Protokollauszug      -> "CarePlan.description"
  * StatusBegruendung    -> "CarePlan.activity.detail.statusReason.valueCodeableConcept.coding.code"
  * insert TherapieempfehlungenMapping
  * insert RebiopsieAuftragMapping
  * insert HumangenetischeBeratungAuftragMapping
  * insert HistologieReevaluationAuftragMapping
  * insert StudieneinschlussempfehlungenMapping