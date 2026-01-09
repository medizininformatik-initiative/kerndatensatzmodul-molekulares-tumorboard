---
parent:
---

## Release Notes

Diese Seite dokumentiert die Änderungen zwischen den Versionen des MII Moduls Molekulares Tumorboard.

---

**Version 2026.0.0**

Datum: 2025-01-09

Erste stabile Version nach der Ballot-Phase (Mai/Juni 2025). Diese Version enthält umfangreiche Verbesserungen basierend auf Ballot-Feedback, über 300 behobene Validierungsfehler und wichtige neue Features.

### Zusammenfassung

- **148 Commits** seit dem Ballot (2025.0.0-ballot)
- **111 FSH-Dateien** geändert (+2079 Zeilen, -756 Zeilen)
- **8 GitHub Issues** aus Ballot-Feedback bearbeitet (#128, #129, #130, #131, #132, #137, #138, #145)
- **Über 300 Validierungsfehler** behoben

### Neue Features

- **Mehrsprachigkeit (i18n):** Translation RuleSet mit de-DE und en Übersetzungen für alle 52 Profile hinzugefügt
- **Beispiel-Header:** Einheitlicher `Example_Header` RuleSet für alle MII-Profilbeispiele
- **QA-Dokumentation:** Neue Seite für Validierungs-Limitationen und bekannte Validator-Einschränkungen
- **Beurteilungsmethode:** Neues CodeSystem und ValueSet `mii-cs-mtb-beurteilungsmethode` für `ResponseBefund.method`
- **Ploidie:** IG-Seite und Beispiel für Ploidie-Profile hinzugefügt
- **RNA Fusion:** Dokumentation für Strand-Orientierung und Genetische-Implikationen ergänzt
- **Genomic Study Device:** Neues Profil `MII_PR_MTB_Genomic_Study_Device` für Sequenzierungsgeräte

### Ballot-Feedback Umsetzung (GitHub Issues)

| Issue | Beschreibung | Änderung |
|-------|--------------|----------|
| [#128](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/128) | Profil-Anpassungen | Implementiert |
| [#129](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/129) | LeitlinienbehandlungStatus Extension value[x] Typ, Oncotree System, Tumorausbreitung Kardinalität | Extension.value[x] Typ geändert, MS-Flag und fixed system für Oncotree, code-Slicing für SCT |
| [#130](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/130) | reasonCode Binding Strength | Auf `extensible` gesetzt |
| [#131](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/131) | Profil-Anpassungen | Implementiert |
| [#132](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/132) | Profil-Anpassungen | Implementiert |
| [#137](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/137) | Observation.code fixed system/code | Festes `system` und `code` für Observation.code gesetzt |
| [#138](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/138) | Profil-Anpassungen | Implementiert |
| [#145](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/145) | Profil-Anpassungen | Implementiert |
| HDB-533 | HER2neu FISH | Ergänzendes Beispiel hinzugefügt |

### Validierungs-Fixes

Umfangreiche Arbeit zur Behebung von über 300 Validierungsfehlern:

| Kategorie | Beschreibung |
|-----------|--------------|
| **UUID_INVALID (320)** | Bundle fullUrl von `urn:uuid:` auf absolute HTTP URLs umgestellt |
| **WRONG_DISPLAY** | LOINC, HGNC und SNOMED CT Display-Namen korrigiert |
| **SNOMED CT Codes** | Ungültige DE-Edition Codes durch International Edition ersetzt |
| **CPL-3 Constraint (34)** | CarePlan Constraint-Verletzungen behoben |
| **FSH Errors (22)** | Alle SUSHI-FSH-Fehler behoben |
| **VALUESET_INVALID** | ValueSet-Bindungsfehler behoben |
| **EXTENSION_NOT_ALLOWED** | Ungültige Extension-Verwendungen entfernt |
| **OTHER_CONSTRAINT** | Constraint-Verletzungen in verschiedenen Profilen behoben |
| **OPS-Codes** | Korrekte OPS-Codes und Display-Namen für Systemische Therapie |

### Profiländerungen

#### NGS-Bericht und Molekularpathologie

- `MII_PR_MTB_RNA_Fusion`: Refactoring mit Genetische-Implikationen Dokumentation, HGNC und Strand-Codes korrigiert
- `MII_PR_MTB_NGS_Bericht`: Fehlende Referenzen ergänzt
- `MII_PR_MTB_Genomic_Study_Analysis`: MolGen-Profil zur Reference-Constraint hinzugefügt
- `MII_PR_MTB_Molecular_Pathology_Report`: Vereinfachte Struktur

#### Behandlungsepisode und Therapie

- `MII_PR_MTB_Systemische_Therapie`: OPS-Code 8-54 und SNOMED-Kategorie hinzugefügt, performed[x] Slice entfernt
- `MII_PR_MTB_Therapieplan`: Reslicing von activity[extended] zur Behebung von MatchMultiple-Fehlern
- `MII_PR_MTB_Studieneinschluss_Anfrage`: supportingInfo Slicing auf #profile/resolve() geändert

#### IHC/ISH Profile

- `MII_PR_MTB_Immunohistochemistry`: code.coding Slicing-Diskriminator korrigiert
- `MII_PR_MTB_InSituHybridization`: Slicing-Probleme behoben, Dokumentation aktualisiert

#### Medikation

- Beispiele von `medicationReference` auf `medicationCodeableConcept` umgestellt

### Refactoring

- Bundle RuleSet: Relative URLs statt `urn:uuid:`
- activity[extended] Reslicing für CarePlan-Kompatibilität
- RNA Fusion Profil-Restrukturierung

### Dokumentation

- Strand-Orientierung Coding-Anleitung für RNA Fusion
- ISH IG-Dokumentation nach Refactoring aktualisiert
- Validierungslimitationen für GenomicStudyAnalysis dokumentiert
- Neue QA-Validierung Seite mit bekannten Validator-Einschränkungen

### Dependency Updates

| Paket | Version |
|-------|---------|
| `de.basisprofil.r4` | 1.5.4 |
| `kerndatensatz.biobank` | 2026.0.0 |
| `kerndatensatz.consent` | 2025.0.4 |
| `kerndatensatz.base` | 2026.0.0 |
| `kerndatensatz.medikation` | 2026.0.0 |
| `kerndatensatz.meta` | 2026.0.0 |
| `kerndatensatz.molgen` | 2026.0.4 |
| `kerndatensatz.onkologie` | 2026.0.0 |
| `kerndatensatz.patho` | 2026.0.0 |
| `kerndatensatz.studie` | 2026.0.0-ballot |
| `hl7.fhir.uv.genomics-reporting` | 3.0.0 |

### Bekannte Limitationen

Siehe [QA-Validierung](TechnischeImplementierung/QA-Validierung.page.md) für eine vollständige Liste der bekannten Validierungsprobleme.

**Zusammenfassung der verbleibenden Probleme:**
- Slicing-Evaluierung bei pattern-Diskriminator mit ValueSet (Validator-Limitation)
- Profile Mismatch bei Bundle-Validierung (Validator-Limitation)
- Neuere SNOMED CT Codes nicht auf TX-Server verfügbar
- HGNC Gene-Symbole nicht validierbar

### Breaking Changes seit Ballot

Die folgenden Breaking Changes wurden basierend auf Ballot-Feedback implementiert:

1. **Extension `MII_EX_MTB_Empfehlung_Publikation`:** `valueString` entfernt. Publikationsverweise können nur noch als `valueIdentifier` angegeben werden. Für URLs (z.B. Whitepaper, Leitlinien) kann `system=urn:ietf:rfc:3986` mit der vollständigen URL als `value` verwendet werden.

2. **Profil `MII_PR_MTB_Behandlungsepisode`:** `Einwilligung` von `supportingInfo` nach `investigation` verschoben. Dies vermeidet Slicing-Konflikte zwischen Einwilligung (Observation) und Vorbefund (DiagnosticReport oder Observation). Die Einwilligung wird nun über `investigation[Einwilligung].item` referenziert mit dem Code `LOINC#105511-0 "Was consent given"`.

3. **Profil `MII_PR_MTB_Immunohistochemistry`:** code.coding Slicing geschlossen, um sicherzustellen, dass nicht gleichzeitig ein spezifischer und generischer Code angegeben werden kann.

4. **Profil `MII_PR_MTB_Antrag_Kostenuebernahme`:** Fixer Wert von `status` von Pattern zu Fixed Value geändert.

5. **Profil `MII_PR_MTB_Ploidie`:** Pattern auf `code.coding` entfernt und entsprechender Slice eingefügt für zusätzliche Codings.

6. **Profil `MII_PR_MTB_BIOMARKER_HER2_STATUS`:** Pattern auf `code.coding` entfernt und entsprechender Slice eingefügt für zusätzliche Codings.

### Migrationshinweise

#### Von 2025.0.0-ballot zu 2026.0.0

1. **Einwilligung in Behandlungsepisode:** Verschieben Sie Einwilligungs-Referenzen von `supportingInfo` nach `investigation[Einwilligung].item`

2. **Publikationsverweise:** Konvertieren Sie `valueString` zu `valueIdentifier` in Publikations-Extensions

3. **Bundle fullUrl:** Ersetzen Sie `urn:uuid:` durch absolute HTTP URLs

4. **Medikation:** Wechseln Sie von `medicationReference` zu `medicationCodeableConcept` wo anwendbar

5. **SNOMED CT Codes:** Prüfen Sie, ob verwendete Codes in der International Edition verfügbar sind

---

**Version 2025.0.0-ballot** (Initial Ballot)

Datum: 2025-05-26

Initiale Version für die MII Ballot-Phase. Diese Version enthielt die grundlegenden Profile für das Molekulare Tumorboard Modul.
