RuleSet: HumangenetischeBeratungAuftrag
* HumangenetischeBeratungAuftrag  0..1 BackboneElement "Auftrag zur Human-genetischen Beratung" "Auftrag zur Human-genetischen Beratung"
  * Probe                         0..* Reference(Specimen) "Verweis auf Probe" "Verweis auf entnommene Probe"
  * Begruendung                   0..1 code "Begründung Auftrag Human-genetische-Beratung" "Begründung für die Beauftragung einer erneuten Human-genetischen Beratung"

RuleSet: HumangenetischeBeratungAuftragMapping
* HumangenetischeBeratungAuftrag  -> "ServiceRequest"
  * Probe                         -> "ServiceRequest.specimen:Reference(Specimen)"
  * Begruendung                   -> "ServiceRequest.reasonCode.valueCodeableConcept.coding.code"