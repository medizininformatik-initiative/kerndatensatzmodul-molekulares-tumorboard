RuleSet: HistologieReevaluationAuftrag
* HistologieReevaluationAuftrag    0..1 BackboneElement     "Auftrag zur Histologie-Reevaluation"   "Auftrag zur Histologie-Reevaluation gemäß Beschluss des Molekularen Tumorboards"
  * insert Auftrag(Begründung Auftrag Histologie-Reevaluation, Begründung für die Beauftragung einer erneuten Histologie-Evaluation)

RuleSet: HistologieReevaluationAuftragMapping
* HistologieReevaluationAuftrag -> "ServiceRequest.where(meta.profile = $mii-pr-patho-service-request)"
  * insert AuftragMapping