RuleSet: SystemischeTherapie
* SystemischeTherapie                       0..* BackboneElement                "Systemische Therapie nach DNPM"
  * MTBTherapieStartdatum                   0..1 dateTime                       "Startdatum"
  * MTBTherapieEnddatum                     0..1 dateTime                       "Enddatum"
  * SystemischeTherapieEndeGrund            0..1 code                           "Systemische Therapie Ende Grund" "Gibt den Grund an, warum die Systemtherapie beendet wurde."
  * TherapieEmpfehlung                      0..1 string                         "Therapieempfehlung" "Referenz auf Therapieempfehlung in Therapieplan"
  * Bemerkungen                             0..1 string                         "Bemerkungen"
  * Status                                  1..1 code                           "Status" "WENN STATUS COMPLETED ODER STOPPED -> SYSTEMISCHE THERAPIE ENDE GRUND AUSFÜLLEN"
  * Wirkstoffe                              0..* string                         "Wirkstoffe"
  * Dosisdichte                             0..* code                           "Dosisdichte"
  * insert ResponseBefund

RuleSet: SystemischeTherapieMapping
* SystemischeTherapie -> "Procedure"
  * MTBTherapieStartdatum -> "Procedure.date"
  * MTBTherapieEnddatum -> "Procedure.date"
  * SystemischeTherapieEndeGrund -> ""
  * TherapieEmpfehlung -> "Procedure.basedOn"
  * Bemerkungen -> "Procedure.basedOn"
  * Status -> ""
  * Wirkstoffe -> ""
  * Dosisdichte -> "MedicationRequest"
  

