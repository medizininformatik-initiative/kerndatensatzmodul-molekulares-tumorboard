RuleSet: Therapieempfehlungen
* Therapieempfehlungen 1..1 BackboneElement "Therapieempfehlungen gemäß Beschluss des Molekularen Tumorboards"
  * insert EvidenzLevel
  * insert Studieneinschlussempfehlungen
  * StuetzendeMolekularAlterationen 0..* string "Stützende molekulare Alteration(en)" "Verweis auf entsprechendes Feld in NGS Bericht und/oder IHC (Verweis auf KDS Molekular-Pathologischer Befundbericht)"
  * StuetzendeEntitaet 0..* string "Stützende Entität" "Wenn eine Therapie- oder Studieneinschlussempfehlung nicht aufgrund einer molekularen Alteration geschieht, sondern aufgrund der Tumorentität"
  * Prioritaet 0..1 code "Priorität" //code hinzufügen
  * Wirkstoffe 0..1 string "Wirkstoffe"