RuleSet: HistologieReevaluationAuftrag
* HistologieReevaluationAuftrag 0..1 BackboneElement "Auftrag zur Histologie-Reevaluation" "Auftrag zur Histologie-Reevaluation gemäß Beschluss des Molekularen Tumorboards"
  * Probe                       0..* Reference(Specimen) "Verweis auf Probe" "Verweis auf entnommene Probe"
  * Histologie                  0..1 Reference(DiagnosticReport) "Verweis auf Histologiebefund" "Verweis auf den Befund zur Histologie des Tumors"
  * insert Tumorzellgehalt

RuleSet: HistologieReevaluationAuftragMapping
* HistologieReevaluationAuftrag -> "ServiceRequest"
  * Probe                       -> "ServiceRequest.specimen:Reference(Specimen)"
  * Histologie                  -> "ServiceRequest.reasonReference:Reference(DiagnosticReport)"
  * insert TumorzellgehaltMapping