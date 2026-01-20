RuleSet: Ploidie
* Ploidie                       0..*   BackboneElement        "Ploidie"
  * Kopienzahl                  0..1   Reference              "Kopienzahl (Wert)"

RuleSet: PloidieMapping
* Ploidie                      ->      ""
  * Kopienzahl                 ->      ""