RuleSet: EvidenzLevel
* EvidenzLevel      0..1 BackboneElement     "Evidenzeinstufung" "Evidenzeinstufung für Biomarker-basierte Therapieempfehlung"
  // TODO: Neues CodeSystem nach Evidenzgraduierung der ZPM erstellen
  * Graduierung     0..1 code                "Graduierung"       "Evidenzgraduierung der Therapieempfehlung"
  // TODO: Neues CodeSystem nach Zusatzverweisen zur Evidenzeinstufun der ZPM erstellen
  * Zusatz          0..1 code                "Zusatzverweis"     "Zusatzverweise für Evidenzeinstufung"
  * insert Publikationen

RuleSet: EvidenzLevelMapping
// TODO: Neues Profil zur Darstellung der Evidenzeinstufung
* EvidenzLevel      -> "Observation"
  * Graduierung     -> "Observation.component.valueCodableConcept.coding.code"
  * Zusatz          -> "Observation.component.valueCodableConcept.coding.code"
  * insert PublikationenMapping