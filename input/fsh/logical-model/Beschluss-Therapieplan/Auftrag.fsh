RuleSet: Auftrag(shortDesc, longDesc)
* Begruendung 0..1 code "{shortDesc}" "{longDesc}"
* insert Probe

RuleSet: AuftragMapping
* Begruendung       -> "ServiceRequest.where(meta.profile = $mii-pr-patho-service-request).reasonCode.valueCodeableConcept.coding.code"
* insert ProbeMapping