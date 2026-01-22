---
parent:
topic: ReleaseNotes
---

## {{page-title}}
Hier sind alle Änderungen aufgelistet.

## Version 2026.0.0 (2026-01-20)

Erste stabile Version nach der Ballot-Phase (Mai/Juni 2025). Diese Version enthält umfangreiche Verbesserungen basierend auf Ballot-Feedback, über 300 behobene Validierungsfehler und wichtige neue Features.

**Zusammenfassung:**
- **148 Commits** seit dem Ballot (2025.0.0-ballot)
- **111 FSH-Dateien** geändert (+2079 Zeilen, -756 Zeilen)
- **8 GitHub Issues** aus Ballot-Feedback bearbeitet
- **Über 300 Validierungsfehler** behoben

### ⚠️ Breaking Changes

Diese Änderungen erfordern möglicherweise Anpassungen in bestehenden Implementierungen:

- **`BREAKING`** Extension `MII_EX_MTB_Empfehlung_Publikation`: `valueString` entfernt. Publikationsverweise können nur noch als `valueIdentifier` angegeben werden. Für URLs (z.B. Whitepaper, Leitlinien) kann `system=urn:ietf:rfc:3986` mit der vollständigen URL als `value` verwendet werden.
- **`BREAKING`** Profil `MII_PR_MTB_Behandlungsepisode`: `Einwilligung` von `supportingInfo` nach `investigation` verschoben. Dies vermeidet Slicing-Konflikte zwischen Einwilligung (Observation) und Vorbefund (DiagnosticReport oder Observation). Die Einwilligung wird nun über `investigation[Einwilligung].item` referenziert mit dem Code `LOINC#105511-0 "Was consent given"`.
- **`BREAKING`** Profil `MII_PR_MTB_Immunohistochemistry`: code.coding Slicing geschlossen, um sicherzustellen, dass nicht gleichzeitig ein spezifischer und generischer Code angegeben werden kann.
- **`BREAKING`** Profil `MII_PR_MTB_Antrag_Kostenuebernahme`: Fixer Wert von `status` von Pattern zu Fixed Value geändert.
- **`BREAKING`** Profil `MII_PR_MTB_Ploidie`: Pattern auf `code.coding` entfernt und entsprechender Slice eingefügt für zusätzliche Codings.
- **`BREAKING`** Profil `MII_PR_MTB_BIOMARKER_HER2_STATUS`: Pattern auf `code.coding` entfernt und entsprechender Slice eingefügt für zusätzliche Codings.

### Neue Profile und Funktionalität

- `feat` **Genomic Study Device Profil**: Neues {{pagelink:GenomicStudyDevice}} Profil (`MII_PR_MTB_Genomic_Study_Device`) zur strukturierten Erfassung von Sequenzierungsgeräten in NGS-Workflows
- `feat` **Beurteilungsmethode CodeSystem**: Neues CodeSystem und ValueSet `mii-cs-mtb-beurteilungsmethode` für `ResponseBefund.method` zur standardisierten Dokumentation von Beurteilungsmethoden
- `feat` **Ploidie-Dokumentation**: IG-Seite und Beispiel für Ploidie-Profile zur vollständigen Dokumentation der Ploidie-Erfassung hinzugefügt
- `feat` **Mehrsprachigkeit (i18n)**: Translation RuleSet mit de-DE und en Übersetzungen für alle 52 Profile implementiert

### Ballot-Feedback Umsetzung

