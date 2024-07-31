RuleSet: Diagnose
* Diagnose                      1..1      BackboneElement     "Diagnose"
  * Diagnose                    0..1      Reference           "Verweis auf Diagnose"             "Verweis auf Diagnose"
  * Histologie                  0..1      Reference           "Verweis auf Histologiebefund"     "Verweis auf den Befund zur Histologie des Tumors"
  * WHOGradZNS                  0..1      code                "WHO-Grad ZNS Tumor"               "Grad des Tumors nach WHO Klassifikation der Tumoren des zentralen Nervensystems (ZNS)"
  * TumorausbreitungED          1..1      BackboneElement     "Tumorausbreitung ED"              "Tumorausbreitung zum Zeitpunkt der Erstdiagnose"
    * Wert                      1..1      code                "Wert"                             "Wert Tumorausbreitung"
    * Zeitpunkt                 1..1      date                "Zeitpunkt"                        "Zeitpunkt der Tumorausbreitung"
  * TumorausbreitungMTB         1..1      BackboneElement     "Tumorausbreitung MTB"             "Tumorausbreitung zum Zeitpunkt der MTB-Anmeldung"
    * Wert                      1..1      code                "Wert"                             "Wert Tumorausbreitung"
    * Zeitpunkt                 1..1      date                "Zeitpunkt"                        "Zeitpunkt der Tumorausbreitung"
  * LeitlinienbehandlungStatus  0..1      code                "Status Leitlinienbehandlung"      "Status der Leitlinienbehandlung"

RuleSet: DiagnoseMapping
* Diagnose                      -> "EpisodeOfCare.diagnosis"
  * Diagnose                    -> "EpisodeOfCare.diagnosis.condition:Reference(Condition)"
  // TODO: Prüfen, ob Histologie nicht via onkologischer Diagnose referenziert
  * Histologie                  -> "Condition.evidence.detail:Reference(DiagnosticReport)"
  * WHOGradZNS                  -> "Condition.stage.summary:CodeableConcept.coding.code"
  * TumorausbreitungED          -> "Condition.stage.assesment:Reference(Observation)"
    * Wert                      -> "Observation.valueCodeableConcept.coding.code"
    * Zeitpunkt                 -> "Observation.effectiveDateTime"
  * TumorausbreitungMTB         -> "Condition.stage.assesment:Reference(Observation)"
    * Wert                      -> "Observation.valueCodeableConcept.coding.code"
    * Zeitpunkt                 -> "Observation.effectiveDateTime"
  // TODO: Verortung prüfen
  * LeitlinienbehandlungStatus  -> "EpisodeOfCare.extension(LeitlinenbehandlungStatus)"