RuleSet: Probe
// TODO: min-Kardinalität 1 oder 0?
* Probe                 1..* BackboneElement  "Histologie und Tumorzellgehalt"  "Histologiebefund und bestimmter Tumorzellgehalt"
  * Histologie          0..1 Reference        "Verweis auf Histologiebefund"    "Verweis auf den Befund zur Histologie des Tumors"
  * insert Tumorzellgehalt

RuleSet: ProbeMapping
* Probe             -> "ServiceRequest.reasonReference"
  * Histologie      -> "DiagnosticReport"
  * insert TumorzellgehaltMapping