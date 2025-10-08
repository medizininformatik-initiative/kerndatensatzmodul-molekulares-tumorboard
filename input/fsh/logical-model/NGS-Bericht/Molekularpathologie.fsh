RuleSet: Molekularpathologie
* MolelularpathologischerBefund 0..* BackboneElement "Molekularpathologischer Befund"
* insert IHCBefund
* insert ISHBefund
  
  
RuleSet: IHCBefund  
* IHCBefund     0..*   BackboneElement      "Immunhistochemischer Befund"
  * Code                  1..1   code                   "Code der Untersuchung (z.B. LOINC)"
  * Interpretation          0..1   code                 "Interpretation"
  * Wert                    0..1   decimal              "Wert"
  * UntersuchtesProtein  0..1   code                   "Untersuchtes Protein (kodiert durch den HGNC-Gennamen)"
RuleSet: ISHBefund
* ISHBefund     0..*   BackboneElement      "In-Situ-Hybridisierungs-Befund"
  * Code                  1..1   code                   "Code der Untersuchung (z.B. LOINC)"
  * Interpretation          0..1   code                 "Interpretation"
  * Wert                    0..1   decimal              "Wert"
  * UntersuchtesGen  0..1   code                   "Untersuchtes Gen (kodiert durch den HGNC-Gennamen)"

RuleSet: MolekularpathologieMapping
* MolelularpathologischerBefund -> "DiagnosticReport"
* insert IHCBefundMapping
* insert ISHBefundMapping

RuleSet: IHCBefundMapping
* IHCBefund     ->      "Observation"
  * Code                  ->        "Observation.code"
  * Interpretation          ->      "Observation.interpretation"
  * Wert                    ->      "Observation.value"
  * UntersuchtesProtein  ->      "Observation.component[gene-studied].valueCodeableConcept"

RuleSet: ISHBefundMapping
* ISHBefund     ->      "Observation"
  * Code                  ->        "Observation.code"
  * Interpretation          ->      "Observation.interpretation"
  * Wert                    ->      "Observation.value"
  * UntersuchtesGen  ->      "Observation.component[gene-studied].valueCodeableConcept"
