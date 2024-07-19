RuleSet: Studieneinschlussempfehlungen
* Studieneinschlussempfehlungen   0..* BackboneElement  "Studieneinschlussempfehlungen" "Empfehlungen zum Studieneinschlus gemäß Beschluss des Molekularen Tumorboards"
  // TODO: Eigentlich hier die Diagnose, die die Studie genauer untersuchen möchte, nicht die des Patienten
  * StuetzendeEntitaet            0..* code             "Stützende Entität"             "Stützende Entität"
  * NctNummer                     0..1 Identifier       "NCT-Nummer"                    "Identifikator NCT Studie"
  * EudraCtNummer                 0..1 Identifier       "Eudra-CT-Nummer"               "Identifikator Eudra-CT Studie"
  * DrksNummer                    0..1 Identifier       "DRKS-Nummer"                   "Identifikator DRKS Studie"

RuleSet: StudieneinschlussempfehlungenMapping
* Studieneinschlussempfehlungen   -> "ResearchStudy"
  // TODO: ICD-10, ICD-O, etc.(via Slicing) verwendet?
  * StuetzendeEntitaet            -> "ResearchStudy.condition.valueCodeableConcept.coding.code"
  * NctNummer                     -> "ResearchStudy.identifier[NCT-Nummer]"
  * EudraCtNummer                 -> "ResearchStudy.identifier[EudraCT-Nummer]"
  * DrksNummer                    -> "ResearchStudy.identifier[DRKS-Nummer]"