RuleSet: AntragKostenuebernahme
* AntragKostenuebernahme                   0..* BackboneElement   "Kostenuebernahme Follow-Up"
  * Ausstellungsdatum                      0..1 dateTime          "Ausstellungsdatum" "Ausstellungsdatum Antrag Kostenübernahme"
  * TherapieEmpfehlung                     1..1 string            "Therapie Empfehlung" "Referenz MTB Empfehlung"
  * Antragsstadium                         1..1 code              "Antragsstadium" 
  * AntragsstellerZPMGeschaeftsstelle      0..1 code             "Antragssteller ZPM Geschäftsstelle" 

RuleSet: ClaimMapping
* AntragKostenuebernahme -> "Claim"
  * Ausstellungsdatum -> "Claim.recreated"
  * TherapieEmpfehlung -> "MedicationRequest"
  * Antragsstadium -> "Claim.code"
  * Antragssteller_ZPM -> "Claim.careTeam.responsible"