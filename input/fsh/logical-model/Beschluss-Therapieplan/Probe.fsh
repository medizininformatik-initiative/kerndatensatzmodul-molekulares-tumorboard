RuleSet: Probe
// TODO: min-Kardinalität 1 oder 0?
* Probe                 1..* BackboneElement  "Gewebeprobe des Tumors"        "Histologie und zum Tumorzellgehalt der Gewebeprobe"
  * Histologie          0..1 Reference        "Verweis auf Histologiebefund"  "Verweis auf den Befund zur Histologie des Tumors"
  * insert Tumorzellgehalt

RuleSet: ProbeMapping
* Probe             -> "ServiceRequest.where(meta.profile = $mii-pr-patho-service-request).specimen"
  * Histologie      -> "Specimen.where(meta.profile = $mii-pr-onko-specimen)"
  * insert TumorzellgehaltMapping