# Artefaktübersicht - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Artefaktübersicht**

## Artefaktübersicht

 Für die aktuelle Seite ist keine Übersetzung verfügbar, daher wurde sie in der Standardsprache dargestellt. 

Diese Seite bietet eine Liste der FHIR-Artefakte, die in diesem Implementierungsleitfaden definiert sind.

### Verhalten: CapabilityStatements 

Die folgenden Artefakte definieren die spezifischen Fähigkeiten, die verschiedene Systemtypen haben müssen, um diesem Implementierungsleitfaden zu entsprechen. Von Systemen, die mit dem Implementierungsleitfaden konform sind, wird erwartet, dass sie die Konformität mit einem oder mehreren der folgenden Capability Statements deklarieren.

| | |
| :--- | :--- |
| [ MII CPS MTB CapabilityStatement  ](CapabilityStatement-mii-cps-mtb-capabilitystatement.md) | Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul MTB der Medizininformatik Initiative zu implementieren. |

### Strukturen: Logische Modelle 

Diese definieren Datenmodelle, die den von diesem Implementierungsleitfaden abgedeckten Bereich in geschäftsfreundlicheren Begriffen darstellen als die zugrunde liegenden FHIR-Ressourcen.

| | |
| :--- | :--- |
| [ DNPM MTB Care Plan  ](StructureDefinition-dnpm-lm-care-plan.md) | Logical Model for a single entry in the DNPM DIP MTB Patient Record carePlans array |
| [ DNPM NGS Report  ](StructureDefinition-dnpm-lm-ngs-report.md) | Logical Model for a single entry in the DNPM DIP MTB Patient Record ngsReports array |
| [ DNPM Patient Record  ](StructureDefinition-dnpm-lm-patient-record.md) | Logical Model for the DNPM DIP MTB Patient Record JSON structure (all 19 top-level keys) |
| [ MII LM Molekulares Tumorboard  ](StructureDefinition-mii-lm-mtb.md) | MII Logical Model Modul Molekulares Tumorboard |

### Strukturen: Ressourcenprofile 

Diese definieren Einschränkungen für FHIR-Ressourcen für Systeme, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ Genomic Study Device  ](StructureDefinition-genomic-study-device.md) | Profil für die Abbildung von Geräten, Labormaterialien und Pipelines, die in der Genomic Study Analysis verwendet werden. |
| [ MII PR Biomarker Her2 Status  ](StructureDefinition-mii-pr-mtb-biomarker-her2-status.md) | … |
| [ MII PR MTB Antrag Kostenuebernahme  ](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md) | Antrag Kostenübernahme |
| [ MII PR MTB Anwort Kostenuebernahme  ](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.md) | Antwort auf Antrag Kostenübernahme |
| [ MII PR MTB BRCAness  ](StructureDefinition-mii-pr-mtb-brcaness.md) | Beschreibt die BRCAness, also wie sehr ein Tumor ein Verhalten zeigt, welches BRCA1- oder BRCA2-Mutationen entspricht. Die BRCAness ist ein Indikator für die Wirksamkeit von PARP-Inhibitoren. |
| [ MII PR MTB Behandlungsepisode  ](StructureDefinition-mii-pr-mtb-behandlungsepisode.md) | Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen |
| [ MII PR MTB Biopsie Auftrag  ](StructureDefinition-mii-pr-mtb-biopsie-auftrag.md) | Auftrag zur (erneuten) Biopsie |
| [ MII PR MTB Clinical Impresssion  ](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.md) | Follow-Up als Prozess des Einholens von Informationen über durchgeführte Therapien & Kostenuebernahmen |
| [ MII PR MTB Consent  ](StructureDefinition-mii-pr-mtb-consent-given.md) | Beschreibt, ob und wann der Consent zum Einschluss ins MTB gegeben wurde. |
| [ MII PR MTB Copy Number Variant  ](StructureDefinition-mii-pr-mtb-copy-number-variant.md) | Copy Number Variant (CNV) |
| [ MII PR MTB DNA Fusion  ](StructureDefinition-mii-pr-mtb-dna-fusion.md) | DNA-Fusion |
| [ MII PR MTB Diagnose Primärtumor  ](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md) | Diagnose zum Primärtumor |
| [ MII PR MTB Diagnostische Implikation  ](StructureDefinition-mii-pr-mtb-diagnostische-implikation.md) | Beschreibt den Zusammenhang zwischen einem oder mehreren Genotyp/Haplotyp/Varianten und Beweisen für oder gegen eine bestimmte Krankheit. |
| [ MII PR MTB Einfache Variante  ](StructureDefinition-mii-pr-mtb-einfache-variante.md) | Beschreibt eine gefundene genetische Variante. |
| [ MII PR MTB Genomic Study  ](StructureDefinition-mii-pr-mtb-genomic-study.md) | Genomic Study beinhaltet und verweist über GenomicStudyAnalysis auf Details zu den einzelnen Untersuchungen einer NGS-Untersuchung (Sequenzierung, Variant Calling, CNV-Analyse, Fusions-Analysen etc.) |
| [ MII PR MTB Genomic Study Analysis  ](StructureDefinition-mii-pr-mtb-genomic-study-analysis.md) | Die Genomic Study Analysis beschreibt die Methodik einer bestimmten molekulargenetischen Untersuchung. |
| [ MII PR MTB HRD Score  ](StructureDefinition-mii-pr-mtb-hrd-score.md) | Der HRD-Score, welcher den Grad der homologen Rekombinationsdefizienz bei Zellen beschreibt. |
| [ MII PR MTB Histologie-Evaluation Auftrag  ](StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.md) | Auftrag zur (erneuten) Histologie-Evaluation |
| [ MII PR MTB Human-genetische Beratung Auftrag  ](StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.md) | Auftrag zur (erneuten) Human-genetischen Beratung |
| [ MII PR MTB Immunohistochemistry  ](StructureDefinition-mii-pr-mtb-immunohistochemistry.md) | Immunhistorchemistry report |
| [ MII PR MTB Immunohistochemistry  ](StructureDefinition-mii-pr-mtb-immunohistochemistry-her2.md) | Immunhistrchemistry report |
| [ MII PR MTB Immunohistochemistry  ](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.md) | Immunhistorchemistry report |
| [ MII PR MTB Immunohistochemistry Microsatellite Instability  ](StructureDefinition-mii-pr-mtb-msi.md) | Immunhistorchemistry report |
| [ MII PR MTB Immunohistochemistry Mismatch Repair Status  ](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.md) | Immunhistorchemistry report |
| [ MII PR MTB Immunohistochemistry Phosphorylation  ](StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.md) | Immunhistorchemistry report |
| [ MII PR MTB In Situ Hybridization  ](StructureDefinition-mii-pr-mtb-insituhybridization.md) | Molekularer Biomarker - In Situ Hybridization Profil. Unterstützt FISH, CISH und SISH Methoden. |
| [ MII PR MTB In Situ Hybridization HER2  ](StructureDefinition-mii-pr-mtb-insituhybridization-her2.md) | HER2/ERBB2 In Situ Hybridization (FISH) Bericht. Basiert auf LOINC Panel 74885-5. |
| [ MII PR MTB Mikrosatelliteninstabilität  ](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.md) | Beschreibt die Neigung zu Mutationen aufgrund einer gestörten Fehlpaarungsreparatur (DNA mismatch repair, MMR). |
| [ MII PR MTB Molecular Pathology Report  ](StructureDefinition-mii-pr-mtb-molecular-pathology-report.md) | Molecular pathology report |
| [ MII PR MTB Molekularer Biomarker  ](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md) | Stellt einen gefundenden Biomarker dar. Das Profil ist auf Basis von https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-molecular-biomarker.html nachgebaut. |
| [ MII PR MTB Mutationslast  ](StructureDefinition-mii-pr-mtb-mutationslast.md) | Beschreibt die Gesamtzahl von in Krebszellen gefundenen Mutationen pro 1 Mio. Basen. |
| [ MII PR MTB NGS-Bericht  ](StructureDefinition-mii-pr-mtb-ngs-bericht.md) | NGS-Bericht zu einer Probe |
| [ MII PR MTB Oncotree Klassifikation  ](StructureDefinition-mii-pr-mtb-oncotree.md) | Grad des Tumors nach MSKCC Oncotree Klassifikation |
| [ MII PR MTB Ploidie  ](StructureDefinition-mii-pr-mtb-ploidie.md) | Beschreibt die Gesamtploidie des Tumors. Die Ploidie ist ein Indikator für die Tumorproliferation und die Tumoraggressivität. |
| [ MII PR MTB RNA Fusion  ](StructureDefinition-mii-pr-mtb-rna-fusion.md) | RNA-Fusion |
| [ MII PR MTB RNA Seq  ](StructureDefinition-mii-pr-mtb-rna-seq.md) | RNA Seq |
| [ MII PR MTB Response Befund  ](StructureDefinition-mii-pr-mtb-response-befund.md) | Response Beurteilung nach DNPM |
| [ MII PR MTB Studie  ](StructureDefinition-mii-pr-mtb-studie.md) | Onkologische Studie |
| [ MII PR MTB Studieneinschluss Anfrage  ](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md) | Anfrage zum Studieneinschluss |
| [ MII PR MTB Systemische Therapie  ](StructureDefinition-mii-pr-mtb-systemische-therapie.md) | Systemische Therapie im Follow-Up nach Abschluss des MTB |
| [ MII PR MTB Systemische Vortherapie  ](StructureDefinition-mii-pr-mtb-systemische-vortherapie.md) | Systemische Vortherapie zum Molekularen Tumorboard |
| [ MII PR MTB Systemtherapie Medication Statement  ](StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.md) | Medication Statement zur MTB-Systemtherapie mit Wirkstoff und Dosis |
| [ MII PR MTB Therapeutische Implikation  ](StructureDefinition-mii-pr-mtb-therapeutische-implikation.md) | Das Profil beschreibt den möglichen Einfluss genetischer Merkmale auf eine medikamentöse oder nicht-medikamentöse Therapie. |
| [ MII PR MTB Therapieempfehlung Kombinationstherapie  ](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md) | Therapieempfehlung für eine medikamentöse Kombinationstherapie |
| [ MII PR MTB Therapieempfehlung Systemische Therapie  ](StructureDefinition-mii-pr-mtb-therapieempfehlung.md) | Therapieempfehlung für eine medikamentöse Systemische Therapie |
| [ MII PR MTB Therapieplan  ](StructureDefinition-mii-pr-mtb-therapieplan.md) | Therapieplan gemäß Beschluss des Molekularen Tumorboards |
| [ MII PR MTB Tumorausbreitung  ](StructureDefinition-mii-pr-mtb-tumorausbreitung.md) | Angabe zur Tumorausbreitung |
| [ MII PR MTB Tumorzellgehalt  ](StructureDefinition-mii-pr-mtb-tumorzellgehalt.md) | Bestimmter Tumorzellgehalt |
| [ MII PR MTB WHO Grad Tumor ZNS  ](StructureDefinition-mii-pr-mtb-who-grad-tumor-zns.md) | Grad des Tumors nach WHO Klassifikation der Tumoren des zentralen Nervensystems (ZNS) |

