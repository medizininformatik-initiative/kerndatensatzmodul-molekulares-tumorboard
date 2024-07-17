RuleSet: HumangenetischeBeratungAuftrag
* HumangenetischeBeratungAuftrag   0..1 BackboneElement     "Auftrag zur Human-genetischen Beratung"     "Auftrag zur Human-genetischen Beratung"
  * insert Auftrag(Begründung Auftrag Human-genetische-Beratung, Begründung für die Beauftragung einer erneuten Human-genetischen Beratung)

RuleSet: HumangenetischeBeratungAuftragMapping
* HumangenetischeBeratungAuftrag -> "ServiceRequest.where(meta.profile = $mii-pr-patho-service-request)"
  * insert AuftragMapping