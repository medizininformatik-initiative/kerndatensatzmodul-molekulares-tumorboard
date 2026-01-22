---
parent:
topic: ReleaseNotes
---

## {{page-title}}
Hier sind alle Änderungen aufgelistet.

## Version 2026.0.0 (2026-01-20)

Erste stabile Version des MII KDS-Moduls Molekulares Tumorboard nach erfolgreicher Ballot-Phase.

### Neue Profile und Funktionalität

Das Modul umfasst Profile für die strukturierte Erfassung von:

#### NGS-Befunde und Genomische Analysen
- `feat` **{{pagelink:NGSBericht}}**: Strukturierte Erfassung von Next-Generation-Sequencing Berichten mit GenomicStudy-basierten Analysen
- `feat` **{{pagelink:GenomicStudy}}**: Integration mit HL7 Genomics Reporting STU3 für genomische Studien und Analysen
- `feat` **Genomic Study Device**: Strukturierte Erfassung von Sequenzierungsgeräten (Sequencer, Library Preparation Kit, Sequencing Kit) in NGS-Workflows
- `feat` **Genomische Varianten**: Profile für SNVs ({{pagelink:EinfacheVariante}}), CNVs ({{pagelink:CopyNumberVariant}}), DNA-Fusionen ({{pagelink:DNAFusion}}), RNA-Fusionen ({{pagelink:RNAFusion}})
- `feat` **Biomarker**: Mutationslast ({{pagelink:Mutationslast}}), Mikrosatelliteninstabilität ({{pagelink:Mikrosatelliteninstabilitaet}}, {{pagelink:MSI}}), HRD Score ({{pagelink:HRDScore}}), BRCAness ({{pagelink:BRCAness}}), Ploidie ({{pagelink:Ploidie}})
- `feat` **Molekulare Biomarker**: Strukturierte Erfassung mit ValueSet für HGNC Gene Symbols und pharmakogenetische Marker

#### Molekularpathologie
- `feat` **Immunohistochemie**: Profile für IHC-Färbungen ({{pagelink:Immunohistochemistry}}), spezialisierte Profile für HER2 ({{pagelink:IHC_HER2}}), MMR ({{pagelink:IHC_MMR}}), PD-L1 ({{pagelink:IHC_PDL1}}), Phosphorylierung ({{pagelink:IHC_Phosphorylation}})
- `feat` **In-Situ-Hybridisierung**: Profile für ISH-Untersuchungen ({{pagelink:InSituHybridization}}) mit spezialisiertem HER2 ISH-Profil ({{pagelink:ISH_HER2}})
- `feat` **HER2-Status**: Kombiniertes Biomarker-Profil ({{pagelink:BiomarkerHER2Status}}) für diagnostische und therapeutische Implikationen
- `feat` **{{pagelink:MolecularPathologyReport}}**: DiagnosticReport für molekularpathologische Befunde mit Integration von IHC/ISH-Ergebnissen

#### Behandlungsepisode und Therapiemanagement
- `feat` **{{pagelink:Behandlungsepisode}}**: ClinicalImpression-basierte Erfassung von MTB-Empfehlungen und Therapieentscheidungen
- `feat` **Therapieempfehlungen**: Profile für Einzeltherapien ({{pagelink:TherapieempfehlungMedikation}}) und Kombinationstherapien ({{pagelink:TherapieempfehlungKombination}}, {{pagelink:TherapieempfehlungKombinationstherapieRequestGroup}})
- `feat` **Evidenzgraduierung**: Extension für Evidenzgrad-Dokumentation nach NCT-Kriterien mit Zusatzverweisen
- `feat` **{{pagelink:Therapieplan}}**: CarePlan für strukturierte Therapieplanung
- `feat` **{{pagelink:SystemischeTherapie}}**: MedicationStatement für durchgeführte Systemtherapien mit Dosisdichte-Extension
- `feat` **{{pagelink:ResponseBefund}}**: Observation für Therapieansprechen mit RECIST/iRECIST-Beurteilung
- `feat` **{{pagelink:FollowUpClinicalImpression}}**: ClinicalImpression für Follow-Up-Dokumentation mit Umsetzungsstatus

#### Kostenübernahme und Studieneinschluss
- `feat` **{{pagelink:AntragKostenuebernahme}}**: Claim für Kostenübernahme-Anträge bei Off-Label/Compassionate Use mit Antragsstadium-Extension
- `feat` **{{pagelink:AntwortKostenuebernahme}}**: ClaimResponse für Krankenversicherungs-Entscheidungen mit Ablehnungsgrund-Extension
- `feat` **{{pagelink:StudieneinschlussAnfrage}}**: ServiceRequest für Studieneinschluss-Anfragen
- `feat` **{{pagelink:Studie}}**: ResearchStudy-Profil für klinische Studien

#### Diagnostische Aufträge
- `feat` **{{pagelink:BiopsieAuftrag}}**: ServiceRequest für Rebiopsie/Neubiopsie mit Begründung-Extension
- `feat` **{{pagelink:HistologieEvaluationAuftrag}}**: ServiceRequest für histologische Reevaluationen
- `feat` **{{pagelink:HumangenetischeBeratungAuftrag}}**: ServiceRequest für humangenetische Beratungen

#### Weitere Profile
- `feat` **{{pagelink:DiagnosePrimaertumor}}**: Condition-Profil mit OncoTree-Kodierung und Tumorausbreitung
- `feat` **{{pagelink:Tumorzellgehalt}}**: Observation für Tumorzellgehalt mit Bestimmungsmethode
- `feat` **{{pagelink:DiagnostischeImplikation}}**: Diagnostische Bedeutung genomischer Befunde
- `feat` **{{pagelink:TherapeutischeImplikation}}**: Therapeutische Bedeutung genomischer Befunde mit Zulassungsstatus-Extension

### Terminologie und CodeSystems

- `feat` **MTB-spezifische CodeSystems**: 18 CodeSystems für MTB-spezifische Konzepte (Evidenzgrade, Therapiestatusgrund, Empfehlungsstatus, Follow-Up-Status, Genomic Analysis Method Types, etc.)
- `feat` **ValueSets**: 29 ValueSets für strukturierte Kodierung inkl. OncoTree, WHO-Grad ZNS, Molekulare Biomarker, MSI, MMR Expression
- `feat` **ConceptMaps**: Mappings von Therapiestatusgrund zu SNOMED CT und oBDS

### Technische Funktionalität

- `feat` **Mehrsprachigkeit (i18n)**: Vollständige Übersetzungen (de-DE, en) für alle 52 Profile, 18 CodeSystems und 29 ValueSets
- `feat` **QA-Validierung**: Dokumentation bekannter Validierungslimitationen (siehe {{pagelink:QAValidierung}})
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

---

## Version 2025.0.0-ballot (2025-05-26)

Initiale Ballot-Version für die MII Abstimmungsphase.
