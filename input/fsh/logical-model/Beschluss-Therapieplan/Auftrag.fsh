RuleSet: Auftrag(shortDesc, longDesc)
* Begruendung 0..1 code "{shortDesc}" "{longDesc}"

RuleSet: AuftragMapping
* Begruendung       -> "ServiceRequest.reasonCode.valueCodeableConcept.coding.code"