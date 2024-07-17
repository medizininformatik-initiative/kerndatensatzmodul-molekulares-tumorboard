RuleSet: RebiopsieAuftrag
* RebiopsieAuftrag  0..* BackboneElement "Auftrag zur Rebiopsie" "Auftrag zur Rebiopsie gemäß Beschluss des Molekularen Tumorboards"
  * insert Auftrag(Begründung Auftrag Rebiopsie, Begründung für die Beauftragung einer erneuten Biopsie)

RuleSet: RebiopsieAuftragMapping
* RebiopsieAuftrag -> "ServiceRequest.where(meta.profile = $mii-pr-patho-service-request)"
  * insert AuftragMapping