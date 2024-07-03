RuleSet: Studieneinschlussempfehlungen
* Studieneinschlussempfehlungen 0..1 BackboneElement "Studieneinschlussempfehlungen" "Empfehlungen zum Studieneinschlus gemäß Beschluss des Molekularen Tumorboards"
  * StuetzendeEntitaet 0..* string "Stützende Entität"
  * NctNummer 0..1 string "NCT-Nummer"
  * EudraCtNummer 0..1 string "Eudra-CT-Nummer"
  * DrksNummer 0..1 string "DRKS-Nummer"

RuleSet: StudieneinschlussempfehlungenMapping
* Studieneinschlussempfehlungen -> "ResearchStudy"
  * StuetzendeEntitaet -> "ResearchStudy.focus"
  * NctNummer -> "ResearchStudy.site"
  * EudraCtNummer -> "ResearchStudy.site"
  * DrksNummer -> "ResearchStudy.site"
  // Dieses Profil kann in CarePlan.activity.outcomereference referenziert werden.