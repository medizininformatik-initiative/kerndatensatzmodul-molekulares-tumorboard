RuleSet: EvidenzLevel
* EvidenzLevel      0..1 BackboneElement     "Evidenzgraduierung" "Evidenzgraduierung für Biomarker-basierte Therapieempfehlung"
  // TODO: Neues CodeSystem nach Evidenzgraduierung der ZPM erstellen
  * Graduierung     0..1 code                "Evidenzgrad"       "Evidenzgrad der Therapieempfehlung"
  // TODO: Neues CodeSystem nach Zusatzverweisen zur Evidenzeinstufun der ZPM erstellen
  * Zusatz          0..1 code                "Zusatzverweis"     "Zusatzverweise zum Evidenzgrad"
  * insert Publikationen

RuleSet: EvidenzLevelMapping
// TODO: Neues Profil zur Darstellung der Evidenzeinstufung
* EvidenzLevel      -> "Extension"
  * Graduierung     -> "Extension.valueCodableConcept.coding.code"
  * Zusatz          -> "Extension.valueCodableConcept.coding.code"
  * insert PublikationenMapping