RuleSet: BeschlussTherapieplan
* BeschlussTherapieplan            1..1 BackboneElement "Therapieplan gemäß Beschluss des Molekularen Tumorboards"
  * Erstellungsdatum               0..1 dateTime        "Erstellungsdatum"      "Erstellungsdatum des Therapieplans gemäß Beschluss des Molekularen Tumorboards"
  * Protokollauszug                0..1 string          "Protokollauszug"       "Protokollauszug aus dem Beschluss des Molekularen Tumorboards"
  * StatusBegruendung              0..1 code            "Status"                "Begründung des Status"
  * insert Therapieempfehlungen
  * insert RebiopsieAuftrag
  * insert HumangenetischeBeratungAuftrag
  * insert HistologieReevaluationAuftrag

RuleSet: BeschlussTherapieplanMapping
* BeschlussTherapieplan  -> "ClinicalImpression"
  * Erstellungsdatum     -> "ClinicalImpression.date"
  * Protokollauszug      -> "ClinicalImpression.summary"
  * StatusBegruendung    -> "ClinicalImpression.valueCodeableConcept.coding.code"