# Änderungshistorie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Änderungshistorie**

## Änderungshistorie

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### Änderungshistorie

Diese Seite hält die Änderungen zwischen den veröffentlichten Versionen des Moduls **Molekulares Tumorboard** fest, die neueste Version zuerst. Sie folgt [Keep a Changelog](https://keepachangelog.com/de/1.1.0/) und dem KDS-CalVer-Schema, das die Seite [Versionierung](version-history.md) beschreibt.

Jede Version erhält einen eigenen Abschnitt mit dem Release-Datum und den nach Kategorien gruppierten Änderungen:

* **Hinzugefügt** — neue Profile, Extensions, ValueSets, Suchparameter, Seiten.
* **Geändert** — geänderte Einschränkungen, Bindings, Hinweise oder Dokumentation.
* **Abgekündigt** — Artefakte, die noch existieren, aber nicht mehr genutzt werden sollen.
* **Entfernt** — zurückgezogene Artefakte.
* **Behoben** — Korrekturen von Fehlern.
* **Sicherheit** — Änderungen mit Auswirkung auf Sicherheit oder Datenschutz.

Kategorien ohne Inhalt werden weggelassen. Geht eine Änderung auf ein Issue oder einen Pull-Request zurück, wird darauf verlinkt.

##### Breaking Changes MÜSSEN berichtet und erläutert werden

Ein Versionsabschnitt mit einer Breaking Change ist erst vollständig, wenn er ausdrücklich und in diesem Changelog beantwortet:

* **Was genau sich geändert hat** zwischen den beiden Versionen — das Artefakt, das Element, die alte und die neue Einschränkung (nicht nur „Profil X wurde überarbeitet“).
* **Was das für bestehende Daten bedeutet:** Validieren Daten, die der Vorversion entsprachen, weiterhin gegen die neue Version? Falls nein: welche Ressourcen und Elemente sind betroffen, und wie zeigt sich der Fehler?
* **Was Implementierende tun sollten:** die Empfehlung der Autorinnen und Autoren zur Migration bestehender Daten auf die neue Version — Transformationsschritte, Standardwerte, Umkodierungs-Hinweise — oder die ausdrückliche Aussage, dass kein Migrationspfad bereitgestellt wird, und warum.

**Was als Breaking Change zählt** — behandeln Sie eine Änderung als Breaking Change, wenn sie eines der Folgenden tut, auch wenn sie klein wirkt: eine Kardinalität verschärft (`0..*` → `1..1`), eine Binding-Stärke erhöht (example → required), Codes aus einem required-ValueSet entfernt, ein Element oder einen Slice entfernt oder umbenennt, einen Typ einengt, eine Invariante oder eine Must-Support-Pflicht hinzufügt oder eine kanonische URL ändert. Im Zweifel: als Breaking Change berichten.

**Breaking für wen:** benennen Sie beide Perspektiven — *gespeicherte Daten* (Instanzen, die gegen die alte Version valide sind) und *Implementierungen* (Clients und Server, die dagegen gebaut wurden; ein entfernter Suchparameter bricht Implementierungen, während jede gespeicherte Instanz valide bleibt).

**Die Versionsnummer warnt niemanden.** Das KDS-Kalender-Versionsschema (`JJJJ.n.n`) trägt kein Major-Signal wie SemVer — dieser Changelog-Abschnitt ist die *einzige* Warnung, die Lesende bekommen.

**Verlinken Sie das technische Delta.** Ab der zweiten formalen Publikation aktivieren Sie den Versionsvergleich des IG Publishers (`version-comparison` in `sushi-config.yaml` — siehe die Seite [Versionierung](version-history.md) zur Einrichtung und ihren Voraussetzungen); er veröffentlicht einen maschinell erzeugten Vergleich unter `comparison-v<Vorversion>/index.html`. Verlinken Sie ihn aus dem Versionsabschnitt, damit die Erläuterung und der technische Diff nebeneinanderstehen.

Kennzeichnen Sie solche Einträge deutlich (zum Beispiel mit dem Präfix **BREAKING:**), damit sie beim Überfliegen des Abschnitts nicht übersehen werden können.

-------

#### Version 2026.0.1 (2026-03-30)

Dependency-Updates und Dokumentationsverbesserungen.

##### Dependency-Updates

* `fix` **Onkologie**: Update von 2026.0.1 auf 2026.0.3 (AppleDouble-Bereinigung, Snapshot-Korrekturen, Extension-Versions-Fix)
* `fix` **Consent**: Update von 2025.0.4 auf 2026.0.0 (2026-Release)

##### Dokumentation

* `feat` **QA-Validierung**: Seite vollständig überarbeitet — alle `advisor.json`-Filter dokumentiert, LOINC LIST-Filter-Fehler beschrieben, externe Abhängigkeiten aktualisiert (siehe [QAValidierung](implementer-guidance.md))

##### Build-System

* `fix` **package.bake.yaml**: Anpassung für lokalen Build mit `--input fsh-generated/resources` und `sushi --snapshot`

##### Abhängigkeiten

* de.basisprofil.r4 1.5.4
* kerndatensatz.biobank 2026.0.0
* kerndatensatz.consent 2026.0.0
* kerndatensatz.base 2026.0.0
* kerndatensatz.medikation 2026.0.0
* kerndatensatz.meta 2026.0.0
* kerndatensatz.molgen 2026.0.4
* kerndatensatz.onkologie 2026.0.3
* kerndatensatz.patho 2026.0.0
* kerndatensatz.studie 2026.0.2
* hl7.fhir.uv.genomics-reporting 3.0.0

#### Version 2026.0.0 (2026-01-20)

Erste stabile Version des MII KDS-Moduls Molekulares Tumorboard nach erfolgreicher Ballot-Phase.

##### Neue Profile und Funktionalität

Das Modul umfasst Profile für die strukturierte Erfassung von:

###### NGS-Befunde und Genomische Analysen

* `feat` **[NGSBericht](StructureDefinition-mii-pr-mtb-ngs-bericht.md)**: Strukturierte Erfassung von Next-Generation-Sequencing Berichten mit GenomicStudy-basierten Analysen
* `feat` **[GenomicStudy](StructureDefinition-mii-pr-mtb-genomic-study.md)**: Integration mit HL7 Genomics Reporting STU3 für genomische Studien und Analysen
* `feat` **Genomic Study Device**: Strukturierte Erfassung von Sequenzierungsgeräten (Sequencer, Library Preparation Kit, Sequencing Kit) in NGS-Workflows
* `feat` **Genomische Varianten**: Profile für SNVs ([EinfacheVariante](StructureDefinition-mii-pr-mtb-einfache-variante.md)), CNVs ([CopyNumberVariant](StructureDefinition-mii-pr-mtb-copy-number-variant.md)), DNA-Fusionen ([DNAFusion](StructureDefinition-mii-pr-mtb-dna-fusion.md)), RNA-Fusionen ([RNAFusion](StructureDefinition-mii-pr-mtb-rna-fusion.md))
* `feat` **Biomarker**: Mutationslast ([Mutationslast](StructureDefinition-mii-pr-mtb-mutationslast.md)), Mikrosatelliteninstabilität ([Mikrosatelliteninstabilitaet](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.md), [MSI](StructureDefinition-mii-pr-mtb-msi.md)), HRD Score ([HRDScore](StructureDefinition-mii-pr-mtb-hrd-score.md)), BRCAness ([BRCAness](StructureDefinition-mii-pr-mtb-brcaness.md)), Ploidie ([Ploidie](StructureDefinition-mii-pr-mtb-ploidie.md))
* `feat` **Molekulare Biomarker**: Strukturierte Erfassung mit ValueSet für HGNC Gene Symbols und pharmakogenetische Marker

###### Molekularpathologie

* `feat` **Immunohistochemie**: Profile für IHC-Färbungen ([Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md)), spezialisierte Profile für HER2 ([IHC_HER2](StructureDefinition-mii-pr-mtb-immunohistochemistry-her2.md)), MMR ([IHC_MMR](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.md)), PD-L1 ([IHC_PDL1](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.md)), Phosphorylierung ([IHC_Phosphorylation](StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.md))
* `feat` **In-Situ-Hybridisierung**: Profile für ISH-Untersuchungen ([InSituHybridization](StructureDefinition-mii-pr-mtb-insituhybridization.md)) mit spezialisiertem HER2 ISH-Profil ([ISH_HER2](StructureDefinition-mii-pr-mtb-insituhybridization-her2.md))
* `feat` **HER2-Status**: Kombiniertes Biomarker-Profil ([BiomarkerHER2Status](StructureDefinition-mii-pr-mtb-biomarker-her2-status.md)) für diagnostische und therapeutische Implikationen
* `feat` **[MolecularPathologyReport](StructureDefinition-mii-pr-mtb-molecular-pathology-report.md)**: DiagnosticReport für molekularpathologische Befunde mit Integration von IHC/ISH-Ergebnissen

###### Behandlungsepisode und Therapiemanagement

* `feat` **[Behandlungsepisode](StructureDefinition-mii-pr-mtb-consent-given.md)**: ClinicalImpression-basierte Erfassung von MTB-Empfehlungen und Therapieentscheidungen
* `feat` **Therapieempfehlungen**: Profile für Einzeltherapien ([TherapieempfehlungMedikation](StructureDefinition-mii-pr-mtb-therapieempfehlung.md)) und Kombinationstherapien ([TherapieempfehlungKombination](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md), [TherapieempfehlungKombinationstherapieRequestGroup](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md))
* `feat` **Evidenzgraduierung**: Extension für Evidenzgrad-Dokumentation nach NCT-Kriterien mit Zusatzverweisen
* `feat` **[Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)**: CarePlan für strukturierte Therapieplanung
* `feat` **[SystemischeTherapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md)**: MedicationStatement für durchgeführte Systemtherapien mit Dosisdichte-Extension
* `feat` **[ResponseBefund](StructureDefinition-mii-pr-mtb-response-befund.md)**: Observation für Therapieansprechen mit RECIST/iRECIST-Beurteilung
* `feat` **[FollowUpClinicalImpression](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.md)**: ClinicalImpression für Follow-Up-Dokumentation mit Umsetzungsstatus

###### Kostenübernahme und Studieneinschluss

* `feat` **[AntragKostenuebernahme](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md)**: Claim für Kostenübernahme-Anträge bei Off-Label/Compassionate Use mit Antragsstadium-Extension
* `feat` **[AntwortKostenuebernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.md)**: ClaimResponse für Krankenversicherungs-Entscheidungen mit Ablehnungsgrund-Extension
* `feat` **[StudieneinschlussAnfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md)**: ServiceRequest für Studieneinschluss-Anfragen
* `feat` **[Studie](StructureDefinition-mii-pr-mtb-studie.md)**: ResearchStudy-Profil für klinische Studien

###### Diagnostische Aufträge

* `feat` **[BiopsieAuftrag](StructureDefinition-mii-pr-mtb-biopsie-auftrag.md)**: ServiceRequest für Rebiopsie/Neubiopsie mit Begründung-Extension
* `feat` **[HistologieEvaluationAuftrag](StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.md)**: ServiceRequest für histologische Reevaluationen
* `feat` **[HumangenetischeBeratungAuftrag](StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.md)**: ServiceRequest für humangenetische Beratungen

###### Weitere Profile

* `feat` **[DiagnosePrimaertumor](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md)**: Condition-Profil mit OncoTree-Kodierung und Tumorausbreitung
* `feat` **[Tumorzellgehalt](StructureDefinition-mii-pr-mtb-tumorzellgehalt.md)**: Observation für Tumorzellgehalt mit Bestimmungsmethode
* `feat` **[DiagnostischeImplikation](StructureDefinition-mii-pr-mtb-diagnostische-implikation.md)**: Diagnostische Bedeutung genomischer Befunde
* `feat` **[TherapeutischeImplikation](StructureDefinition-mii-pr-mtb-therapeutische-implikation.md)**: Therapeutische Bedeutung genomischer Befunde mit Zulassungsstatus-Extension

##### Terminologie und CodeSystems

* `feat` **MTB-spezifische CodeSystems**: 18 CodeSystems für MTB-spezifische Konzepte (Evidenzgrade, Therapiestatusgrund, Empfehlungsstatus, Follow-Up-Status, Genomic Analysis Method Types, etc.)
* `feat` **ValueSets**: 29 ValueSets für strukturierte Kodierung inkl. OncoTree, WHO-Grad ZNS, Molekulare Biomarker, MSI, MMR Expression
* `feat` **ConceptMaps**: Mappings von Therapiestatusgrund zu SNOMED CT und oBDS

##### Technische Funktionalität

* `feat` **Mehrsprachigkeit (i18n)**: Vollständige Übersetzungen (de-DE, en) für alle 52 Profile, 18 CodeSystems und 29 ValueSets
* `feat` **QA-Validierung**: Dokumentation bekannter Validierungslimitationen (siehe [QAValidierung](implementer-guidance.md))
* `feat` **Beispieldaten**: 120+ Beispielinstanzen demonstrieren typische MTB-Szenarien
* `feat` **CapabilityStatement**: Vollständige Server-Capability-Dokumentation

##### Abhängigkeiten

* de.basisprofil.r4 1.5.4
* kerndatensatz.biobank 2026.0.0
* kerndatensatz.consent 2025.0.4
* kerndatensatz.base 2026.0.0
* kerndatensatz.medikation 2026.0.0
* kerndatensatz.meta 2026.0.0
* kerndatensatz.molgen 2026.0.4
* kerndatensatz.onkologie 2026.0.0
* kerndatensatz.patho 2026.0.0
* kerndatensatz.studie 2026.0.1
* hl7.fhir.uv.genomics-reporting 3.0.0

#### Version 2025.0.0-ballot (2025-05-26)

Initiale Ballot-Version für die MII Abstimmungsphase.

