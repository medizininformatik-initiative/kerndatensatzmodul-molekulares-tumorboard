Diese Seite dokumentiert den aktuellen Stand der FHIR-Validierung für das MII Modul Molekulares Tumorboard (MTB).

### Validierungsübersicht

Das Modul wird kontinuierlich gegen den FHIR R4 Standard und die definierten Profile validiert. Da Simplifier keinen öffentlichen QA-Report bereitstellt wie bei klassischen FHIR IG Publisher Builds, dokumentieren wir hier transparent den Validierungsstatus.

## Terminologie-Server und Validierungskonfiguration

**MII Terminology Server**: [https://termserv.mii.medizininformatik-initiative.de/fhir](https://termserv.mii.medizininformatik-initiative.de/fhir)

**Validierungskonfiguration**: [`advisor.json`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/blob/dev/advisor.json)

## Gefilterte Validierungsmeldungen

Diese Meldungen werden durch [`advisor.json`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/blob/dev/advisor.json) unterdrückt:

| Fehlercode | Kontext | Begründung |
|------------|---------|------------|
| `Terminology_TX_NoValid_16` | ImplementationGuide, StructureDefinition, ValueSet, CodeSystem | Externe Terminologie-Server-Limitation: TX-Server kann bestimmte Codes nicht validieren |
| `UNABLE_TO_INFER_CODESYSTEM` | ImplementationGuide, StructureDefinition, ValueSet, CodeSystem | CodeSystem kann vom Validator nicht automatisch abgeleitet werden |
| `Structural_VAL_Array_Empty` | ImplementationGuide.definition.page | Leeres Array in IG-Seitendefinition (Simplifier-Artefakt) |
| `MSG_DRAFT` | global | Erwartete Warnung für Ressourcen im `draft`-Status während Entwicklungsphase |
| `dom-6` | DomainResource | FHIR-Basisinvariante, bekanntes Validator-Artefakt |
| `eld-20` | ElementDefinition | ElementDefinition-Invariante, bekanntes Validator-Artefakt |
| `LOINC LIST filter` | Observations, Procedures | `There is no declared filter called LIST on code system http://loinc.org` — der CI-TX-Server unterstützt den LOINC `LIST`-Filter nicht (siehe unten) |
| `Unknown code '1381317004'` | SNOMED CT | Neuer SNOMED-CT-Code noch nicht in der TX-Server-Version verfügbar |
| `Reference_REF_CantMatchChoice` | global | Validator kann choice-type Referenzen nicht auflösen (bekannte Limitation) |
| `Validation_VAL_Profile_NoSnapshot` | global | Referenziertes Profil ohne Snapshot (z.B. aus Dependency-Paketen ohne Snapshots) |

### Profile-spezifische Probleme

| Profil | Kategorie | Beschreibung | Status |
|--------|-----------|--------------|--------|
| **Genomics Reporting** | Extension | HL7 Genomics Reporting Extensions haben bekannte Validierungswarnungen | 🔵 EXTERNAL |
| **GenomicStudyAnalysis** | Profile Mismatch | Bundle-Validierung kann Profilkette nicht auflösen (siehe unten) | 🔵 EXTERNAL |
| **Immunohistochemistry** | Slicing | code.coding Slicing mit pattern-Diskriminator und ValueSet (siehe unten) | 🔵 EXTERNAL |

### Profile Mismatch bei Bundle-Validierung

Bei der Validierung von Bundles mit verschachtelten Profil-Referenzen kann der FHIR-Validator `PROFILE_MISMATCH`-Fehler melden, obwohl die Ressourcen korrekt profiliert sind. Dies tritt insbesondere bei der `GenomicStudyAnalysis`-Ressource auf, die über eine Profilkette referenziert wird:

**Profilkette:**
- `MII_PR_MTB_NGS_Bericht` → referenziert `MII_PR_MTB_Genomic_Study`
- `MII_PR_MTB_Genomic_Study` → referenziert `MII_PR_MTB_Genomic_Study_Analysis`
- `MII_PR_MTB_Genomic_Study_Analysis` → basiert auf `MII_PR_MolGen_GenomicStudyAnalysis`

**Fehlermeldung:**
```
PROFILE_MISMATCH: Unable to find a profile match for Procedure/mii-exa-mtb-...-genomic-study-analysis-1
```

**Ursache:** Der FHIR-Validator kann diese mehrstufige Profilkette in Bundle-Kontexten nicht vollständig auflösen, da die Profil-Referenzen über mehrere IG-Pakete hinweg (MTB → MolGen → HL7 Genomics Reporting) verteilt sind.

**Status:** Dies sind Validator-Artefakte und keine tatsächlichen Konformitätsprobleme. Die Profile sind korrekt definiert und die Beispielressourcen konform.

### Immunohistochemistry code.coding Slicing

Das `MII_PR_MTB_Immunohistochemistry`-Profil verwendet ein Slicing auf `code.coding` mit zwei Slices:
- **spezifisch**: Für spezifische LOINC/SNOMED-Codes (ValueSet-gebunden)
- **generisch**: Für den generischen IHC-Code `1234806008` (fixiert)

**Fehlermeldung:**
```
Slicing cannot be evaluated: Could not match discriminator ($this) for slice spezifisch
```

**Ursache:** Der FHIR-Validator hat Schwierigkeiten, `#pattern`-Diskriminatoren auf `$this` mit ValueSet-gebundenen Slices zu evaluieren, da das Pattern nicht eindeutig aus dem ValueSet abgeleitet werden kann.

**Status:** Die Profilsemantik ist korrekt. Der Validator kann das Slicing nicht vollständig auswerten, aber die Instanzen sind konform.

### Terminologie-bezogene Probleme

| Terminologie | Beschreibung | Status |
|--------------|--------------|--------|
| **HGNC** | Gene-Symbole nicht auf allen TX-Servern verfügbar | 🔵 EXTERNAL |
| **Oncotree** | Tumor-Klassifikation extern, nicht FHIR-TX-validierbar | 🔵 EXTERNAL |
| **LOINC** | Panel-Codes für Genomics teilweise nicht validierbar; `LIST`-Filter nicht unterstützt (siehe unten) | 🔵 EXTERNAL |
| **SNOMED CT** | Neuere Codes (nach Juli 2025+) nicht auf MII-TX-Servern verfügbar | 🔵 EXTERNAL |

### LOINC LIST-Filter-Fehler in CI

Die CI-Validierung meldet 14 Fehler der Form:

```
Error from http://127.0.0.1:8090/fhir: Error: There is no declared filter called LIST on code system http://loinc.org
```

**Ursache:** Das `hl7.fhir.uv.genomics-reporting` IG (v3.0.0) verwendet ValueSets mit LOINC `LIST`-Filter-Ausdrücken. Der in der CI eingesetzte Terminologie-Server unterstützt diesen Filter nicht. Dies betrifft alle Ressourcen, die LOINC-Codes aus Genomics-Reporting-ValueSets verwenden.

**Betroffene Ressourcen (14):**

| Ressource | Element |
|-----------|---------|
| Bundle (Kim Musterperson) | GenomicStudyAnalysis, EinfacheVariante (TP53, PIK3R1), CNVariante (CCNE1) |
| Observation (Einfache Variante) | `value`, `method`, `component[0].value` |
| Observation (Copy Number Variant) | `component[0].value` |
| Observation (RNA Fusion) | `value` |
| Procedure (GenomicStudyAnalysis) | `extension.value` |

**Status:** 🔵 EXTERNAL — Der Fehler liegt im CI-TX-Server, nicht in den Profilen oder Beispielen. Die Meldung wird über `advisor.json` gefiltert.

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
| `de.medizininformatikinitiative.kerndatensatz.meta` | 2026.0.0 | MII Kerndatensatz Meta |
| `de.medizininformatikinitiative.kerndatensatz.base` | 2026.0.0 | MII Kerndatensatz Basis |
| `de.medizininformatikinitiative.kerndatensatz.onkologie` | 2026.0.3 | MII Modul Onkologie |
| `de.medizininformatikinitiative.kerndatensatz.molgen` | 2026.0.4 | MII Modul Molekulargenetik |
| `de.medizininformatikinitiative.kerndatensatz.patho` | 2026.0.0 | MII Modul Pathologie |
| `de.medizininformatikinitiative.kerndatensatz.consent` | 2026.0.0 | MII Modul Consent |
| `hl7.fhir.uv.genomics-reporting` | 3.0.0 | HL7 Genomics Reporting IG |

## Status-Legende

| Symbol | Status | Bedeutung |
|--------|--------|-----------|
| 🔴 | **TODO** | Aktiv zu behebende Fehler |
| 🟡 | **MONITOR** | Beobachten, ggf. Aktion erforderlich |
| 🔵 | **EXTERNAL** | Externes Problem, außerhalb unserer Kontrolle |
| ⚪ | **FILTERED** | Durch advisor.json gefiltert |

## Continuous Integration

Die FHIR-Validierung läuft automatisch bei jedem Push über GitHub Actions:

- **JAVA_FHIR_VALIDATION**: HL7 FHIR Validator (offiziell)
- **DOTNET_FHIR_VALIDATION**: Firely .NET Validator (alternativ)

🔗 [Aktuelle CI-Runs anzeigen](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/actions)

Die Validierungsergebnisse inkl. detailliertem Output sind als Artefakte in den Workflow-Runs verfügbar.

## Wie kann ich helfen?

Wenn Sie zur Verbesserung der Validierung beitragen möchten:

1. **Prüfen Sie** die Issues im GitHub Repository
2. **Suchen Sie** nach einem `TODO`-markierten Fehler, der Sie interessiert
3. **Erstellen Sie** einen Issue oder Pull Request im [GitHub Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard)
4. **Diskutieren Sie** in der MII-Community bei komplexen Validierungsfragen

**Hinweis**: Diese Seite wird manuell gepflegt. Für den aktuellsten technischen Stand siehe die CI-Runs im Repository.
