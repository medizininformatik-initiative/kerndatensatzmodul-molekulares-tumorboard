---
parent:
topic: ReleaseNotes
---

## {{page-title}}
Hier sind alle Änderungen aufgelistet.

## Version 2026.0.0 (2026-01-20)

Erste stabile Version des MII KDS-Moduls Molekulares Tumorboard nach erfolgreicher Ballot-Phase.

### Modulinhalt

Das Modul umfasst Profile für die strukturierte Erfassung von:

- **NGS-Befunde**: Genomische Varianten (SNV, CNV, DNA-/RNA-Fusionen), Mutationslast (TMB), Mikrosatelliteninstabilität (MSI), Biomarker (HRD, BRCAness)
- **Molekularpathologie**: Immunohistochemie (IHC), In-Situ-Hybridisierung (ISH), HER2-Status, PD-L1, MMR
- **Behandlungsepisode**: Therapieempfehlungen, Therapiepläne, Systemische Therapie, Follow-Up
- **Kostenübernahme**: Anträge und Antworten
- **Studieneinschluss**: Anfragen und Studienverwaltung

### Funktionalität

- **Genomic Study Device**: Strukturierte Erfassung von Sequenzierungsgeräten in NGS-Workflows
- **Mehrsprachigkeit (i18n)**: Vollständige Übersetzungen (de-DE, en) für alle 52 Profile
- **QA-Validierung**: Dokumentation bekannter Validierungslimitationen (siehe {{pagelink:TechnischeImplementierung/QA-Validierung}})

### Abhängigkeiten

- de.basisprofil.r4 1.5.4
- kerndatensatz.biobank 2026.0.0
- kerndatensatz.consent 2025.0.4
- kerndatensatz.base 2026.0.0
- kerndatensatz.medikation 2026.0.0
- kerndatensatz.meta 2026.0.0
- kerndatensatz.molgen 2026.0.4
- kerndatensatz.onkologie 2026.0.0
- kerndatensatz.patho 2026.0.0
- kerndatensatz.studie 2026.0.1
- hl7.fhir.uv.genomics-reporting 3.0.0

---

## Version 2025.0.0-ballot (2025-05-26)

Initiale Ballot-Version für die MII Abstimmungsphase.
