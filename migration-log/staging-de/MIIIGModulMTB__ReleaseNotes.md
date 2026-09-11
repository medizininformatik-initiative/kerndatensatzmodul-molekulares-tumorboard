Hier sind alle Änderungen aufgelistet.

## Version 2026.0.1 (2026-03-30)

Dependency-Updates und Dokumentationsverbesserungen.

### Dependency-Updates

- `fix` **Onkologie**: Update von 2026.0.1 auf 2026.0.3 (AppleDouble-Bereinigung, Snapshot-Korrekturen, Extension-Versions-Fix)
- `fix` **Consent**: Update von 2025.0.4 auf 2026.0.0 (2026-Release)

### Dokumentation

- `feat` **QA-Validierung**: Seite vollständig überarbeitet — alle `advisor.json`-Filter dokumentiert, LOINC LIST-Filter-Fehler beschrieben, externe Abhängigkeiten aktualisiert (siehe [QAValidierung](implementer-guidance.html))

### Build-System

- `fix` **package.bake.yaml**: Anpassung für lokalen Build mit `--input fsh-generated/resources` und `sushi --snapshot`

### Abhängigkeiten

- de.basisprofil.r4 1.5.4
- kerndatensatz.biobank 2026.0.0
- kerndatensatz.consent 2026.0.0
- kerndatensatz.base 2026.0.0
- kerndatensatz.medikation 2026.0.0
- kerndatensatz.meta 2026.0.0
- kerndatensatz.molgen 2026.0.4
- kerndatensatz.onkologie 2026.0.3
- kerndatensatz.patho 2026.0.0
- kerndatensatz.studie 2026.0.2
- hl7.fhir.uv.genomics-reporting 3.0.0

## Version 2026.0.0 (2026-01-20)

Erste stabile Version des MII KDS-Moduls Molekulares Tumorboard nach erfolgreicher Ballot-Phase.

### Neue Profile und Funktionalität

Das Modul umfasst Profile für die strukturierte Erfassung von:

#### NGS-Befunde und Genomische Analysen
- `feat` **[NGSBericht](StructureDefinition-mii-pr-mtb-ngs-bericht.html)**: Strukturierte Erfassung von Next-Generation-Sequencing Berichten mit GenomicStudy-basierten Analysen
- `feat` **[GenomicStudy](StructureDefinition-mii-pr-mtb-genomic-study.html)**: Integration mit HL7 Genomics Reporting STU3 für genomische Studien und Analysen
- `feat` **Genomic Study Device**: Strukturierte Erfassung von Sequenzierungsgeräten (Sequencer, Library Preparation Kit, Sequencing Kit) in NGS-Workflows
- `feat` **Genomische Varianten**: Profile für SNVs ([EinfacheVariante](StructureDefinition-mii-pr-mtb-einfache-variante.html)), CNVs ([CopyNumberVariant](StructureDefinition-mii-pr-mtb-copy-number-variant.html)), DNA-Fusionen ([DNAFusion](StructureDefinition-mii-pr-mtb-dna-fusion.html)), RNA-Fusionen ([RNAFusion](StructureDefinition-mii-pr-mtb-rna-fusion.html))
- `feat` **Biomarker**: Mutationslast ([Mutationslast](StructureDefinition-mii-pr-mtb-mutationslast.html)), Mikrosatelliteninstabilität ([Mikrosatelliteninstabilitaet](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.html), [MSI](StructureDefinition-mii-pr-mtb-msi.html)), HRD Score ([HRDScore](StructureDefinition-mii-pr-mtb-hrd-score.html)), BRCAness ([BRCAness](StructureDefinition-mii-pr-mtb-brcaness.html)), Ploidie ([Ploidie](StructureDefinition-mii-pr-mtb-ploidie.html))
- `feat` **Molekulare Biomarker**: Strukturierte Erfassung mit ValueSet für HGNC Gene Symbols und pharmakogenetische Marker

#### Molekularpathologie
- `feat` **Immunohistochemie**: Profile für IHC-Färbungen ([Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.html)), spezialisierte Profile für HER2 ([IHC_HER2](StructureDefinition-mii-pr-mtb-immunohistochemistry-her2.html)), MMR ([IHC_MMR](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.html)), PD-L1 ([IHC_PDL1](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.html)), Phosphorylierung ([IHC_Phosphorylation](StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.html))
- `feat` **In-Situ-Hybridisierung**: Profile für ISH-Untersuchungen ([InSituHybridization](StructureDefinition-mii-pr-mtb-insituhybridization.html)) mit spezialisiertem HER2 ISH-Profil ([ISH_HER2](StructureDefinition-mii-pr-mtb-insituhybridization-her2.html))
- `feat` **HER2-Status**: Kombiniertes Biomarker-Profil ([BiomarkerHER2Status](StructureDefinition-mii-pr-mtb-biomarker-her2-status.html)) für diagnostische und therapeutische Implikationen
- `feat` **[MolecularPathologyReport](StructureDefinition-mii-pr-mtb-molecular-pathology-report.html)**: DiagnosticReport für molekularpathologische Befunde mit Integration von IHC/ISH-Ergebnissen

