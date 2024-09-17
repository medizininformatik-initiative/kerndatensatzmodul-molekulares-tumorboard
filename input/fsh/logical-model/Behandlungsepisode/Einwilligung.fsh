RuleSet: Einwilligung
* Einwilligung      1..1      BackboneElement     "Einwilligung"           "Einwilligung zum Molekularen Tumorboard"
  * Status          1..1      code                "Status Einwilligung"    "Status der Einwilligung zum Molekularen Tumorboard"

RuleSet: EinwilligungMapping
* Einwilligung      -> "Consent"
  // TODO: Nur active/rejected gewünscht
  * Status          -> "Consent.status"