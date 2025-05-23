RuleSet: Behandlungsepisode
* Behandlungsepisode            1..1      BackboneElement                             "Behandlungsepisode"
  * Zeitraum                    1..1      Period                                      "Zeitraum der Behandlungsepisode"             "Zeitraum von Einschluss bis Abschluss im Molekulare Tumorboard"
  * KrankengeschichteFamilie    0..1      Reference(FamilyMemberHistory)              "Verweis auf Krankengeschichte Familie"       "Verweis auf die familiäre Krankengeschichte"
  * Vorbefund                   0..*      Reference(DiagnosticReport or Observation)  "Verweis auf Vorbefund"                       "Verweis auf relevanten Vorbefund"
  * NGSBericht                  0..*      Reference(DiagnosticReport)                 "Verweis auf NGS Bericht"                     "Verweis auf Next Generation Sequencing Bericht"
  * MolekularPathologieBefund   0..*      Reference(DiagnosticReport)                 "Verweis auf Molekular Pathologie Befund"     "Verweis auf Molekular Pathologie Befund"
  * LeitlinieDokumentation      0..1      Extension                                   "Leitlinie Dokumentation"                     "Dokumentation zur Leitlinien-konformen Umsetzung der Prozedur"
  * LeitlinienbehandlungStatus  0..1      code                                        "Status Leitlinienbehandlung"                 "Status der Leitlinienbehandlung"
  * insert Einwilligung
  * insert Diagnose
  * insert Vortherapie
  * insert ECOG
  * insert BeschlussTherapieplan

RuleSet: BehandlungsepisodeMapping
* Behandlungsepisode            -> "ClinicalImpression"
  * Zeitraum                    -> "ClinicalImpression.effectivePeriod"
  * KrankengeschichteFamilie    -> "ClinicalImpression.investigation.item:Reference(FamilyMemberHistory)"
  * Vorbefund                   -> "ClinicalImpression.supportingInfo:Reference(DiagnosticReport or Observation)"
  * NGSBericht                  -> "ClinicalImpression.investigation.item:Reference(DiagnosticReport)"
  * MolekularPathologieBefund   -> "ClinicalImpression.investigation.item:Reference(DiagnosticReport)"
  * LeitlinieDokumentation      -> "ClinicalImpression.supportingInfo.extension(LeitlinieDokumentation)"
  * LeitlinienbehandlungStatus  -> "ClinicalImpression.extension(LeitlinenbehandlungStatus)"
  * insert EinwilligungMapping
  * insert DiagnoseMapping
  * insert VortherapieMapping
  * insert ECOGMapping
  * insert BeschlussTherapieplanMapping