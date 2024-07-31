RuleSet: Vortherapie
* Vortherapie            1..*      BackboneElement     "Vortherapie"
  * Diagnose             0..*      Reference           "Verweis auf Diagnose"   "Verweis auf i.d.R. die Anmeldediagnose, in seltenen Fällen weitere Diagnosen"
  * Zulassungsstatus     0..1      code                "Zulassungsstatus"       "Zulassungsstatus der Vortherapie"
  * Therapielinie        0..1      integer             "Therapielinie"          "Therapielinie der Vortherapie (0 bis 9)"
  * Startdatum           0..1      date                "Startdatum"             "Startdatum der Vortherapie"
  * Enddatum             0..1      date                "Enddatum"               "Enddatum der Vortherapie"
  * Wirkstoffe           0..*      Reference           "Wirkstoffe"             "Wirkstoffe der systemischen Leitlinientherapie"
  * Beendigungsgrund     0..1      code                "Beendigungsgrund"       "Beendigungsgrund der systemischen Leitlinentherapie"
  // TODO: Typ / Kategorie in ART-DECORE ein Attribut, d.h. Unterschied klären
  // TODO: Klären ob code oder string
  * Typ                  0..1      code                "Typ"                    "Typ der Leitlinientherapie"
  * Kategorie            0..1      code                "Kategorie"              "Kategorie der Leitlinientherapie"