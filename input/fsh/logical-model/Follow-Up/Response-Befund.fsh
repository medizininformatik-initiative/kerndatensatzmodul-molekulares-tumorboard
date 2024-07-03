RuleSet: ResponseBefund
* ResponseBefund            0..* BackboneElement "Response Befund"
  * ResponseBeurteilung     0..1 code "Response Beurteilung"
  * Beurteilungsmethode     1..1 code "Beurteilungsmethode" "Beurteilungsmethode des Response Befundes"
  * Zeitpunkt               0..1 dateTime "Zeitpunkt" "Zeitpunkt des Response Befundes"

RuleSet: ResponseBefundMapping
* ResponseBefund
  * ResponseBeurteilung
  * Beurteilungsmethode
  * Zeitpunkt