RuleSet: RebiopsieAuftrag
* RebiopsieAuftrag  0..* BackboneElement "Auftrag zur Rebiopsie" "Auftrag zur Rebiopsie gemäß Beschluss des Molekularen Tumorboards"
  * Probe                       0..* Reference(Specimen) "Verweis auf Probe" "Verweis auf entnommene Probe"
  * Histologie                  0..1 Reference(DiagnosticReport) "Verweis auf Histologiebefund" "Verweis auf den Befund zur Histologie des Tumors"
  * insert Tumorzellgehalt

RuleSet: RebiopsieAuftragMapping
* RebiopsieAuftrag -> "ServiceRequest"
  * Probe                       -> "ServiceRequest.specimen:Reference(Specimen)"
  * Histologie                  -> "ServiceRequest.reasonReference:Reference(DiagnosticReport)"
  * insert TumorzellgehaltMapping