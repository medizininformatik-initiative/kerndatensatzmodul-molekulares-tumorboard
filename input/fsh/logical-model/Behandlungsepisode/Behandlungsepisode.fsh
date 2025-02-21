RuleSet: Behandlungsepisode
* Behandlungsepisode          1..1      BackboneElement                 "Behandlungsepisode"
  * Anmeldedatum              1..1      date                            "Anmeldedatum"                               "Anmeldedatum für das Molekulare Tumorboard"
  * KrankengeschichteFamilie  0..1      Reference(FamilyMemberHistory)  "Verweis auf Krankengeschichte Familie"      "Verweis auf die familiäre Krankengeschichte"
  * NGSBericht                0..*      Reference(DiagnosticReport)     "Verweis auf NGS Bericht"                    "Verweis auf Next Generation Sequencing Bericht"
  * MolekularPathologieBefund 0..*      Reference(DiagnosticReport)     "Verweis auf Molekular Pathologie Befund"    "Verweis auf Molekular Pathologie Befund"
  * insert Einwilligung
  * insert Diagnose
  * insert Vortherapie
  * insert ECOG
  * insert Probe
  * insert BeschlussTherapieplan

RuleSet: BehandlungsepisodeMapping
* Behandlungsepisode          -> "ClinicalImpression"
  * Anmeldedatum              -> "ClinicalImpression.effectiveDateTime"
  * KrankengeschichteFamilie  -> "ClinicalImpression.investigation.item:Reference(FamilyMemberHistory)"
  * NGSBericht                -> "ClinicalImpression.investigation.item:Reference(DiagnosticReport)"
  * MolekularPathologieBefund -> "ClinicalImpression.investigation.item:Reference(DiagnosticReport)"
  * insert EinwilligungMapping
  * insert DiagnoseMapping
  * insert VortherapieMapping
  * insert ECOGMapping
  * insert ProbeMapping
  * insert BeschlussTherapieplanMapping