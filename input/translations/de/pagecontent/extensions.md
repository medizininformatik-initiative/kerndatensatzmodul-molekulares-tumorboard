<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung von input/pagecontent/extensions.md (aufgeteilt aus
     der früheren Kombi-Seite profiles-and-extensions.md). -->


### Extensions

Diese Seite listet die FHIR-Extensions, die das Modul **Molekulares Tumorboard**
definiert (Namenskonvention `MII_EX_<Modul>_<Name>`). Extensions transportieren
Informationen, die die Basis-Ressourcen und Profile nicht ausdrücken können; die
Profile, die sie verwenden, stehen auf der Seite [Profile](profiles.html).

<!-- Migriert aus dem Simplifier-IG (Behandlungsepisode/Extensions: Therapielinie, Zulassungsstatus). TODO:REVIEW -->

Die vollständige Liste der Extensions erzeugt der IG Publisher automatisch auf
der [Artefakt-Übersicht](artifacts.html).

### Therapielinie

Diese Erweiterung beschreibt die Therapielinie einer systemischen
(medikamentösen) (Vor-)Therapie. Die Angabe der Therapielinie erfolgt
ganzzahlig.

<!-- DERIVED:suggestion source=MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Therapielinie-Extension.page.md gate=B -->
> **Written during migration - review before release.** TODO:REVIEW — der Quell-Leitfaden beschrieb eine Extension
> `mii-ex-mtb-therapielinie`, die nicht mehr Teil dieses Pakets ist (das
> Konzept tragen die referenzierten Onkologie-Profile). Bitte bestätigen und
> entweder das Artefakt wiederherstellen oder diesen Hinweis behalten.
{: .ig-highlight .ig-highlight-grey}

### Zulassungsstatus

Diese Erweiterung beschreibt den Zulassungsstatus einer systemischen
(medikamentösen) (Vor-)Therapie. Damit kann eine Medikamentengabe als
in-label, off-label oder leitliniengerecht gekennzeichnet werden — siehe
[mii-cs-mtb-zulassungsstatus](CodeSystem-mii-cs-mtb-zulassungsstatus.html).

<!-- DERIVED:suggestion source=MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Zulassungsstatus-Extension.page.md gate=B -->
> **Written during migration - review before release.** TODO:REVIEW — der Quell-Leitfaden beschrieb eine Extension
> `mii-ex-mtb-zulassungsstatus`, die nicht mehr Teil dieses Pakets ist
> (CodeSystem/ValueSet `mii-cs/vs-mtb-zulassungsstatus` existieren weiterhin).
> Bitte bestätigen und entweder das Artefakt wiederherstellen oder diesen
> Hinweis behalten.
{: .ig-highlight .ig-highlight-grey}
