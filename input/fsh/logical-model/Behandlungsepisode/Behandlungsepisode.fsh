RuleSet: Behandlungsepisode
* Behandlungsepisode          1..1      BackboneElement     "Behandlungsepisode"
  * Anmeldedatum              1..1      date                "Anmeldedatum"                               "Anmeldedatum für das Molekulare Tumorboard"
  * KrankengeschichteFamilie  0..1      Reference           "Verweis auf Krankengeschichte Familie"      "Verweis auf die familiäre Krankengeschichte"
  * insert Einwilligung
  * insert Diagnose
  * insert Vortherapie
  * insert ECOG
  * insert Probe
  //* insert MolekularPathologieBefund
  //* insert NextGenerationSequencingBericht
  * insert BeschlussTherapieplan

RuleSet: BehandlungsepisodeMapping
* Behandlungsepisode          -> "EpisodeOfCare"
  * Anmeldedatum              -> "EpisodeOfCare.period.start"
  // TODO: Prüfen der Referenz auf FamilyMemberHistory (z.B. Condition.assessment:Reference(ClinicalImpression).investigation.item:Reference(FamilyMemberHistory))
  * KrankengeschichteFamilie  -> "EpisodeOfCare.extension(KrankengeschichteFamilie)"
  * insert EinwilligungMapping
  * insert DiagnoseMapping
  //* insert VortherapieMapping
  //* insert ECOGMapping
  * insert ProbeMapping
  * insert BeschlussTherapieplanMapping