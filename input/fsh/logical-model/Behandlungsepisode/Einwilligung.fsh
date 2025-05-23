RuleSet: Einwilligung
* Einwilligung      1..1      BackboneElement     "Einwilligung"           "Einwilligung zum Molekularen Tumorboard"
  * Status          1..1      code                "Status Einwilligung"    "Status der Einwilligung zum Molekularen Tumorboard"

RuleSet: EinwilligungMapping
* Einwilligung      -> "Observation"
  * Status          -> "Observation.status"