### Strukturen: Extension-Definitionen 

Diese definieren Einschränkungen für FHIR-Datentypen für Systeme, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII EX MTB Antrag GenomicsStudyAnalysis Metrics  ](StructureDefinition-mii-ex-mtb-genomic-study-analysis-qc.md) | Sequenzierbezogenen Metriken der Genomic Study Analysis |
| [ MII EX MTB Antrag Kostenuebernahme Antragsstadium  ](StructureDefinition-mii-ex-mtb-antrag-kostenuebernahme-antragsstadium.md) | Stadium des Antrags zur Kostenuebernahme |
| [ MII EX MTB Antwort Kostenuebernahme Ablehnungsgrund  ](StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund.md) | Ablehnungsgrund des Antrags auf Kostenuebernahme |
| [ MII EX MTB Antwort Kostenuebernahme Entscheidung  ](StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-entscheidung.md) | Entscheidung zum Antrag zur Kostenuebernahme |
| [ MII EX MTB Diagnose  ](StructureDefinition-mii-ex-mtb-diagnose.md) | Onkologische Diagnose |
| [ MII EX MTB Empfehlung Evidenzgraduierung  ](StructureDefinition-mii-ex-mtb-empfehlung-evidenzgraduierung.md) | Evidenzgraduierung der (einzelnen) Empfehlung |
| [ MII EX MTB Empfehlung Priorität  ](StructureDefinition-mii-ex-mtb-empfehlung-prioritaet.md) | Priorität der (einzelnen) Empfehlung |
| [ MII EX MTB Empfehlung Publikation  ](StructureDefinition-mii-ex-mtb-empfehlung-publikation.md) | Verweis auf Publikation der (einzelnen) Empfehlung |
| [ MII EX MTB Leitlinie Dokumentation  ](StructureDefinition-mii-ex-mtb-leitlinie-dokumentation.md) | Dokumentation zur Leitlinien-konformen Umsetzung der Prozedur |
| [ MII EX MTB Leitlinienbehandlung Status  ](StructureDefinition-mii-ex-mtb-leitlinienbehandlung-status.md) | Status der Behandlung nach Leitlinie |
| [ MII EX MTB NGS Bericht Metadaten  ](StructureDefinition-mii-ex-mtb-ngs-bericht-genomic-study.md) | Metadaten des NGS-Berichts |

### Terminologie: ValueSets 

