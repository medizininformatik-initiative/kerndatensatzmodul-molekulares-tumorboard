---
parent: 
---

## Release Notes

**Version 2026.0.0**

Datum TODO

- Im Profil `MII_PR_MTB_Immunohistochemistry` wurde das Slicing von `code.coding` geschlossen gemacht, um 
  sicherzustellen, dass nicht gleichzeitig ein spezifischer und generischer Code angegeben werden kann.
  ([GitHub-Issue](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/136))
- Im Profil `MII_PR_MTB_Antrag_Kostenuebernahme` wurde der fixe Wert von `status` von *Pattern* zu *Fixed Value*,
  geändert. Dies hat semantisch die selbe Bedeutung, ist aber leichter zu verstehen.
  ([GitHub-Issue](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/140))
- Im Profil `MII_PR_MTB_Ploidie` wurde das Pattern auf `code.coding` entfernt und stattdessen ein entsprechender Slice
  eingefügt. Das macht es möglich, dass zusätzlich andere Codings angegeben werden.
  ([GitHub-Issue](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/141))
- Im Profil `MII_PR_MTB_BIOMARKER_HER2_STATUS` wurde das Pattern auf `code.coding` entfernt und stattdessen ein entsprechender Slice
  eingefügt. Das macht es möglich, dass zusätzlich andere Codings angegeben werden.
  ([GitHub-Issue](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/144))
- **Breaking Change:** In der Extension `MII_EX_MTB_Empfehlung_Publikation` wurde `valueString` entfernt. Publikationsverweise
  können nur noch als `valueIdentifier` angegeben werden. Für URLs (z.B. Whitepaper, Leitlinien) kann `system=urn:ietf:rfc:3986`
  mit der vollständigen URL als `value` verwendet werden.
- **Breaking Change:** Im Profil `MII_PR_MTB_Behandlungsepisode` wurde `Einwilligung` von `supportingInfo` nach `investigation`
  verschoben. Dies vermeidet Slicing-Konflikte zwischen Einwilligung (Observation) und Vorbefund (DiagnosticReport oder Observation).
  Die Einwilligung wird nun über `investigation[Einwilligung].item` referenziert mit dem Code `LOINC#105511-0 "Was consent given"`.
