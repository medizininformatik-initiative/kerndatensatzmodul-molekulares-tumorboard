RuleSet: RebiopsieAuftrag
* RebiopsieAuftrag  0..* BackboneElement "Auftrag zur Rebiopsie" "Auftrag zur Rebiopsie gemäß Beschluss des Molekularen Tumorboards"
  * insert AuftragMitProbe(Begründung Auftrag Rebiopsie, Begründung für die Beauftragung einer erneuten Biopsie)

RuleSet: RebiopsieAuftragMapping
* RebiopsieAuftrag -> "ServiceRequest"
  * insert AuftragMitProbeMapping