# Profile - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Profile**

## Profile

Diese Seite listet die FHIR-Profile des Moduls **Molekulares Tumorboard** (Namenskonvention `MII_PR_MTB_<Name>`). Die technischen Detailseiten erzeugt der IG Publisher automatisch; die vollständige Liste steht auf der [Artefakt-Übersicht](artifacts.md). Die Extensions des Moduls stehen auf der Seite [Extensions](extensions.md).

> **Written during migration - review before release.** Die Profile sind in vier Gruppen organisiert, die das Informationsmodell des Moduls widerspiegeln:

* **Behandlungsepisode** — Diagnose, Vortherapien, Proben, Einwilligung und der MTB-Beschluss (Therapieplan mit Therapie-, Studieneinschluss- und weiteren Empfehlungen).
* **NGS-Bericht** — Genomic Study und Analysen, Varianten (SNV, CNV, DNA-/ RNA-Fusion), molekulare Biomarker und genetische Implikationen.
* **Molekular-Pathologie-Befund** — Immunhistochemie und In-situ-Hybridisierung.
* **Follow-Up** — umgesetzte Therapien, Response-Befunde und Kostenübernahme.

### Genetische Implikationen

Genetische Implikationen beschreiben die klinische Bedeutung von genetischen Varianten. Im Kontext des Molekularen Tumorboards werden zwei Arten von Implikationen unterschieden:

**Diagnostische Implikation**: beschreibt die diagnostische Relevanz einer Variante, z. B. für die Klassifikation eines Tumors oder die Bestätigung einer Diagnose — [DiagnostischeImplikation](StructureDefinition-mii-pr-mtb-diagnostische-implikation.md).

**Therapeutische Implikation**: beschreibt die therapeutische Relevanz einer Variante, z. B. als prädiktiver Biomarker für das Ansprechen auf eine zielgerichtete Therapie — [TherapeutischeImplikation](StructureDefinition-mii-pr-mtb-therapeutische-implikation.md).

Für die Beschreibung der funktionellen Auswirkungen einer Variante auf Proteinstruktur und -funktion wird das Profil [Molekulare Konsequenz](https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz&fhirVersion=R4) aus dem MolGen-Modul verwendet.

Die genetischen Implikationen sind typischerweise mit den Varianten-Profilen verknüpft: [Einfache Variante](StructureDefinition-mii-pr-mtb-einfache-variante.md), [Copy Number Variant](StructureDefinition-mii-pr-mtb-copy-number-variant.md), [DNA-Fusion](StructureDefinition-mii-pr-mtb-dna-fusion.md), [RNA-Fusion](StructureDefinition-mii-pr-mtb-rna-fusion.md).

### In-situ-Hybridisierung (ISH)

Die In-situ-Hybridisierung (ISH) ist eine molekularbiologische Methode zum Nachweis von Nukleinsäuren (DNA/RNA) direkt im Gewebsschnitt. Sie wird in der Onkologie häufig zur Detektion von Genamplifikationen, chromosomalen Translokationen und Fusionsgenen eingesetzt.

| | |
| :--- | :--- |
| [MII_PR_MTB_Biomarker_InSituHybridization](StructureDefinition-mii-pr-mtb-insituhybridization.md) | Generisches ISH-Profil für alle ISH-Methoden |
| [MII_PR_MTB_INSITUHYBRIDIZATION_HER2](StructureDefinition-mii-pr-mtb-insituhybridization-her2.md) | Spezialisiertes Profil für HER2/ERBB2-FISH |

Unterstützte Methoden:

* **FISH** (Fluorescence In Situ Hybridization) — Standard für HER2-Amplifikation
* **CISH** (Chromogenic In Situ Hybridization) — lichtmikroskopisch auswertbar
* **SISH** (Silver In Situ Hybridization) — silberverstärkte Detektion

Klinische Anwendungen:

* HER2/ERBB2-Amplifikation bei Mamma- und Magenkarzinom
* ALK-Translokationen bei NSCLC
* ROS1-Rearrangements
* BCR-ABL-Fusionen
* MYC/BCL2/BCL6 bei Lymphomen

