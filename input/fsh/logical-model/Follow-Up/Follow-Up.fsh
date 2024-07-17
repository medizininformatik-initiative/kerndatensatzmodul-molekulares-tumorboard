RuleSet: FollowUp
* FollowUp                      0..* BackboneElement  "Follow-Up nach DNPM"
  * Erfassungsdatum             0..1 dateTime         "Erfassungsdatum" "Erfassungsdatum Durchführung Follow-Up"
  * FollowUpStatus              1..1 code             "FollowUpStatus"
  * GrundNichtUmsetzung         0..1 code             "GrundNichtUmsetzung" "Grund für die Nicht-Umsetzung des gesamten Therapieplans. Wird entweder evaluiert, wenn Patient ein zweites mal im MTB vorgestellt wird oder Patient verstorben ist."
  * insert SystemischeTherapie
  * insert AntragKostenuebernahme
  * insert AntwortKostenuebernahme


RuleSet: FollowUpMapping
* FollowUp -> "ClinicalImpression"
  * Erfassungsdatum -> "ClinicalImpression.date"
  * FollowUpStatus -> "ClinicalImpression.investigation.code"
  * GrundNichtUmsetzung -> "Procedure.statusReason"
