# Extensions - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Extensions**

## Extensions

### Extensions

Diese Seite listet die FHIR-Extensions, die das Modul **Molekulares Tumorboard** definiert (Namenskonvention `MII_EX_<Modul>_<Name>`). Extensions transportieren Informationen, die die Basis-Ressourcen und Profile nicht ausdrücken können; die Profile, die sie verwenden, stehen auf der Seite [Profile](profiles.md).

Die vollständige Liste der Extensions erzeugt der IG Publisher automatisch auf der [Artefakt-Übersicht](artifacts.md).

### Therapielinie

Diese Erweiterung beschreibt die Therapielinie einer systemischen (medikamentösen) (Vor-)Therapie. Die Angabe der Therapielinie erfolgt ganzzahlig.

> **Written during migration - review before release.** TODO:REVIEW — der Quell-Leitfaden beschrieb eine Extension `mii-ex-mtb-therapielinie`, die nicht mehr Teil dieses Pakets ist (das Konzept tragen die referenzierten Onkologie-Profile). Bitte bestätigen und entweder das Artefakt wiederherstellen oder diesen Hinweis behalten.

### Zulassungsstatus

Diese Erweiterung beschreibt den Zulassungsstatus einer systemischen (medikamentösen) (Vor-)Therapie. Damit kann eine Medikamentengabe als in-label, off-label oder leitliniengerecht gekennzeichnet werden — siehe [mii-cs-mtb-zulassungsstatus](CodeSystem-mii-cs-mtb-zulassungsstatus.md).

> **Written during migration - review before release.** TODO:REVIEW — der Quell-Leitfaden beschrieb eine Extension `mii-ex-mtb-zulassungsstatus`, die nicht mehr Teil dieses Pakets ist (CodeSystem/ValueSet `mii-cs/vs-mtb-zulassungsstatus` existieren weiterhin). Bitte bestätigen und entweder das Artefakt wiederherstellen oder diesen Hinweis behalten.

