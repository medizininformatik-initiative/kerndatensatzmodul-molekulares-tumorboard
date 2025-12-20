---
parent:
topic: QAValidierung
---

## {{page-title}}

Diese Seite dokumentiert den aktuellen Stand der FHIR-Validierung für das MII Modul Molekulares Tumorboard (MTB).

### Validierungsübersicht

Das Modul wird kontinuierlich gegen den FHIR R4 Standard und die definierten Profile validiert. Da Simplifier keinen öffentlichen QA-Report bereitstellt wie bei klassischen FHIR IG Publisher Builds, dokumentieren wir hier transparent den Validierungsstatus.

---

## Terminologie-Server und Validierungskonfiguration

**MII Terminology Server**: [https://termserv.mii.medizininformatik-initiative.de/fhir](https://termserv.mii.medizininformatik-initiative.de/fhir)

**Validierungskonfiguration**: [`advisor.json`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/blob/dev/advisor.json)

---

## Gefilterte Validierungsmeldungen

Diese Meldungen werden durch `advisor.json` unterdrückt:

| Fehlercode | Filter | Begründung |
|------------|--------|------------|
| `Terminology_TX_NoValid_16` | ImplementationGuide Parameter | Externe Terminologie-Server-Limitation |
| `MSG_DRAFT` | SearchParameter Extension | Erwartete Warnung während Entwicklungsphase |
| `dom-6` | DomainResource | FHIR Basisregel, bekanntes Validator-Artefakt |

---

## Bekannte Validierungsprobleme

### Profile-spezifische Probleme

| Profil | Kategorie | Beschreibung | Status |
|--------|-----------|--------------|--------|
| **Genomics Reporting** | Extension | HL7 Genomics Reporting Extensions haben bekannte Validierungswarnungen | 🔵 EXTERNAL |
| **Therapieplan** | Slicing | CarePlan.activity Slicing mit komplexer Struktur | 🟡 MONITOR |

### Terminologie-bezogene Probleme

| Terminologie | Beschreibung | Status |
|--------------|--------------|--------|
| **HGNC** | Gene-Symbole nicht auf allen TX-Servern verfügbar | 🔵 EXTERNAL |
| **Oncotree** | Tumor-Klassifikation extern, nicht FHIR-TX-validierbar | 🔵 EXTERNAL |
| **ATC** | Medikamenten-Codes versionsspezifisch | 🟡 MONITOR |
| **LOINC** | Panel-Codes für Genomics teilweise nicht validierbar | 🔵 EXTERNAL |
| **SNOMED CT** | Neuere Codes (2024+) nicht auf TX-Servern verfügbar | 🔵 EXTERNAL |

### Nicht-validierbare SNOMED CT Codes

Die folgenden SNOMED CT Codes sind korrekt, aber neuer als die auf dem Terminologie-Server verfügbare Version. Sie können daher nicht automatisch validiert werden:

#### In Situ Hybridization (ISH) Methoden

| Code | Display | Verwendung |
|------|---------|------------|
| `1363313004` | In situ hybridization technique (qualifier value) | ISH Methode (generisch) |
| `1303773004` | Fluorescence in situ hybridization technique (qualifier value) | FISH Methode |
| `787997001` | Chromogenic in situ hybridization (qualifier value) | CISH Methode |
| `787998006` | Silver in situ hybridization (qualifier value) | SISH Methode |

#### In Situ Hybridization Observable Entities

| Code | Display | Verwendung |
|------|---------|------------|
| `1365744007` | Ratio of erb-b2 receptor tyrosine kinase 2 to chromosome 17 centromere signals per cell in malignant neoplasm of breast in excised tissue specimen by in situ hybridization technique (observable entity) | HER2/CEP17 Ratio ISH |
| `1365743001` | Human epidermal growth factor receptor 2 gene copy number in malignant neoplasm of breast in excised tissue specimen by in situ hybridization technique (observable entity) | HER2 Kopienzahl ISH |
| `1365742006` | Human epidermal growth factor receptor 2/centromeric probe 17 ratio in malignant neoplasm of breast in excised tissue specimen by in situ hybridization technique (observable entity) | HER2/CEP17 Ratio (alternativ) |

#### Weitere neuere SNOMED CT Codes

| Code | Display | Verwendung |
|------|---------|------------|
| `1234806008` | Observation using immunohistochemistry (observable entity) | IHC Observation (generisch) |
| `12645001` | Gene amplification (finding) | Interpretation ISH |

### Externe Abhängigkeiten

| Paket | Version | Beschreibung |
|-------|---------|--------------|
| `de.medizininformatik-initiative.kerndatensatz.meta` | 2025.0.0 | MII Kerndatensatz Meta |
| `de.medizininformatik-initiative.kerndatensatz.onkologie` | 2026.0.x | MII Modul Onkologie (Diagnose-Profile) |
| `hl7.fhir.uv.genomics-reporting` | 3.0.0 | HL7 Genomics Reporting IG |

---

## Status-Legende

| Symbol | Status | Bedeutung |
|--------|--------|-----------|
| 🔴 | **TODO** | Aktiv zu behebende Fehler |
| 🟡 | **MONITOR** | Beobachten, ggf. Aktion erforderlich |
| 🔵 | **EXTERNAL** | Externes Problem, außerhalb unserer Kontrolle |
| ⚪ | **FILTERED** | Durch advisor.json gefiltert |

---

## Continuous Integration

Die FHIR-Validierung läuft automatisch bei jedem Push über GitHub Actions:

- **JAVA_FHIR_VALIDATION**: HL7 FHIR Validator (offiziell)
- **DOTNET_FHIR_VALIDATION**: Firely .NET Validator (alternativ)

🔗 [Aktuelle CI-Runs anzeigen](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/actions)

Die Validierungsergebnisse inkl. detailliertem Output sind als Artefakte in den Workflow-Runs verfügbar.

---

## Wie kann ich helfen?

Wenn Sie zur Verbesserung der Validierung beitragen möchten:

1. **Prüfen Sie** die Issues im GitHub Repository
2. **Suchen Sie** nach einem `TODO`-markierten Fehler, der Sie interessiert
3. **Erstellen Sie** einen Issue oder Pull Request im [GitHub Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard)
4. **Diskutieren Sie** in der MII-Community bei komplexen Validierungsfragen

---

**Hinweis**: Diese Seite wird manuell gepflegt. Für den aktuellsten technischen Stand siehe die CI-Runs im Repository.
