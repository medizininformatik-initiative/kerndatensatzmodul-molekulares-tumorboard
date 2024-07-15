RuleSet: BeschlussTherapieplan
* BeschlussTherapieplan  0..* BackboneElement "Therapieplan gemäß Beschluss des Molekularen Tumorboards"
  * Erstellungsdatum     0..1 dateTime        "Erstellungsdatum"      "Erstellungsdatum des Therapieplans gemäß Beschluss des Molekularen Tumorboards"
  * Protokollauszug      0..1 string          "Protokollauszug"       "Protokollauszug aus dem Beschluss des Molekularen Tumorboards"
  * Begruendung          0..1 string          "Begründung"            "Erforderliche Begründung für den Fall, dass der Beschluss keine Therapieempfehlungen enthält"      // TODO: Auf welchen Status wird sich genau bezogen? Ein Status Attribut ist nicht vorgesehen.
  * insert Therapieempfehlungen
  * insert RebiopsieAuftrag
  * insert HumangenetischeBeratungAuftrag
  * insert HistologieReevaluationAuftrag

RuleSet: BeschlussTherapieplanMapping
// TODO: Mapping überprüfen
* BeschlussTherapieplan  -> "ClinicalImpression"
  * Erstellungsdatum     -> "ClinicalImpression.date"
  * Protokollauszug      -> "ClinicalImpression.summary"
  * Begruendung          -> "ClinicalImpression.valueCodeableConcept.coding.code"
// TODO: * insert TherapieempfehlungenMapping
  * insert RebiopsieAuftragMapping
  * insert HumangenetischeBeratungAuftragMapping
  * insert HistologieReevaluationAuftragMapping