Diese definieren Wertemengen, die von Systemen verwendet werden, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII VS Antrag Kostenuebernahme Antragsstadium  ](ValueSet-mii-vs-mtb-antrag-kostenuebernahme-antragsstadium.md) | ValueSet zum Stadium des Antrags zur Kostenuebernahme |
| [ MII VS Antwort Kostenuebernahme Entscheidung  ](ValueSet-mii-vs-mtb-antwort-kostenuebernahme-entscheidung.md) | ValueSet zur Entscheidung der Antwort auf den Antrags zur Kostenuebernahme |
| [ MII VS Auftrag Begründung  ](ValueSet-mii-vs-mtb-auftrag-begruendung.md) | ValueSet für Begründung zum Auftrag zur (erneuten) Untersuchung oder Diagnostik |
| [ MII VS Bestimmungsmethode Tumorzellgehalt  ](ValueSet-mii-vs-mtb-bestimmungsmethode-tumorzellgehalt.md) | ValueSet für Angewandte Methode zur Bestimmung des Tumorzellgehalts |
| [ MII VS Dosisdichte  ](ValueSet-mii-vs-mtb-dosisdichte.md) | ValueSet zur Dosisdichte |
| [ MII VS Empfehlung Evidenzgrad  ](ValueSet-mii-vs-mtb-empfehlung-evidenzgrad.md) | ValueSet für den Evidenzgrad einer Empfehlung |
| [ MII VS Empfehlung Evidenzgrad Zusatzverweis  ](ValueSet-mii-vs-mtb-empfehlung-evidenzgrad-zusatzverweis.md) | ValueSet für den Zusatzverweis zum Evidenzgrad einer Empfehlung |
| [ MII VS Empfehlung Status Begründung  ](ValueSet-mii-vs-mtb-empfehlung-status-begruendung.md) | ValueSet für Begründung bei fehlender Empfehlung im MTB-Beschluss |
| [ MII VS Follow-Up Grund Nicht-Umsetzung  ](ValueSet-mii-vs-mtb-follow-grund-nicht-umsetzung.md) | ValueSet zum Follow-Up Grund Nicht-Umsetzung des Therapieplans. Abgeleitet von mii-cs-mtb-systemische-therapie-status-grund |
| [ MII VS Follow-Up Status  ](ValueSet-mii-vs-mtb-follow-up-status.md) | ValueSet zum Follow-Up Status |
| [ MII VS Genomic Analysis Method Type  ](ValueSet-mii-vs-mtb-genomic-analysis-method-type.md) | ValueSet, dass die ursprünglich vom HL7 Clinical Genomics vorgeschlagenen Antwortmöglichkeiten für Genomic Study Analysis Method Type mit dem vom dnpm dekalrierten Antwortspektrum vereint |
| [ MII VS Kostenuebernahme Ablehnungsgrund  ](ValueSet-mii-vs-mtb-antwort-kostenuebernahme-ablehnungsgrund.md) | ValueSet zum Grund der Ablehnung des Antrags zur Kostenuebernahme |
| [ MII VS Leitlinienbehandlung Status  ](ValueSet-mii-vs-mtb-leitlinienbehandlung-status.md) | ValueSet zum Status der Behandlung nach Leitlinie |
| [ MII VS MSI Method Type  ](ValueSet-mii-vs-mtb-msi-method-type.md) | ValueSet zum CS MSI Method Type |
| [ MII VS MTB Antrag Kostenuebernahme  ](ValueSet-mii-vs-mtb-antrag-kostenuebernahme.md) | MII Logical Model Modul Molekulares Tumorboard |
| [ MII VS MTB ISH Method  ](ValueSet-mii-vs-mtb-ish-method.md) | In Situ Hybridization technique methods (FISH, CISH, SISH) |
| [ MII VS MTB Immunhistochemistry Specific Codes  ](ValueSet-mii-vs-mtb-immunohistochemistry-specific-codes.md) | Spezifische LOINC und SNOMED Codes für immunhistochemische Untersuchungen. Diese Codes werden für das Slice 'spezifisch' im Immunohistochemistry Profil verwendet. |
| [ MII VS MTB Systemtherapie Status  ](ValueSet-mii-vs-mtb-systemische-therapie-status.md) | Einschränkung der Status für Systemtherapie |
| [ MII VS Mikrosatelliteninstabilität  ](ValueSet-mii-vs-mtb-msi.md) | 
| | | |
| :--- | :--- | :--- |
| ValueSet zum MSI-Status auf Basis von Immunhistochemie, basierend auf der LOINC-AnswerList LL1057-0 Stable | Unstable | Indeterminate |
 |
| [ MII VS Mismatch Repair Protein Proficiency  ](ValueSet-mii-vs-mtb-mmr-proficiency.md) | ValueSet zum MMR-Protein-Proficiency auf Basis von Immunhistochemie |
| [ MII VS Mismatch Repair Proteins Expression  ](ValueSet-mii-vs-mtb-mmr-expression.md) | 
| | | |
| :--- | :--- | :--- |
| ValueSet zum MMR-Protein-Expression auf Basis von Immunhistochemie, basierend auf der LOINC-AnswerList LL3993-4 Intact nuc express | Loss of nuc express | Undet |
 |
| [ MII VS Molekulare Biomarker  ](ValueSet-mii-vs-mtb-molekulare-biomarker.md) | ValueSet zum CS Molekulare Biomarker |
| [ MII VS OncoTree ValueSet  ](ValueSet-mii-vs-mtb-oncotree.md) | ValueSet der MSKCC OncoTree Klassifikationen |
| [ MII VS Response Befund Beurteilung  ](ValueSet-mii-vs-mtb-beurteilungsmethode-response-befund.md) | ValueSet Beurteilungsmethode eines Response Befunds |
| [ MII VS Response Befund Beurteilung  ](ValueSet-mii-vs-mtb-response-befund-beurteilung.md) | ValueSet Response Befund Beurteilung |
| [ MII VS Therapiestatusgrund  ](ValueSet-mii-vs-mtb-therapiestatusgrund.md) | ValueSet zum Therapiestatusgrund |
| [ MII VS Tumorausbreitung  ](ValueSet-mii-vs-mtb-tumorausbreitung.md) | ValueSet zur Angabe der Tumorausbreitung |
| [ MII VS WHO Grad Tumor ZNS  ](ValueSet-mii-vs-mtb-who-grad-tumor-zns.md) | ValueSet zum Grad eines Tumors nach WHO-Klassifikation der Tumoren des zentralen Nervensystems |
| [ MII VS Zulassungsstatus  ](ValueSet-mii-vs-mtb-zulassungsstatus.md) | ValueSet zum Zulassungsstatus |

### Terminologie: CodeSysteme 

