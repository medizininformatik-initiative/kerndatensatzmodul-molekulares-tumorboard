RuleSet: Behandlungsepisode
* Behandlungsepisode          1..1      BackboneElement     "Behandlungsepisode"
  * Anmeldedatum              1..1      date                "Anmeldedatum"                               "Anmeldedatum für das Molekulare Tumorboard"
  * KrankengeschichteFamilie  0..1      Reference           "Verweis auf Krankengeschichte Familie"      "Verweis auf die familiäre Krankengeschichte"
  * insert Einwilligung
  * insert Diagnose
  * insert Vortherapie
  * insert ECOG
  * insert Probe
  * insert BeschlussTherapieplan
  * insert NGSBericht

RuleSet: BehandlungsepisodeMapping
* Behandlungsepisode          -> "ClinicalImpression"
  * Anmeldedatum              -> "ClinicalImpression.effectiveDateTime"
  * KrankengeschichteFamilie  -> "ClinicalImpression.investigation.item:Reference(FamilyMemberHistory)"
  * insert EinwilligungMapping
  * insert DiagnoseMapping
  * insert VortherapieMapping
  * insert ECOGMapping
  * insert ProbeMapping
  * insert BeschlussTherapieplanMapping
  * insert NGSBerichtMapping