RuleSet: EvidenzLevel
* EvidenzLevel 0..1 BackboneElement "Evidenzleven" "Evidenzeinstufung"
  * Graduierung 0..1 code "Graduierung" // Code hinzufügen
  * Zusatz 0..1 string "Zusatz" "Zusätzliche Informationen"
  * insert Publikationen

RuleSet: EvidenzLevelMapping
* EvidenzLevel -> "Observation"
  * Graduierung -> "Observation.code.coding.code"
  * Zusatz -> "Observation.code.text"
// Dieses Profil kann in CarePlan.activity.detail.resonReference referenziert werden.
// für die Graduierung können vielleicht die Codes hier https://sozialministerium.baden-wuerttemberg.de/fileadmin/redaktion/m-sm/intern/downloads/Downloads_Krankenhaeuser/Fachplanung_ZPM_28-03-2019.pdf
// in Tabelle 1 aufgelistet sind verwenden?