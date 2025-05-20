RuleSet: ECOG
* ECOG                             0..*      BackboneElement     "ECOG Performance Status"                    "ECOG Performance Status bei Einschluss ins Molekulare Tumorboard"
  * Datum                          0..1      dateTime            "Bestimmungsdatum"                           "Bestimmungsdatum des ECOG Performance Status"
  * AllgemeinerLeistungszustand    1..1      code                "Verweis auf Allgemeiner Leistungszustand"   "Verweis auf die Bewertung des allgemeinen Leistungszustandes"

RuleSet: ECOGMapping
* ECOG                          -> "Observation"
  * Datum                       -> "Observation.effective[x]"
  * AllgemeinerLeistungszustand -> "Observation.valueCodeableConcept"