Diese definieren neue CodeSysteme, die von Systemen verwendet werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII CS Antrag Kostenuebernahme Antragsstadium  ](CodeSystem-mii-cs-mtb-antrag-kostenuebernahme-antragsstadium.md) | Codesystem zum Stadium des Antrags zur Kostenuebernahme nach DNPM |
| [ MII CS Antwort Kostenuebernahme Entscheidung  ](CodeSystem-mii-cs-mtb-antwort-kostenuebernahme-entscheidung.md) | Codesystem zum Status der Antwort zur Kostenuebernahme nach DNPM |
| [ MII CS Bestimmungsmethode Tumorzellgehalt  ](CodeSystem-mii-cs-mtb-bestimmungsmethode-tumorzellgehalt.md) | Angewandte Methode zur Bestimmung des Tumorzellgehalts |
| [ MII CS Dosisdichte  ](CodeSystem-mii-cs-mtb-dosisdichte.md) | Codesystem für die Dosisdichte einer Medikamentengabe |
| [ MII CS Empfehlung Evidenzgrad  ](CodeSystem-mii-cs-mtb-empfehlung-evidenzgrad-nct.md) | Evidenzgrad einer Empfehlung |
| [ MII CS Empfehlung Evidenzgrad Zusatzverweis  ](CodeSystem-mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis.md) | Zusatzverweis zum Evidenzgrad einer Empfehlung |
| [ MII CS Empfehlung Status Begründung  ](CodeSystem-mii-cs-mtb-empfehlung-status-begruendung.md) | Begründung bei fehlender Empfehlung im MTB-Beschluss |
| [ MII CS Follow-Up Status  ](CodeSystem-mii-cs-mtb-follow-up-status.md) | Codesystem zum Follow-Up Status |
| [ MII CS Genomic Analysis Method Type  ](CodeSystem-mii-cs-mtb-genomic-analysis-method-type.md) | Codesystem, welches die verwendeten NGS-Methodiken gemäß dnpm-Kodierung high-level auflistet |
| [ MII CS GenomicAnalysis DeviceType  ](CodeSystem-mii-cs-mtb-genomicanalysis-devicefunction.md) | Codesystem, welches verschiedene Molekulare Biomarker enthäldie verschiedenen Arten von Geräten und Produkten enthält, die im Rahmen einer NGS-Analyse genutzt werden |
| [ MII CS Human-genetische Beratung Auftrag Begründung  ](CodeSystem-mii-cs-mtb-auftrag-begruendung.md) | Begründung zum Auftrag zur (erneuten) Human-genetischen Beratung |
| [ MII CS Kostenuebernahme Ablehnungsgrund  ](CodeSystem-mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund.md) | Codesystem zum Grund der Ablehnung der Kostenuebernahme nach DNPM |
| [ MII CS Leitlinienbehandlung Status  ](CodeSystem-mii-cs-mtb-leitlinienbehandlung-status.md) | Status der Behandlung nach Leitlinie |
| [ MII CS MSI Method Type  ](CodeSystem-mii-cs-mtb-msi-method-type.md) | Codesystem, welches die verwendete MSI-Bestimmungsmethode gemäß dnpm-Kodierung auflistet. |
| [ MII CS Molekulare Biomarker  ](CodeSystem-mii-cs-mtb-molekulare-biomarker.md) | Codesystem, welches verschiedene Molekulare Biomarker enthält, die nicht in anderen offenen semantischen Standards wie LOINC oder SNOMED-CT abgebildet sind |
| [ MII CS Response Befund Beurteilung  ](CodeSystem-mii-cs-mtb-response-befund-beurteilung.md) | Codesystem für die Beurteilung des Response Befund |
| [ MII CS Response Befund Beurteilungsmethode  ](CodeSystem-mii-cs-mtb-response-befund-beurteilungsmethode.md) | Codesystem für die Beurteilungsmethode eines Response Befunds |
| [ MII CS Therapiestatusgrund  ](CodeSystem-mii-cs-mtb-therapiestatusgrund.md) | Codesystem zum Status Grund der Systemischen Therapie nach DNPM |
| [ MII CS Zulassungsstatus  ](CodeSystem-mii-cs-mtb-zulassungsstatus.md) | Angabe zum Zulassungsstatus |

### Terminologie: NamingSysteme 

Diese definieren Identifikator- und/oder CodeSystem-Identitäten, die von Systemen verwendet werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII NS MTB NCT  ](NamingSystem-mii-ns-mtb-nct.md) | NamingSystem für Identifikatoren des Nationalen Centrums für Tumorerkrankungen (NCT) |
| [ MII NS Studie DRKS  ](NamingSystem-mii-ns-studie-drks.md) | NamingSystem für Identifikatoren des Deutschen Register Klinischer Studien (DRKS) |
| [ MII NS Studie EudraCT  ](NamingSystem-mii-ns-studie-eudract.md) | NamingSystem für Identifikatoren der European Union Drug Regulating Authorities Clinical Trials (EudraCT) |

### Terminologie: ConceptMaps 

Diese definieren Transformationen zur Konvertierung zwischen Codes durch Systeme, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII CM MTB Therapiestatusgrund SNOMED CT Mapping  ](ConceptMap-mii-cm-mtb-therapiestatusgrund-sct.md) | Mapping der Codes zur Begründung des Therapiestatus nach SNOMED CT |
| [ MII CM MTB Therapiestatusgrund oBDS Mapping  ](ConceptMap-mii-cm-mtb-therapiestatusgrund-obds.md) | Mapping der Codes zur Begründung des Therapiestatus nach oBDS |

### Beispiel: Beispielinstanzen 