- `fix` Extension `MII_EX_MTB_Leitlinienbehandlung_Status`: value[x] Typ geändert, MS-Flag und fixed system für Oncotree ergänzt. [[#129](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/129)]
- `fix` Profil `MII_PR_MTB_Tumorausbreitung`: code-Slicing für SNOMED CT hinzugefügt. [[#129](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/129)]
- `fix` Binding Strength von reasonCode auf `extensible` gesetzt für flexiblere Kodierung. [[#130](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/130)]
- `fix` Observation.code: Festes `system` und `code` für alle Observation-Profile gesetzt. [[#137](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/137)]
- `feat` HER2neu FISH: Ergänzendes Beispiel hinzugefügt zur Demonstration der In-Situ-Hybridisierung. [HDB-533]
- `fix` Diverse Profil-Anpassungen basierend auf Ballot-Feedback implementiert. [[#128](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/128), [#131](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/131), [#132](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/132), [#138](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/138), [#145](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/145)]

### Validierung und Qualitätsverbesserungen

Umfangreiche Arbeit zur Behebung von über 300 Validierungsfehlern:

- `fix` **UUID_INVALID (320 Fehler)**: Bundle fullUrl von `urn:uuid:` auf absolute HTTP URLs umgestellt für korrekte Ressourcen-Referenzierung
- `fix` **WRONG_DISPLAY**: LOINC, HGNC und SNOMED CT Display-Namen korrigiert für konsistente Terminologie
- `fix` **SNOMED CT Codes**: Ungültige DE-Edition Codes durch International Edition ersetzt
- `fix` **CPL-3 Constraint (34 Fehler)**: CarePlan Constraint-Verletzungen behoben
- `fix` **FSH Errors (22 Fehler)**: Alle SUSHI-FSH-Fehler behoben
- `fix` **VALUESET_INVALID**: ValueSet-Bindungsfehler behoben
- `fix` **EXTENSION_NOT_ALLOWED**: Ungültige Extension-Verwendungen entfernt
- `fix` **OTHER_CONSTRAINT**: Constraint-Verletzungen in verschiedenen Profilen behoben
- `fix` **OPS-Codes**: Korrekte OPS-Codes und Display-Namen für Systemische Therapie hinzugefügt

### Profiländerungen

#### NGS-Bericht und Molekularpathologie

- `refactor` **RNA Fusion**: Profil-Restrukturierung mit verbesserter Genetische-Implikationen Dokumentation, korrigierte HGNC und Strand-Codes
- `fix` **NGS-Bericht**: Fehlende Referenzen ergänzt für vollständige Verlinkung genomischer Daten
- `fix` **Genomic Study Analysis**: MolGen-Profil zur Reference-Constraint hinzugefügt für erweiterte Kompatibilität
- `refactor` **Molecular Pathology Report**: Vereinfachte Struktur für bessere Verständlichkeit

#### Behandlungsepisode und Therapie

- `feat` **Systemische Therapie**: OPS-Code 8-54 und SNOMED-Kategorie hinzugefügt, performed[x] Slice entfernt für konsistente Kodierung
- `fix` **Therapieplan**: Reslicing von activity[extended] zur Behebung von MatchMultiple-Fehlern
- `fix` **Studieneinschluss Anfrage**: supportingInfo Slicing auf #profile/resolve() geändert

#### Immunohistochemie und In-Situ-Hybridisierung

- `fix` **Immunohistochemistry**: code.coding Slicing-Diskriminator korrigiert für präzisere Validierung
- `fix` **InSituHybridization**: Slicing-Probleme behoben, Dokumentation aktualisiert

#### Medikation

- `refactor` Medikationsbeispiele von `medicationReference` auf `medicationCodeableConcept` umgestellt für vereinfachte Kodierung

### Technische Verbesserungen

- `refactor` Bundle RuleSet: Relative URLs statt `urn:uuid:` für bessere Ressourcen-Referenzierung
- `refactor` activity[extended] Reslicing für CarePlan-Kompatibilität implementiert
- `feat` Einheitlicher `Example_Header` RuleSet für alle MII-Profilbeispiele zur konsistenten Beispielstruktur
- `chore` Version auf 2026.0.0 aktualisiert

### Dokumentation

- `documentation` **RNA Fusion**: Strand-Orientierung Coding-Anleitung hinzugefügt
- `documentation` **In-Situ-Hybridisierung**: IG-Dokumentation nach Refactoring aktualisiert
- `documentation` **Genomic Study Analysis**: Validierungslimitationen dokumentiert
- `feat` **QA-Validierung**: Neue Seite für Validierungs-Limitationen und bekannte Validator-Einschränkungen

### Abhängigkeiten

- `chore` Package-Abhängigkeiten aktualisiert:
  - `de.basisprofil.r4` → 1.5.4
  - `kerndatensatz.biobank` → 2026.0.0
  - `kerndatensatz.consent` → 2025.0.4
  - `kerndatensatz.base` → 2026.0.0
  - `kerndatensatz.medikation` → 2026.0.0
  - `kerndatensatz.meta` → 2026.0.0
  - `kerndatensatz.molgen` → 2026.0.4
  - `kerndatensatz.onkologie` → 2026.0.0
  - `kerndatensatz.patho` → 2026.0.0
  - `kerndatensatz.studie` → 2026.0.1
  - `hl7.fhir.uv.genomics-reporting` → 3.0.0

### Bekannte Limitationen

Siehe {{pagelink:QA-Validierung}} für eine vollständige Liste der bekannten Validierungsprobleme.

**Zusammenfassung der verbleibenden Probleme:**
- Slicing-Evaluierung bei pattern-Diskriminator mit ValueSet (Validator-Limitation)
- Profile Mismatch bei Bundle-Validierung (Validator-Limitation)
- Neuere SNOMED CT Codes nicht auf TX-Server verfügbar
- HGNC Gene-Symbole nicht validierbar

### Migrationshinweise

Von 2025.0.0-ballot zu 2026.0.0:

1. **Einwilligung in Behandlungsepisode**: Verschieben Sie Einwilligungs-Referenzen von `supportingInfo` nach `investigation[Einwilligung].item`
2. **Publikationsverweise**: Konvertieren Sie `valueString` zu `valueIdentifier` in Extension `MII_EX_MTB_Empfehlung_Publikation`
3. **Bundle fullUrl**: Ersetzen Sie `urn:uuid:` durch absolute HTTP URLs in allen Bundle-Beispielen
4. **Medikation**: Wechseln Sie von `medicationReference` zu `medicationCodeableConcept` wo möglich
5. **SNOMED CT Codes**: Prüfen Sie, ob verwendete Codes in der International Edition verfügbar sind

---

## Version 2025.0.0-ballot (2025-05-26)

Initiale Ballot-Version für die MII Abstimmungsphase.

**Inhalt:**
- Grundlegende Profile für Molekulares Tumorboard
- NGS-Befund und Molekularpathologie-Profile
- Behandlungsepisode und Therapieempfehlungen
- Immunohistochemie und In-Situ-Hybridisierung
- Genomische Varianten und Biomarker