#### Behandlungsepisode und Therapiemanagement
- `feat` **[Behandlungsepisode](StructureDefinition-mii-pr-mtb-consent-given.html)**: ClinicalImpression-basierte Erfassung von MTB-Empfehlungen und Therapieentscheidungen
- `feat` **Therapieempfehlungen**: Profile für Einzeltherapien ([TherapieempfehlungMedikation](StructureDefinition-mii-pr-mtb-therapieempfehlung.html)) und Kombinationstherapien ([TherapieempfehlungKombination](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.html), [TherapieempfehlungKombinationstherapieRequestGroup](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.html))
- `feat` **Evidenzgraduierung**: Extension für Evidenzgrad-Dokumentation nach NCT-Kriterien mit Zusatzverweisen
- `feat` **[Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.html)**: CarePlan für strukturierte Therapieplanung
- `feat` **[SystemischeTherapie](StructureDefinition-mii-pr-mtb-systemische-therapie.html)**: MedicationStatement für durchgeführte Systemtherapien mit Dosisdichte-Extension
- `feat` **[ResponseBefund](StructureDefinition-mii-pr-mtb-response-befund.html)**: Observation für Therapieansprechen mit RECIST/iRECIST-Beurteilung
- `feat` **[FollowUpClinicalImpression](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.html)**: ClinicalImpression für Follow-Up-Dokumentation mit Umsetzungsstatus

#### Kostenübernahme und Studieneinschluss
- `feat` **[AntragKostenuebernahme](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.html)**: Claim für Kostenübernahme-Anträge bei Off-Label/Compassionate Use mit Antragsstadium-Extension
- `feat` **[AntwortKostenuebernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.html)**: ClaimResponse für Krankenversicherungs-Entscheidungen mit Ablehnungsgrund-Extension
- `feat` **[StudieneinschlussAnfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.html)**: ServiceRequest für Studieneinschluss-Anfragen
- `feat` **[Studie](StructureDefinition-mii-pr-mtb-studie.html)**: ResearchStudy-Profil für klinische Studien

#### Diagnostische Aufträge
- `feat` **[BiopsieAuftrag](StructureDefinition-mii-pr-mtb-biopsie-auftrag.html)**: ServiceRequest für Rebiopsie/Neubiopsie mit Begründung-Extension
- `feat` **[HistologieEvaluationAuftrag](StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.html)**: ServiceRequest für histologische Reevaluationen
- `feat` **[HumangenetischeBeratungAuftrag](StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.html)**: ServiceRequest für humangenetische Beratungen

#### Weitere Profile
- `feat` **[DiagnosePrimaertumor](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.html)**: Condition-Profil mit OncoTree-Kodierung und Tumorausbreitung
- `feat` **[Tumorzellgehalt](StructureDefinition-mii-pr-mtb-tumorzellgehalt.html)**: Observation für Tumorzellgehalt mit Bestimmungsmethode
- `feat` **[DiagnostischeImplikation](StructureDefinition-mii-pr-mtb-diagnostische-implikation.html)**: Diagnostische Bedeutung genomischer Befunde
- `feat` **[TherapeutischeImplikation](StructureDefinition-mii-pr-mtb-therapeutische-implikation.html)**: Therapeutische Bedeutung genomischer Befunde mit Zulassungsstatus-Extension

### Terminologie und CodeSystems

- `feat` **MTB-spezifische CodeSystems**: 18 CodeSystems für MTB-spezifische Konzepte (Evidenzgrade, Therapiestatusgrund, Empfehlungsstatus, Follow-Up-Status, Genomic Analysis Method Types, etc.)
- `feat` **ValueSets**: 29 ValueSets für strukturierte Kodierung inkl. OncoTree, WHO-Grad ZNS, Molekulare Biomarker, MSI, MMR Expression
- `feat` **ConceptMaps**: Mappings von Therapiestatusgrund zu SNOMED CT und oBDS

### Technische Funktionalität

- `feat` **Mehrsprachigkeit (i18n)**: Vollständige Übersetzungen (de-DE, en) für alle 52 Profile, 18 CodeSystems und 29 ValueSets
- `feat` **QA-Validierung**: Dokumentation bekannter Validierungslimitationen (siehe [QAValidierung](implementer-guidance.html))
- `feat` **Beispieldaten**: 120+ Beispielinstanzen demonstrieren typische MTB-Szenarien
- `feat` **CapabilityStatement**: Vollständige Server-Capability-Dokumentation

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

## Version 2025.0.0-ballot (2025-05-26)

Initiale Ballot-Version für die MII Abstimmungsphase.
