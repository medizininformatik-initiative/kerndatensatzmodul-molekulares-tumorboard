RuleSet: Studieneinschlussempfehlung
* Studieneinschlussempfehlung     0..* BackboneElement      "Studieneinschlussempfehlungen" "Empfehlungen zum Studieneinschlus gemäß Beschluss des Molekularen Tumorboards"
  * StuetzendeEntitaet            0..* Reference(Condition) "Stützende Entität"             "Stützende Entität"
  * NctNummer                     0..1 Identifier           "NCT-Nummer"                    "Identifikator NCT Studie"
  * EudraCtNummer                 0..1 Identifier           "Eudra-CT-Nummer"               "Identifikator Eudra-CT Studie"
  * DrksNummer                    0..1 Identifier           "DRKS-Nummer"                   "Identifikator DRKS Studie"
  * Prioritaet                    0..1 positiveInt                  "Priorität"                           "Priorität der (einzelnen) Therapieempfehlung"
  * insert Publikationen

RuleSet: StudieneinschlussempfehlungMapping
* Studieneinschlussempfehlung     -> "ServiceRequest"
  * StuetzendeEntitaet            -> "ServiceRequest.reasonReference:Reference(Condition)"
  * NctNummer                     -> "ServiceRequest.supportingInfo:Reference(ResearchStudy)"
  * EudraCtNummer                 -> "ServiceRequest.supportingInfo:Reference(ResearchStudy)"
  * DrksNummer                    -> "ServiceRequest.supportingInfo:Reference(ResearchStudy)"
  * Prioritaet                    -> "ServiceRequest.extension(Prioritaet)"
  * insert PublikationenMapping