Dies sind Beispielinstanzen, die zeigen, wie Daten aussehen könnten, die von Systemen produziert und konsumiert werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ 01.05.2023 Krankenkassenantrag Mirvetuximab soravtansine genehmigt  ](ClaimResponse-MII-EXA-MTB-Antwort-Kostenuebernahme-1.md) |  |
| [ 07.08.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22  ](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-3.md) |  |
| [ 10.03.2023 Krankenkassenantrag gestellt Mirvetuximab soravtansine  ](Claim-MII-EXA-MTB-Antrag-Kostenuebernahme-1.md) |  |
| [ 12.10.2023 Z6 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22  ](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-6.md) |  |
| [ 16.07.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22  ](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-2.md) |  |
| [ 20.08.2023 CT T/A  ](Observation-MII-EXA-MTB-Response-Befund-1.md) |  |
| [ 20.09.2023 Z5 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22  ](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-5.md) |  |
| [ 22.10.2023 CT T/A  ](Observation-MII-EXA-MTB-Response-Befund-2.md) |  |
| [ 24.06.2023 - 12.10.2023 Mirvetuximab soravtansine  ](Procedure-MII-EXA-MTB-Systemische-Therapie-1.md) |  |
| [ 24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22  ](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-1.md) |  |
| [ 24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22  ](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1.md) |  |
| [ 29.08.2023 Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22  ](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-4.md) |  |
| [ A Clinical Study of the Safety and Effectiveness of an Investigational Cell Therapy Given With and Without an Investigational RNA-based Vaccine in Patients With Organ Tumors  ](ResearchStudy-mii-exa-mtb-study-cldn6.md) | This is a Phase I, FIH, open-label, multicenter, dose escalation trial with expansion cohorts to evaluate safety and preliminary efficacy of claudin 6 (CLDN6) chimeric antigen receptor T cells (CAR-T) with or without CLDN6 ribonucleic acid lipoplexes (RNA-LPX) in patients with CLDN6-positive relapsed or refractory advanced solid tumors. |
| [ Adavosertib  ](MedicationRequest-mii-exa-mtb-medication-request-adavosertib.md) | Therapieempfehlung: Adavosertib |
| [ Adavosertib +/- Carboplatin  ](RequestGroup-mii-exa-mtb-request-group-adavosertib-carboplatin.md) | Therapieempfehlung Kombinationstherapie: Adavosertib +/- Carboplatin |
| [ BRAF Variante  ](Observation-MII-EXA-MTB-Einfache-Variante.md) | Beispiel fuer einfache genetische Variante im BRAF Gen an Hand von NGS. |
| [ Beispiel DNA-Fusion  ](Observation-MII-EXA-MTB-DNA-Fusion-1.md) | Beispiel fuer eine DNA-Fusion in Tumorzellen. |
| [ Beispiel HRD-Score  ](Observation-MII-EXA-MTB-HRD-Score-1.md) | Beispiel fuer einen HRD-Score, der den Grad der homologen Rekombinationsdefizienz beschreibt. |
| [ Beispiel Mikrosatelliteninstabilität  ](Observation-MII-EXA-MTB-Mikrosatelliteninstabilitaet-1.md) | Beispiel fuer Mikrosatelliteninstabilität in Tumorzellen aufgrund von MMR-Störung. |
| [ Beispiel Mutationslast in Tumorprobe (MTB)  ](Observation-MII-EXA-MTB-Mutationslast-1.md) | Beispiel fuer die Mutationslast in einer Tumorprobe mit Bezug zu molekularem Tumorboard. |
| [ Beispiel RNA-Fusion  ](Observation-MII-EXA-MTB-RNA-Fusion-1.md) | Beispiel fuer eine RNA-Fusion (EML4-ALK) in Tumorzellen. |
| [ Beispiel fuer BRAF Mutation MTB Diagnostische Implikation  ](Observation-MII-EXA-MTB-Diagnostische-Implikation-1.md) | Beispiel fuer diagnostische Implikation im Kontext des Molecular Tumor Boards basierend auf einer BRAF-Mutation. |
| [ Beispiel fuer BRCAness-Analyse  ](Observation-MII-EXA-MTB-BRCAness-1.md) | Dieses Beispiel beschreibt eine BRCAness-Analyse, die das Verhalten eines Tumors in Bezug auf BRCA-ähnliche Eigenschaften darstellt. |
| [ Beispiel fuer Copy Number Variant  ](Observation-MII-EXA-MTB-Copy-Number-Variant-1.md) | Beispiel fuer eine Copy Number Variant (CNV). |
| [ Beispiel fuer eine Antwort auf den Antrag auf Kostenuebernahme  ](ClaimResponse-MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1.md) |  |
| [ Beispiel fuer eine Follow-Up Clinical Impression  ](ClinicalImpression-MII-EXA-MTB-Follow-Up-ClinicalImpression-Beispiel-1.md) |  |
| [ Beispiel fuer eine Systemtherapie  ](Procedure-MII-EXA-MTB-Systemtherapie-Beispiel-1.md) |  |
| [ Beispiel fuer einen Antrag auf Kostenuebernahme  ](Claim-MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1.md) |  |
| [ Beispiel fuer einen GenomicStudy  ](Procedure-MII-EXA-MTB-GenomicStudy-1.md) |  |
| [ Beispiel fuer einen GenomicStudyAnalysis  ](Procedure-MII-EXA-MTB-GenomicStudyAnalysis-1.md) |  |
| [ Beispiel fuer einen Response Befund  ](Observation-MII-EXA-MTB-Response-Befund-Beispiel-1.md) |  |
| [ Beispiel fuer einen Sequencer  ](Device-MII-EXA-MTB-Device-Sequencer-1.md) |  |
| [ Beispiel für ein Library Preparation Kit  ](Device-MII-EXA-MTB-Device-LibraryPreparation-Kit-1.md) |  |
| [ Beispiel für ein SequencingKit  ](Device-MII-EXA-MTB-Device-SequencingKit-1.md) |  |
| [ Bestätigte Primärdiagnose  ](Condition-mii-exa-mtb-kim-diagnose.md) | Bestätigte Primärdiagnose C48.2 für Kim Musterperson |
| [ BioNTech Cell & Gene Therapies GmbH  ](Organization-mii-exa-mtb-study-sponsor-biontech.md) | Sponsor: BioNTech Cell & Gene Therapies GmbH |
| [ BioNTech Responsible Person  ](PractitionerRole-mii-exa-mtb-study-investigator-biontech.md) | Investigator: BioNTech Responsible Person, BioNTech SE |
| [ CA 125 Tumor Marker Observation 1  ](Observation-MTBObservationCA125-1.md) | 22.04.2022 CA 125 42,3 IU/ml |
| [ CA 125 Tumor Marker Observation 2  ](Observation-MTBObservationCA125-2.md) | 18.07.2022 CA 125 45,8 IU/ml |
| [ CA 125 Tumor Marker Observation 3  ](Observation-MTBObservationCA125-3.md) | 24.10.2022 CA 125 49,7 IU/ml |
| [ CA 125 Tumor Marker Observation 4  ](Observation-MTBObservationCA125-4.md) | 27.12.2022 CA 125 67,2 IU/ml |
| [ CA 125 Tumor Marker Observation 5  ](Observation-MTBObservationCA125-5.md) | 24.03.2023 CA 125 43,7 IU/ml |
| [ CA 125 Tumor Marker Observation 6  ](Observation-MTBObservationCA125-6.md) | 20.06.2023 CA 125 78,2 IU/ml |
| [ CCNE1  ](ResearchStudy-mii-exa-mtb-study-ccne1.md) | Studie: CCNE1 ampl. OvCA |
| [ CCNE1  ](ServiceRequest-mii-exa-mtb-study-request-ccne1.md) | Studieneinschlussempfehlung: CCNE1 ampl. OvCA |
| [ CCNE1 Einfache Variante 2  ](Observation-mii-exa-mtb-kim-musterperson-CNVariante-CCNE1.md) | Kopienzahlveränderung bei einer CCNE1-Mutation |
| [ Camonsertib  ](MedicationRequest-mii-exa-mtb-medication-request-camonsertib.md) | Therapieempfehlung: Camonsertib |
| [ Carboplatin  ](MedicationRequest-mii-exa-mtb-medication-request-carboplatin.md) | Therapieempfehlung: Carboplatin |
| [ Cobimetinib  ](MedicationRequest-mii-exa-mtb-medication-request-cobimetinib.md) | Therapieempfehlung: Cobimetinib, Priorität: 6, Evidenzgrad: m3 |
| [ Einwilligung zur MTB-Besprechung Kim Musterperson  ](Observation-mii-exa-mtb-kim-musterperson-aufklaerung.md) | Einwilligung von Kim Musterperson zur Besprechung im Molekularen Tumorboard vom 02.01.2023 |
| [ Empfehlung Biopsie  ](ServiceRequest-mii-exa-mtb-kim-rebiopsie-aszites.md) | Empfehlung erneute Biopsie wegen progrediente Aszites |
| [ Empfehlung Histologie-Evaluation  ](ServiceRequest-mii-exa-mtb-kim-histologie-evaluation-aszites.md) | Empfehlung erneute histologische Evaluation wegen progrediente Aszites |
| [ Empfehlung Human-genetische Beratung  ](ServiceRequest-mii-exa-mtb-kim-humangenetische-beratung-aszites.md) | Empfehlung erneute Human-genetische Beratung wegen progrediente Aszites |
| [ Example In Situ Hybridization HER2/ERBB2  ](Observation-PatientKimMusterperson-MolecularPathologyObs-FISH-0a-Her2neu-.md) | Example of HER2 in situ hybridization with ratio measurement for patient Kim Musterperson |
| [ Follow-Up Prozess zur Überprüfung der durchgeführten Therapien & Kostenübernahmen  ](ClinicalImpression-MII-EXA-MTB-Follow-Up-ClinicalImpression-1.md) |  |
| [ High-Grade Neuroendocrine Carcinoma of the Ovary  ](Observation-mii-exa-mtb-kim-oncotree.md) | High-Grade Neuroendocrine Carcinoma of the Ovary (HGONEC) bei Kim Musterperson |
| [ Lokale Tumorausbreitung  ](Observation-mii-exa-mtb-kim-tumorausbreitung.md) | Lokale Tumorausbreitung bei Kim Musterperson |
| [ Lunresertib  ](MedicationRequest-mii-exa-mtb-medication-request-lunresertib.md) | Therapieempfehlung: Lunresertib |
| [ Lunresertib + Camonsertib  ](RequestGroup-mii-exa-mtb-request-group-lunresertib-camonsertib.md) | Therapieempfehlung Kombinationstherapie: Lunresertib + Camonsertib, Priorität: 5, Evidenzgrad: m1B |
| [ MII PR MTB Behandlungsepisode Beispiel  ](ClinicalImpression-mii-exa-mtb-behandlungsepisode-1.md) | Beispiel für aktuellen Gesundheitszustand und bisherige Behandlungsmaßnahmen |
| [ MII PR MTB WHO Grad Tumor ZNS  ](Observation-mii-exa-mtb-who-grad-tumor-zns-1.md) | Beispiel für WHO Grad Tumor |
| [ MTB-Behandlungsepisode Kim Musterperson  ](ClinicalImpression-mii-exa-mtb-kim-musterperson-behandlungsepisode.md) | Molekulares Tumorboard-Behandlungsepisode von Kim Musterperson ab 01.03.2022 |
| [ MTB-Beschluss Kim Musterperson  ](CarePlan-mii-exa-mtb-kim-musterperson-therapieplan.md) | Beschluss MTB-Fall Kim Musterperson vom 28.03.2023 |
| [ MTB-NGS-Bericht Kim Musterperson  ](DiagnosticReport-mii-exa-mtb-kim-musterperson-ngs-bericht.md) | Ergebnisse des NGS-Bericht von Kim Musterperson |
| [ MTB-NGS-Bericht Kim Musterperson  ](Procedure-mii-exa-mtb-kim-musterperson-genomic-study.md) | Details zur Durchführung NGS-Bericht von Kim Musterperson |
| [ MTB-NGS-Bericht Kim Musterperson  ](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-1.md) | Details zur Analyse NGS-Bericht von Kim Musterperson - TSO500 |
| [ MTB-NGS-Bericht Kim Musterperson  ](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-3.md) | Diagnostische Prozeduren - MolPatho-Bericht von Kim Musterperson - Immunhistochemie |
| [ MTB-NGS-Bericht Kim Musterperson HLA Status  ](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-2.md) | Diagnostische Prozeduren NGS-Bericht von Kim Musterperson - HLA-Status - keine näheren Angaben in Beispiel |
| [ MTBChemo1MedicationStatement1  ](MedicationStatement-MTBChemo1MedicationStatement1.md) |  |
| [ MTBChemo1MedicationStatement1-1  ](MedicationStatement-MTBChemo1MedicationStatement1-1.md) |  |
| [ MTBChemo1MedicationStatement1-2  ](MedicationStatement-MTBChemo1MedicationStatement1-2.md) |  |
| [ MTBChemo1MedicationStatement2  ](MedicationStatement-MTBChemo1MedicationStatement2.md) |  |
| [ MTBChemo1MedicationStatement2-1  ](MedicationStatement-MTBChemo1MedicationStatement2-1.md) |  |
| [ MTBChemo1MedicationStatement2-2  ](MedicationStatement-MTBChemo1MedicationStatement2-2.md) |  |
| [ MTBChemo1MedicationStatement3  ](MedicationStatement-MTBChemo1MedicationStatement3.md) |  |
| [ MTBChemo1MedicationStatement3-1  ](MedicationStatement-MTBChemo1MedicationStatement3-1.md) |  |
| [ MTBChemo1MedicationStatement3-2  ](MedicationStatement-MTBChemo1MedicationStatement3-2.md) |  |
| [ MTBChemo1MedicationStatement4  ](MedicationStatement-MTBChemo1MedicationStatement4.md) |  |
| [ MTBChemo1MedicationStatement4-1  ](MedicationStatement-MTBChemo1MedicationStatement4-1.md) |  |
| [ MTBChemo1MedicationStatement4-2  ](MedicationStatement-MTBChemo1MedicationStatement4-2.md) |  |
| [ MTBChemo1MedicationStatement5  ](MedicationStatement-MTBChemo1MedicationStatement5.md) |  |
| [ MTBChemo1MedicationStatement5-1  ](MedicationStatement-MTBChemo1MedicationStatement5-1.md) |  |
| [ MTBChemo1MedicationStatement5-2  ](MedicationStatement-MTBChemo1MedicationStatement5-2.md) |  |
| [ MTBChemo1MedicationStatement6  ](MedicationStatement-MTBChemo1MedicationStatement6.md) |  |
| [ MTBChemo1MedicationStatement6-1  ](MedicationStatement-MTBChemo1MedicationStatement6-1.md) |  |
| [ MTBChemo1MedicationStatement6-2  ](MedicationStatement-MTBChemo1MedicationStatement6-2.md) |  |
| [ MTBChemo1Procedure  ](Procedure-MTBChemo1Procedure.md) | Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28; Sechs Zyklen ab 04.01.2023 |
| [ MTBChemo2MedicationStatement1  ](MedicationStatement-MTBChemo2MedicationStatement1.md) |  |
| [ MTBChemo2MedicationStatement2  ](MedicationStatement-MTBChemo2MedicationStatement2.md) |  |
| [ MTBChemo2MedicationStatement3  ](MedicationStatement-MTBChemo2MedicationStatement3.md) |  |
| [ MTBChemo2MedicationStatement4  ](MedicationStatement-MTBChemo2MedicationStatement4.md) |  |
| [ MTBChemo2MedicationStatement5  ](MedicationStatement-MTBChemo2MedicationStatement5.md) |  |
| [ MTBChemo2MedicationStatement6  ](MedicationStatement-MTBChemo2MedicationStatement6.md) |  |
| [ MTBChemo2Procedure  ](Procedure-MTBChemo2Procedure.md) | Mirvetuximab soravtansine 6mg/kg KG, Wdh d22; Sechs Zyklen ab 24.06.2023 |
| [ Mirvetuximab soravtansine  ](MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.md) | Therapieempfehlung: Mirvetuximab soravtansine, Priorität: 1, Evidenzgrad: m1A |
| [ MyCoverage  ](Coverage-MyCoverage.md) |  |
| [ MyHospital  ](Organization-MyHospital.md) |  |
| [ MyInsurer  ](Organization-MyInsurer.md) |  |
| [ NCT04503278 Age Group  ](Group-mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups.md) | NCT04503278 Eligibility Criteria Age Group |
| [ NCT04503278 CLDN6 CAR-T  ](EvidenceVariable-mii-exa-mtb-study-cldn6-evidence-variable-0.md) | NCT04503278 CLDN6 CAR-T: Administered as an intravenous (i.v.) infusion |
| [ NCT04503278 CLDN6 uRNA-LPX/CLDN6 modRNA-LPX  ](EvidenceVariable-mii-exa-mtb-study-cldn6-evidence-variable-1.md) | NCT04503278 CLDN6 uRNA-LPX/CLDN6 modRNA-LPX: Administered as an i.v. injection at protocol-specified intervals |
| [ NCT04503278 Comparison Group: Part 1 - CLDN6 CAR-T  ](Group-mii-exa-mtb-study-cldn6-comparison-group-0.md) | NCT04503278 CLDN6 CAR-T: Dose escalation in lymphodepleted patients until the MTD and/or RP2D |
| [ NCT04503278 Comparison Group: Part 2 Vaccine-modulated - CLDN6 uRNA-LPX/CLDN6 modRNA-LPX  ](Group-mii-exa-mtb-study-cldn6-comparison-group-1.md) | Dose escalation until the MTD and/or RP2D |
| [ NCT04503278 Eligibility Criteria  ](Group-mii-exa-mtb-study-cldn6-eligibility-criteria.md) | NCT04503278 Eligibility Criteria |
| [ NCT04503278 L0  ](Location-mii-exa-mtb-study-cldn6-location-0.md) | NCT04503278 Location 0 |
| [ NCT04503278 L1  ](Location-mii-exa-mtb-study-cldn6-location-1.md) | NCT04503278 Location 1 |
| [ NCT04503278 L10  ](Location-mii-exa-mtb-study-cldn6-location-10.md) | NCT04503278 Location 10 |
| [ NCT04503278 L11  ](Location-mii-exa-mtb-study-cldn6-location-11.md) | NCT04503278 Location 11 |
| [ NCT04503278 L2  ](Location-mii-exa-mtb-study-cldn6-location-2.md) | NCT04503278 Location 2 |
| [ NCT04503278 L3  ](Location-mii-exa-mtb-study-cldn6-location-3.md) | NCT04503278 Location 3 |
| [ NCT04503278 L4  ](Location-mii-exa-mtb-study-cldn6-location-4.md) | NCT04503278 Location 4 |
| [ NCT04503278 L5  ](Location-mii-exa-mtb-study-cldn6-location-5.md) | NCT04503278 Location 5 |
| [ NCT04503278 L6  ](Location-mii-exa-mtb-study-cldn6-location-6.md) | NCT04503278 Location 6 |
| [ NCT04503278 L7  ](Location-mii-exa-mtb-study-cldn6-location-7.md) | NCT04503278 Location 7 |
| [ NCT04503278 L8  ](Location-mii-exa-mtb-study-cldn6-location-8.md) | NCT04503278 Location 8 |
| [ NCT04503278 L9  ](Location-mii-exa-mtb-study-cldn6-location-9.md) | NCT04503278 Location 9 |
| [ PIK3R1 Einfache Variante  ](Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1.md) | Nachweis einer PIK3R1-Mutation |
| [ PIK3R1 Therapeutische Implikation  ](Observation-mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1.md) | Therapeutische Bedeutung der festgestellten PIK3R1 Mutation |
| [ PatientKimMusterperson  ](Patient-PatientKimMusterperson.md) |  |
| [ PatientKimMusterperson-AscitesSpecimen-2  ](Specimen-PatientKimMusterperson-AscitesSpecimen-2.md) |  |
| [ PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu  ](Observation-PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu.md) |  |
| [ PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu  ](Observation-PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu.md) |  |
| [ PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra  ](Observation-PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra.md) |  |
| [ PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2  ](Observation-PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2.md) |  |
| [ PatientKimMusterperson-MolecularPathologyObservation-1-CA125  ](Observation-PatientKimMusterperson-MolecularPathologyObservation-1-CA125.md) |  |
| [ PatientKimMusterperson-MolecularPathologyObservation-2-Pax8  ](Observation-PatientKimMusterperson-MolecularPathologyObservation-2-Pax8.md) |  |
| [ PatientKimMusterperson-MolecularPathologyObservation-3-WT1  ](Observation-PatientKimMusterperson-MolecularPathologyObservation-3-WT1.md) |  |
| [ PatientKimMusterperson-MolecularPathologyObservation-4-ER  ](Observation-PatientKimMusterperson-MolecularPathologyObservation-4-ER.md) |  |
| [ PatientKimMusterperson-MolecularPathologyObservation-5-PR  ](Observation-PatientKimMusterperson-MolecularPathologyObservation-5-PR.md) |  |
| [ PatientKimMusterperson-MolecularPathologyObservation-6-p53  ](Observation-PatientKimMusterperson-MolecularPathologyObservation-6-p53.md) |  |
| [ PatientKimMusterperson-MolecularPathologyObservation-7-p53  ](Observation-PatientKimMusterperson-MolecularPathologyObservation-7-p53.md) |  |
| [ PatientKimMusterperson-MolecularPathologyReport-1  ](DiagnosticReport-PatientKimMusterperson-MolecularPathologyReport-1.md) |  |
| [ PatientKimMusterperson-Observation-1  ](Observation-PatientKimMusterperson-Observation-1.md) | kein Hinweis auf thorakale Metastasierung |
| [ PatientKimMusterperson-Observation-10  ](Observation-PatientKimMusterperson-Observation-10.md) | regrediente Flüssigkeitskollektion am Leberrand, Z.n. atypische Lebersegmentresektion. Darüberhinaus kein Hinweis auf Leberfilialisierung. |
| [ PatientKimMusterperson-Observation-11  ](Observation-PatientKimMusterperson-Observation-11.md) | kein Aszites |
| [ PatientKimMusterperson-Observation-12  ](Observation-PatientKimMusterperson-Observation-12.md) | kein Hinweis auf Lokalrezidiv |
| [ PatientKimMusterperson-Observation-13  ](Observation-PatientKimMusterperson-Observation-13.md) | regrediente Milchglasinfiltrate im linken Oberlappen, somit a.e. atypisch entzündlich. |
| [ PatientKimMusterperson-Observation-14  ](Observation-PatientKimMusterperson-Observation-14.md) | Leicht vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme |
| [ PatientKimMusterperson-Observation-15  ](Observation-PatientKimMusterperson-Observation-15.md) | Leicht vermehrter mediastinaler Lymphknotenbesatz ohne pathologische Vergrößerung, Verlaufskontrolle empfohlen |
| [ PatientKimMusterperson-Observation-16  ](Observation-PatientKimMusterperson-Observation-16.md) | progredienter Aszites (ca. 700ml) |
| [ PatientKimMusterperson-Observation-17  ](Observation-PatientKimMusterperson-Observation-17.md) | Peritonealblatt mit zunehmender, unregelmäßiger KM-Aufnahme |
| [ PatientKimMusterperson-Observation-18  ](Observation-PatientKimMusterperson-Observation-18.md) | suspekt auf Progress der bekannten Peritonealkarzinose |
| [ PatientKimMusterperson-Observation-19  ](Observation-PatientKimMusterperson-Observation-19.md) | V.a. Lokalrezidiv bei kontrastmittelaufnehmender Raumforderung im kleinen Becken |
| [ PatientKimMusterperson-Observation-2  ](Observation-PatientKimMusterperson-Observation-2.md) | kein Hinweis auf Lokalrezidiv |
| [ PatientKimMusterperson-Observation-20  ](Observation-PatientKimMusterperson-Observation-20.md) | regredienter Aszites |
| [ PatientKimMusterperson-Observation-21  ](Observation-PatientKimMusterperson-Observation-21.md) | rückläufige KM-Aufnahme der lokalrezidivsuspekten Raumforderung im kleinen Becken |
| [ PatientKimMusterperson-Observation-22  ](Observation-PatientKimMusterperson-Observation-22.md) | noch flaue, aber insgesamt regrediente KM-Aufnhame der zahlenmäßig vermehrten LK im Mediastinum |
| [ PatientKimMusterperson-Observation-23  ](Observation-PatientKimMusterperson-Observation-23.md) | keine neue metastasensuspekte Läsion |
| [ PatientKimMusterperson-Observation-24  ](Observation-PatientKimMusterperson-Observation-24.md) | kein Aszites |
| [ PatientKimMusterperson-Observation-25  ](Observation-PatientKimMusterperson-Observation-25.md) | fast vollständig regredientes Lokalrezidiv ohne KM-Aufnahme im kleinen Becken |
| [ PatientKimMusterperson-Observation-26  ](Observation-PatientKimMusterperson-Observation-26.md) | geringer Aszites im kleinen Becken |
| [ PatientKimMusterperson-Observation-27  ](Observation-PatientKimMusterperson-Observation-27.md) | vormals KM-aufnehmendes Lokalrezidiv im kleinen Becken aktuell metrisch nur noch schwer fassbar |
| [ PatientKimMusterperson-Observation-29  ](Observation-PatientKimMusterperson-Observation-29.md) | formal noch vermehrte mediastinale Lymphknoten |
| [ PatientKimMusterperson-Observation-3  ](Observation-PatientKimMusterperson-Observation-3.md) | kein Aszites |
| [ PatientKimMusterperson-Observation-30  ](Observation-PatientKimMusterperson-Observation-30.md) | nicht mehr KM-aufnehmende mediastinale Lymphknoten |
| [ PatientKimMusterperson-Observation-4  ](Observation-PatientKimMusterperson-Observation-4.md) | Z.n. atypischer Lebersegmentresektion, kein eindeutiger Hinweis auf Metastasierung. Flüssigkeitskollektion angrenzend DD postoperativ |
| [ PatientKimMusterperson-Observation-5  ](Observation-PatientKimMusterperson-Observation-5.md) | konstante Flüssigkeitskollektion angrenzend bei Z.n. atpyischer Lebersegmentresktion, a.e. postoperativ |
| [ PatientKimMusterperson-Observation-6  ](Observation-PatientKimMusterperson-Observation-6.md) | kein Aszites |
| [ PatientKimMusterperson-Observation-7  ](Observation-PatientKimMusterperson-Observation-7.md) | kein Hinweis auf Lokalrezidiv |
| [ PatientKimMusterperson-Observation-8  ](Observation-PatientKimMusterperson-Observation-8.md) | im linken Oberlappen der Lunge diskrete milchglasartige Trübung DD atypisch entzündlich, klinische Korrelation empfohlen, darüber hinaus kein Hinweis auf thorakale Filiae |
| [ PatientKimMusterperson-Observation-9  ](Observation-PatientKimMusterperson-Observation-9.md) | regrediente Flüssigkeitskollektion am Leberrand, Z.n. atypische Lebersegmentresektion. Darüberhinaus kein Hinweis auf Leberfilialisierung. |
| [ PatientKimMusterperson-PrimaryDiagnosis-2  ](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md) | bestätigte Primärdiagnose |
| [ PatientKimMusterperson-Procedure-1  ](Procedure-PatientKimMusterperson-Procedure-1.md) | 20.04.22 CT T/A |
| [ PatientKimMusterperson-Procedure-2  ](Procedure-PatientKimMusterperson-Procedure-2.md) | 15.07.22 CT T/A |
| [ PatientKimMusterperson-Procedure-3  ](Procedure-PatientKimMusterperson-Procedure-3.md) | 19.10.22 CT T/A |
| [ PatientKimMusterperson-Procedure-4  ](Procedure-PatientKimMusterperson-Procedure-4.md) | 19.12.22 CT T/A |
| [ PatientKimMusterperson-Procedure-5  ](Procedure-PatientKimMusterperson-Procedure-5.md) | 20.03.2023 CT T/A |
| [ PatientKimMusterperson-Procedure-6  ](Procedure-PatientKimMusterperson-Procedure-6.md) | 20.08.2023 CT T/A |
| [ PatientKimMusterperson-Procedure-7  ](Procedure-PatientKimMusterperson-Procedure-7.md) | 22.10.2023 CT T/A |
| [ PatientKimMusterperson-Specimen-1  ](Specimen-PatientKimMusterperson-Specimen-1.md) | 02.01.2023 Histologie (Z 230201/23) |
| [ Phase 1/2 CLDN6 CAR-T-Zell-Studie  ](ServiceRequest-mii-exa-mtb-study-request-cldn6.md) | Studieneinschlussempfehlung: Phase 1/2 CLDN6 CAR-T-Zell-Studie, Priorität: 2.1 |
| [ Ploidie Beispiel  ](Observation-MII-EXA-MTB-Ploidie-1.md) | Beispiel für die Gesamtploidie des Tumors. |
| [ TEDOVA  ](ResearchStudy-mii-exa-mtb-study-tedova.md) | Studie: TEDOVA - OSE2101 (Neo-Epitop-Vakzin)+/- Pembrolizumab vs. BSC in Platin-sensitiven rez. Ov-CA |
| [ TEDOVA  ](ServiceRequest-mii-exa-mtb-study-request-tedova.md) | Studieeinschlussempfehlung: TEDOVA - OSE2101 (Neo-Epitop-Vakzin)+/- Pembrolizumab vs. BSC in Platin-sensitiven rez. Ov-CA |
| [ TP53 Diagnostische Implikation  ](Observation-mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53.md) | Diagnostische Bedeutung der festgestellten TP53 Mutation |
| [ TP53 Einfache Variante  ](Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53.md) | Nachweis einer pathogenen TP53-Mutation |
| [ Trastuzumab deruxtecan  ](MedicationRequest-mii-exa-mtb-medication-request-trastuzumab-deruxtecan.md) | Therapieempfehlung: Trastuzumab deruxtecan, Priorität: 3, Evidenzgrad: m1B |
| [ Tumorzellgehalt Aszites  ](Observation-mii-exa-mtb-kim-tumorzellgehalt-aszites.md) | Tumorzellgehalt progrediente Aszites (20ml/700ml maligne Tumorzellen) |
| [ mii-exa-mtb-kim-musterperson-bundle  ](Bundle-mii-exa-mtb-kim-musterperson-bundle.md) |  |
| [ mii-exa-mtb-patient  ](Patient-mii-exa-mtb-patient.md) | Beispiel-Patient für Therapieplan mit Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie |
| [ mii-exa-mtb-therapieempfehlung-dabrafenib  ](MedicationRequest-mii-exa-mtb-therapieempfehlung-dabrafenib.md) | Therapieempfehlung für Dabrafenib |
| [ mii-exa-mtb-therapieempfehlung-kombinationstherapie  ](RequestGroup-mii-exa-mtb-therapieempfehlung-kombinationstherapie.md) | Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie |
| [ mii-exa-mtb-therapieempfehlung-trametinib  ](MedicationRequest-mii-exa-mtb-therapieempfehlung-trametinib.md) | Therapieempfehlung für Trametinib |
| [ mii-exa-mtb-therapieplan-kombinationstherapie  ](CarePlan-mii-exa-mtb-therapieplan-kombinationstherapie.md) | Therapieplan mit Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie |
| [ mii-exa-onko-allgemeiner-leistungszustand-ecog  ](Observation-mii-exa-onko-allgemeiner-leistungszustand-ecog.md) |  |

### Sonstige 

Dies sind Ressourcen, die in diesem Implementierungsleitfaden verwendet werden, die in keine der anderen Kategorien passen.

| |
| :--- |
| [ mii-param-mtb-manifest  ](Parameters-mii-param-mtb-manifest.md) |

