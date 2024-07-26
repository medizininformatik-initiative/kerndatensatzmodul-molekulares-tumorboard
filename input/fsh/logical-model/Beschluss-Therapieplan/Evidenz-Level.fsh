RuleSet: EvidenzLevel
* EvidenzLevel      0..1 BackboneElement     "Evidenzgraduierung" "Evidenzgraduierung für Biomarker-basierte Therapieempfehlung"
  * Graduierung     0..1 code                "Evidenzgrad"       "Evidenzgrad der Therapieempfehlung"
  * Zusatz          0..1 code                "Zusatzverweis"     "Zusatzverweise zum Evidenzgrad"
  * insert Publikationen

RuleSet: EvidenzLevelMapping
* EvidenzLevel      -> "Extension"
  * Graduierung     -> "Extension.valueCodableConcept.coding.code"
  * Zusatz          -> "Extension.valueCodableConcept.coding.code"
  * insert PublikationenMapping