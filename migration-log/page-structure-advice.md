# Page-structure advice

**This report PROPOSES and never edits a module.** It reads the source and target repositories read-only; its only writes are this report and the page-map v2 TSV (`--map`) - the map is the PRIMARY output and the contract step 5 consumes, this report is its rendering. Every routing row below is the branch the MEASUREMENTS support - a human (or the skill at step 5) decides and applies it.

| Input | Value |
| --- | --- |
| source repo | `/Users/thome/code/fhir-profiling/tools/migration-mtb/source-dev` |
| target repo | `.` |
| routing table | `/Users/thome/code/fhir-profiling/tools/migration-mtb/agent-skills/skills/mii-ig-migration/references/routing-table.tsv` (17 patterns) |
| Gate 0 preflight | `/Users/thome/code/fhir-profiling/mtb-template-migration/migration-log/preflight-analysis.json` |
| artefact census | fsh-generated/resources (304 resources; cross-checked by Gate 0's generated_crosscheck) |
| page map | `migration-log/page-map.tsv` |
| generated | 2026-09-03T17:18:05Z |
| script | `page-structure-advice.py` v1.3.0 |

Contract limits in force: menu total <= 33, dropdown children <= 10, top level <= 8, menu depth <= 2; size gate at > 2500 words, > 4 merged sources, or ANY repeated heading title; hub at >= 3 children.

## 1. Source page tree

The tree is taken from the FIRST of four inputs that yields pages: **(a)** the `pages:` block of the source `sushi-config.yaml`, **(b)** the authoritative Simplifier guide tree under `implementation-guides/` (spec 5.1a), **(c)** a flat count of `input/pagecontent/*.md`.

**Input used: (b) the Simplifier guide tree `implementation-guides/ImplementationGuide-2026.x-DE`, walked from its `toc.yaml`.**

### 1.0 Simplifier guide trees found

Every tree under `implementation-guides/` is listed - the choice is never made silently. Dispositions follow spec 5.1a: #1 authoritative, #2 parallel-language harvest seed, #3 historical/shared retained, #4 unrecognized.

| Guide tree | Title | Version (dir name) | Version (guide.yaml) | Lang | `*.page.md` on disk | Disposition |
| --- | --- | --- | --- | --- | ---: | --- |
| `ImplementationGuide-2026.x-DE` | Medizininformatik Initiative - ImplementationGuide - Molekulares Tumorboard v2026 | 2026.x | 2026.0.1 | DE | 101 | **AUTHORITATIVE** - steps 5.4/5.5 operate on this tree |

**Chosen: `ImplementationGuide-2026.x-DE`** - highest version among the trees in the module's own narrative language DE (sushi-config `language:`): ImplementationGuide-2026.x-DE (directory version 2026.x, guide.yaml version 2026.0.1).

The module's narrative language read from `sushi-config.yaml` `language:` is **DE**.

**A human can override this choice**: re-run with `--guide-tree <directory name>`. The ranking above is evidence, not a verdict - confirm it against the rendered IG and record it in the inventory (Gate B reviews it).

### 1.1 Depth histogram

Walked from `implementation-guides/ImplementationGuide-2026.x-DE/toc.yaml`: an entry whose `filename` ends in `.page.md` is a page, any other `filename` is a sub-directory holding its own `toc.yaml`. A sub-directory is a LEVEL, not a page, so every page of one directory shares one level (that is how Simplifier renders a folder), and the levels are shifted so the shallowest page sits at level 1 - this guide's root `toc.yaml` lists only a folder, which adds no page level. Routing still needs a page parent, so each directory is represented by its `Index.page.md` and its remaining pages plus its sub-folders' representatives become that page's children; a parent may therefore share its children's level.

| Level | Pages | Share |
| --- | ---: | ---: |
| 1 | 6 | 6% |
| 2 | 11 | 11% |
| 3 | 1 | 1% |
| 4 | 10 | 10% |
| 5 | 51 | 50% |
| 6 | 18 | 18% |
| 7 | 4 | 4% |
| **total** | **101** | 100% |

Maximum depth used: **7**. Total words across the 101 source pages: **29339**. Pages in `input/pagecontent/`: **1**.

### 1.1a Structural findings in the source tree

Reported, never silently absorbed - each one is a page the migration would otherwise lose or invent.

- `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/toc.yaml` lists `Genomics-Study-Device-Device.page.md`, but the **page file does not exist** - the entry is dangling and produced no page.
- `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/toc.yaml` lists `Plodie-Observation.page.mdg`, but the **sub-directory does not exist** - the entry is dangling and produced no page.
- `MIIIGModulMTB/Kommentierungsphase.page.md` exists on disk but is **not listed in MIIIGModulMTB/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Kombinationstherapie-Empfehlung-RequestGroup-Alias.page.md` exists on disk but is **not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Therapielinie-Extension.page.md` exists on disk but is **not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Zulassungsstatus-Extension.page.md` exists on disk but is **not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Genomic-Study-Device-Device.page.md` exists on disk but is **not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/HER2-Status-Biomarker-Observation.page.md` exists on disk but is **not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/MSI-Observation.page.md` exists on disk but is **not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Ploidie-Observation.page.md` exists on disk but is **not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-Phosphorylation-Observation.page.md` exists on disk but is **not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/In-Situ-Hybridization-HER2-Observation.page.md` exists on disk but is **not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.

### 1.2 Parent-child tree

```
`- Index  `MIIIGModulMTB/Index.page.md`
   |- Release Notes  `MIIIGModulMTB/ReleaseNotes.page.md`
   |- Beschreibung Modul 'Molekulares Tumorboard'  `MIIIGModulMTB/BeschreibungModulModul.page.md`
   |- Kontext im Gesamtprojekt / Bezüge zu anderen Modulen  `MIIIGModulMTB/KontextimGesamtprojektBezgezuanderenModulen.page.md`
   |- Referenzen  `MIIIGModulMTB/Referenzen.page.md`
   |- Kommentierungsphase  `MIIIGModulMTB/Kommentierungsphase.page.md`
   |- Index  `MIIIGModulMTB/AnwendungsflleInformationsmodell/Index.page.md`
   |  |- Beschreibung von Szenarien fuer die Anwendung der Module  `MIIIGModulMTB/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md`
   |  |- Datensaetze inkl. Beschreibungen  `MIIIGModulMTB/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md`
   |  `- UML  `MIIIGModulMTB/AnwendungsflleInformationsmodell/UML.page.md`
   `- Index  `MIIIGModulMTB/TechnischeImplementierung/Index.page.md`
      |- Profile - Inhalt und Vererbung  `MIIIGModulMTB/TechnischeImplementierung/Profile-Inhalt-und-Vererbung.page.md`
      |- Profile - Beziehungen und Referenzen  `MIIIGModulMTB/TechnischeImplementierung/Profile-Beziehungen-und-Referenzen.page.md`
      |- CapabilityStatement  `MIIIGModulMTB/TechnischeImplementierung/CapabilityStatement.page.md`
      |- Terminologien  `MIIIGModulMTB/TechnischeImplementierung/Terminologien.page.md`
      |- DNPM-Transformation  `MIIIGModulMTB/TechnischeImplementierung/DNPM-Transformation.page.md`
      |- QA-Validierung  `MIIIGModulMTB/TechnischeImplementierung/QA-Validierung.page.md`
      `- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Index.page.md`
         |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Index.page.md`
         |  |- Behandlungsepisode: ClinicalImpression  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Behandlungsepisode-ClinicalImpression.page.md`
         |  |- Systemische Vortherapie: Procedure  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Systemische-Vortherapie-Procedure.page.md`
         |  |- Consent: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Consent-Observation.page.md`
         |  |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Index.page.md`
         |  |  |- Diagnose Primaertumor: Condition  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Diagnose-Primaertumor-Condition.page.md`
         |  |  |- Tumorausbreitung: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Tumorausbreitung-Observation.page.md`
         |  |  |- WHO Grad ZNS: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/WHO-Grad-ZNS-Observation.page.md`
         |  |  `- Oncotree: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Oncotree-Observation.page.md`
         |  |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Probe/Index.page.md`
         |  |  `- Tumorzellgehalt: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Probe/Tumorzellgehalt-Observation.page.md`
         |  |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Index.page.md`
         |  |  |- Therapieplan: CarePlan  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieplan-CarePlan.page.md`
         |  |  |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Index.page.md`
         |  |  |  |- Therapieempfehlung: MedicationRequest  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Therapieempfehlung-MedicationRequest.page.md`
         |  |  |  |- Kombinationstherapie-Empfehlung: RequestGroup  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Kombinationstherapie-Empfehlung-RequestGroup.page.md`
         |  |  |  |- Kombinationstherapie-Empfehlung-RequestGroup-Alias  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Kombinationstherapie-Empfehlung-RequestGroup-Alias.page.md`
         |  |  |  `- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Extensions/Index.page.md`
         |  |  |     |- Publikation: Extension  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Extensions/Publikation-Extension.page.md`
         |  |  |     |- Evidenzgraduierung: Extension  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Extensions/Evidenzgraduierung-Extension.page.md`
         |  |  |     `- Priorität: Extension  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Extensions/Prioritaet-Extension.page.md`
         |  |  |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Studieneinschlussempfehlung/Index.page.md`
         |  |  |  |- Studieneinschluss (Anfrage): ServiceRequest  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Studieneinschlussempfehlung/Studieneinschluss-Anfrage-ServiceRequest.page.md`
         |  |  |  `- Studieneinschluss (Studie): ResearchStudy  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Studieneinschlussempfehlung/Studieneinschluss-Studie-ResearchStudy.page.md`
         |  |  `- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Index.page.md`
         |  |     |- Biopsie (Auftrag): ServiceRequest  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Biopsie-Auftrag-ServiceRequest.page.md`
         |  |     |- Human-genetische Beratung (Auftrag): ServiceRequest  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Human-genetische-Beratung-Auftrag-ServiceRequest.page.md`
         |  |     `- Histologie-Evaluation (Auftrag): ServiceRequest  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Histologie-Evaluation-Auftrag-ServiceRequest.page.md`
         |  `- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Index.page.md`
         |     |- Leitliniendokumentation: Extension  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Leitliniendokumentation-Extension.page.md`
         |     |- Leitlinienbehandlung Status: Extension  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Leitlinienbehandlung-Status-Extension.page.md`
         |     |- Therapielinie-Extension  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Therapielinie-Extension.page.md`
         |     `- Zulassungsstatus-Extension  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Zulassungsstatus-Extension.page.md`
         |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Index.page.md`
         |  |- Follow-Up: ClinicalImpression  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Follow-Up-ClinicalImpression.page.md`
         |  |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Index.page.md`
         |  |  |- Systemische MTB-Therapie: Procedure  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Systemische-MTB-Therapie-Procedure.page.md`
         |  |  |- Systemische Therapie Medication Statement: Medication Statement  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Systemische-Therapie-Medication-Statement-Medication-Statement.page.md`
         |  |  `- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Befund-Response/Index.page.md`
         |  |     `- Befund Response: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Befund-Response/Befund-Response-Observation.page.md`
         |  `- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Index.page.md`
         |     |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antrag-Kostenuebernahme-Claim/Index.page.md`
         |     |  `- Antragsstadium: Extension  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antrag-Kostenuebernahme-Claim/Antragsstadium-Extension.page.md`
         |     `- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antwort-Kostenuebernahme-ClaimResponse/Index.page.md`
         |        |- Ablehnungsgrund: Extension  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antwort-Kostenuebernahme-ClaimResponse/Ablehnungsgrund-Extension.page.md`
         |        `- Entscheidung: Extension  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antwort-Kostenuebernahme-ClaimResponse/Entscheidung-Extension.page.md`
         |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Index.page.md`
         |  |- NGS-Bericht: DiagnosticReport  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/NGS-Bericht-DiagnosticReport.page.md`
         |  |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Index.page.md`
         |  |  |- Genomic Study: Procedure  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Genomic-Study-Procedure.page.md`
         |  |  |- Genomics Study Analysis: Procedure  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Genomics-Study-Analysis-Procedure.page.md`
         |  |  `- Genomic-Study-Device-Device  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Genomic-Study-Device-Device.page.md`
         |  |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/Index.page.md`
         |  |  |- Einfache Variante: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/Einfache-Variante-Observation.page.md`
         |  |  |- Copy Number Variant: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/Copy-Number-Variant-Observation.page.md`
         |  |  |- DNA Fusion: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/DNA-Fusion-Observation.page.md`
         |  |  `- RNA Fusion: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/RNA-Fusion-Observation.page.md`
         |  |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genetische-Implikationen/Index.page.md`
         |  |  |- Diagnostische Implikation: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genetische-Implikationen/Diagnostische-Implikation-Observation.page.md`
         |  |  `- Therapeutische Implikation: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genetische-Implikationen/Therapeutische-Implikation-Observation.page.md`
         |  |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Index.page.md`
         |  |  |- Molekularer Biomarker: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Molekularer-Biomarker-Observation.page.md`
         |  |  |- Mutationslast: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Mutationslast-Observation.page.md`
         |  |  |- Mikrosatelliteninstabilität: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Mikrosatelliteninstabilitaet-Observation.page.md`
         |  |  |- HRD-Score: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/HRD-Score-Observation.page.md`
         |  |  |- BRCAness: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/BRCAness-Observation.page.md`
         |  |  |- HER2-Status-Biomarker-Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/HER2-Status-Biomarker-Observation.page.md`
         |  |  |- MSI-Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/MSI-Observation.page.md`
         |  |  `- Ploidie-Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Ploidie-Observation.page.md`
         |  `- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/RNA-Seq/Index.page.md`
         |     `- RNA Seq: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/RNA-Seq/RNA-Seq-Observation.page.md`
         `- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Index.page.md`
            |- Molekular-Pathologie-Befund: DiagnosticReport  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Molekular-Pathologie-Befund-DiagnosticReport.page.md`
            |- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md`
            |  |- Immunhistochemie: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-Observation.page.md`
            |  |- P-Immunhistochemie: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/P-Immunhistochemie-Observation.page.md`
            |  |- Immunhistochemie HER2: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-HER2-Observation.page.md`
            |  |- Immunhistochemie MMR MSI: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-MMR-MSI-Observation.page.md`
            |  |- Immunhistochemie PDL1: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-PDL1-Observation.page.md`
            |  `- Immunhistochemie-Phosphorylation-Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-Phosphorylation-Observation.page.md`
            `- Index  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/Index.page.md`
               |- In Situ Hybridization: Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/In-Situ-Hybridization-Observation.page.md`
               `- In-Situ-Hybridization-HER2-Observation  `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/In-Situ-Hybridization-HER2-Observation.page.md`
```

## 2. Target page measurements

Words = whitespace tokens after removing HTML comments, table separator rows and the markup characters `>`, `|`, `*`, `_`, `` ` ``. Headings, list items, table cells and fenced code all count: the gate measures what the reader has to traverse. Repeated titles are compared case-sensitively; each repeat costs one publisher-appended anchor (`-2`, `-3`, ...). Merged sources are the distinct `<!-- source: X.md -->` section markers the migration itself left behind.

| Page | Words | h2 | h3 | h4 | other h | Repeated titles | Anchor collisions | Merged sources | Size gate |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| `ImplementationGuide-mii-kerndatensatzmodul-molekulares-tumorboard.md` | 286 | 0 | 5 | 0 | 0 | 0 | 0 | 0 | ok |
| `capability-statements.md` | 33 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `changes.md` | 564 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | ok |
| `code-systems.md` | 85 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `downloads.md` | 327 | 0 | 0 | 7 | 0 | 0 | 0 | 0 | ok |
| `examples.md` | 45 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `extensions.md` | 58 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `guidance.md` | 132 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | ok |
| `implementer-guidance.md` | 34 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `index.md` | 479 | 0 | 9 | 0 | 0 | 0 | 0 | 0 | ok |
| `logical-models.md` | 35 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `metadata.md` | 2114 | 0 | 1 | 7 | 1 | 0 | 0 | 0 | ok |
| `profiles.md` | 79 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `researcher-guidance.md` | 48 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `security-and-privacy.md` | 444 | 0 | 0 | 3 | 0 | 0 | 0 | 0 | ok |
| `translationinfo.md` | 80 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `uml-diagrams.md` | 44 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `value-sets.md` | 115 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `version-history.md` | 550 | 0 | 0 | 6 | 0 | 0 | 0 | 0 | ok |

## 3. Menu budget

Clickable entries are the menu's real destinations: every `<li><a>` except the dropdown toggles, which only repeat their first child's href.

| Metric | Measured | Contract limit | Headroom |
| --- | ---: | ---: | ---: |
| total clickable entries | 23 | 33 | 10 |
| widest dropdown (Artifacts) | 8 | 10 | 2 |
| top-level entries | 7 | 8 | 1 |
| menu depth used | 2 | 2 | 0 |

| Dropdown | Children | Free (of 10) |
| --- | ---: | ---: |
| Guidance | 5 | 5 |
| Conformance | 5 | 5 |
| Artifacts | 8 | 2 |
| Metadata | 2 | 8 |

After the proposals in section 4: total 9 free, top level 0 free, freest dropdown Metadata (8 free).

## 4. Routing proposal (spec 9d/9e)

One row per source page. The branch number is the spec's; the measurement column is the number that forced it. Branch-4 rows state the presentation (4a) and the visibility (4b), and, where a menu entry fits, the remaining budget after it. `Words` is the source page's own size, counted the same way as the target pages in section 2.

| # | Source page | Lvl | Children | Words | Branch | Proposed destination | Measurement |
| ---: | --- | ---: | ---: | ---: | --- | --- | --- |
| 1 | `MIIIGModulMTB/Index.page.md` | 1 | 7 | 246 | 3 merge into agreed page | index.md | agreed page named 'index' exists in the target |
| 2 | `MIIIGModulMTB/ReleaseNotes.page.md` | 1 | 0 | 585 | 3 merge into agreed page | changes.md | semantic match 'releasenotes' -> changes (routing-table) |
| 3 | `MIIIGModulMTB/BeschreibungModulModul.page.md` | 1 | 0 | 172 | 3 merge into agreed page | index.md | semantic match 'beschreibungmodul' -> index (routing-table) |
| 4 | `MIIIGModulMTB/KontextimGesamtprojektBezgezuanderenModulen.page.md` | 1 | 0 | 374 | 3 merge into agreed page | implementer-guidance.md | semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table) |
| 5 | `MIIIGModulMTB/Referenzen.page.md` | 1 | 0 | 96 | 3 merge into agreed page | implementer-guidance.md | semantic match 'referenzen' -> implementer-guidance (routing-table) |
| 6 | `MIIIGModulMTB/Kommentierungsphase.page.md` | 1 | 0 | 334 | 4 own page | own page (merged page), MENU entry (top level); total 23->24, top level 7->8; remaining after: total 9 free, top level 0 free, freest dropdown Metadata (8 free) <br>_(on disk but not listed in MIIIGModulMTB/toc.yaml)_ | no artefact anchor; no agreed page; 0 child page(s) |
| 7 | `MIIIGModulMTB/AnwendungsflleInformationsmodell/Index.page.md` | 2 | 3 | 13 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulMTB/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 3 child page(s) |
| 8 | `MIIIGModulMTB/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md` | 2 | 0 | 1976 | 3 merge into agreed page | guidance.md | semantic match 'szenarien' -> guidance (routing-table) |
| 9 | `MIIIGModulMTB/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md` | 2 | 0 | 90 | 3 merge into agreed page | logical-models.md | semantic match 'datensaetze' -> logical-models (routing-table) |
| 10 | `MIIIGModulMTB/AnwendungsflleInformationsmodell/UML.page.md` | 2 | 0 | 25 | 3 merge into agreed page | uml-diagrams.md | semantic match 'uml' -> uml-diagrams (routing-table) |
| 11 | `MIIIGModulMTB/TechnischeImplementierung/Index.page.md` | 2 | 7 | 12 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 7 children, 2 anchoring distinct artefacts (CapabilityStatement) |
| 12 | `MIIIGModulMTB/TechnischeImplementierung/Profile-Inhalt-und-Vererbung.page.md` | 2 | 0 | 23 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulMTB/TechnischeImplementierung/Index.page.md (no anchor of its own) |
| 13 | `MIIIGModulMTB/TechnischeImplementierung/Profile-Beziehungen-und-Referenzen.page.md` | 2 | 0 | 37 | 3 merge into agreed page | implementer-guidance.md | semantic match 'referenzen' -> implementer-guidance (routing-table) |
| 14 | `MIIIGModulMTB/TechnischeImplementierung/CapabilityStatement.page.md` | 2 | 0 | 83 | 3 merge into agreed page | capability-statements.md | semantic match 'capabilitystatement' -> capability-statements (routing-table) |
| 15 | `MIIIGModulMTB/TechnischeImplementierung/Terminologien.page.md` | 2 | 0 | 976 | 3 merge into agreed page | code-systems.md | semantic match 'terminologien' -> code-systems (routing-table) |
| 16 | `MIIIGModulMTB/TechnischeImplementierung/DNPM-Transformation.page.md` | 2 | 0 | 531 | 1 intro-note | input/intro-notes/StructureDefinition-dnpm-lm-care-plan-intro.md | tokens match on dnpm-lm-care-plan (3 candidate artefacts) |
| 17 | `MIIIGModulMTB/TechnischeImplementierung/QA-Validierung.page.md` | 2 | 0 | 974 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulMTB/TechnischeImplementierung/Index.page.md (no anchor of its own) |
| 18 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Index.page.md` | 3 | 4 | 6 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/Index.page.md (no anchor of its own) |
| 19 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Index.page.md` | 4 | 7 | 8 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 7 children, 3 anchoring distinct artefacts (StructureDefinition) |
| 20 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Behandlungsepisode-ClinicalImpression.page.md` | 4 | 0 | 458 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-behandlungsepisode-intro.md | tokens match on mii-pr-mtb-behandlungsepisode (4 candidate artefacts) |
| 21 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Systemische-Vortherapie-Procedure.page.md` | 4 | 0 | 719 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-systemische-vortherapie-intro.md | tokens match on mii-pr-mtb-systemische-vortherapie (1 candidate artefact) |
| 22 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Consent-Observation.page.md` | 4 | 0 | 349 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-consent-given-intro.md | tokens match on mii-pr-mtb-consent-given (1 candidate artefact) |
| 23 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Index.page.md` | 5 | 4 | 8 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 4 children, 4 anchoring distinct artefacts (StructureDefinition) |
| 24 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Diagnose-Primaertumor-Condition.page.md` | 5 | 0 | 595 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-diagnose-primaertumor-intro.md | tokens match on mii-pr-mtb-diagnose-primaertumor (1 candidate artefact) |
| 25 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Tumorausbreitung-Observation.page.md` | 5 | 0 | 366 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-tumorausbreitung-intro.md | tokens match on mii-pr-mtb-tumorausbreitung (2 candidate artefacts) |
| 26 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/WHO-Grad-ZNS-Observation.page.md` | 5 | 0 | 365 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-who-grad-tumor-zns-intro.md | tokens match on mii-pr-mtb-who-grad-tumor-zns (2 candidate artefacts) |
| 27 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Oncotree-Observation.page.md` | 5 | 0 | 369 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-oncotree-intro.md | tokens match on mii-pr-mtb-oncotree (2 candidate artefacts) |
| 28 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Probe/Index.page.md` | 5 | 1 | 2 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Index.page.md (no anchor of its own) |
| 29 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Probe/Tumorzellgehalt-Observation.page.md` | 5 | 0 | 633 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-tumorzellgehalt-intro.md | tokens match on mii-pr-mtb-tumorzellgehalt (3 candidate artefacts) |
| 30 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Index.page.md` | 5 | 4 | 2 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Index.page.md (no anchor of its own) |
| 31 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieplan-CarePlan.page.md` | 5 | 0 | 688 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-therapieplan-intro.md | tokens match on mii-pr-mtb-therapieplan (1 candidate artefact) |
| 32 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Index.page.md` | 6 | 4 | 2 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Index.page.md (no anchor of its own) |
| 33 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Therapieempfehlung-MedicationRequest.page.md` | 6 | 0 | 664 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-therapieempfehlung-intro.md | tokens match on mii-pr-mtb-therapieempfehlung (2 candidate artefacts) |
| 34 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Kombinationstherapie-Empfehlung-RequestGroup.page.md` | 6 | 0 | 381 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Index.page.md (no anchor of its own) |
| 35 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Kombinationstherapie-Empfehlung-RequestGroup-Alias.page.md` | 6 | 0 | 20 | 2 section on index page | h3/h4 section on profiles.md <br>_(on disk but not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/toc.yaml)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Index.page.md (no anchor of its own) |
| 36 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Extensions/Publikation-Extension.page.md` | 7 | 0 | 107 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-mtb-empfehlung-publikation-intro.md | tokens match on mii-ex-mtb-empfehlung-publikation (1 candidate artefact) |
| 37 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Extensions/Evidenzgraduierung-Extension.page.md` | 7 | 0 | 132 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-mtb-empfehlung-evidenzgraduierung-intro.md | tokens match on mii-ex-mtb-empfehlung-evidenzgraduierung (1 candidate artefact) |
| 38 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Extensions/Prioritaet-Extension.page.md` | 7 | 0 | 95 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-mtb-empfehlung-prioritaet-intro.md | tokens match on mii-ex-mtb-empfehlung-prioritaet (1 candidate artefact) |
| 39 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Extensions/Index.page.md` | 7 | 3 | 2 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 3 children, 3 anchoring distinct artefacts (StructureDefinition) |
| 40 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Studieneinschlussempfehlung/Index.page.md` | 6 | 2 | 2 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Index.page.md (no anchor of its own) |
| 41 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Studieneinschlussempfehlung/Studieneinschluss-Anfrage-ServiceRequest.page.md` | 6 | 0 | 531 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage-intro.md | tokens match on mii-pr-mtb-studieneinschluss-anfrage (1 candidate artefact) |
| 42 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Studieneinschlussempfehlung/Studieneinschluss-Studie-ResearchStudy.page.md` | 6 | 0 | 718 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Studieneinschlussempfehlung/Index.page.md (no anchor of its own) |
| 43 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Index.page.md` | 6 | 3 | 2 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 3 children, 2 anchoring distinct artefacts (StructureDefinition) |
| 44 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Biopsie-Auftrag-ServiceRequest.page.md` | 6 | 0 | 405 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-biopsie-auftrag-intro.md | tokens match on mii-pr-mtb-biopsie-auftrag (1 candidate artefact) |
| 45 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Human-genetische-Beratung-Auftrag-ServiceRequest.page.md` | 6 | 0 | 388 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Index.page.md (no anchor of its own) |
| 46 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Histologie-Evaluation-Auftrag-ServiceRequest.page.md` | 6 | 0 | 371 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag-intro.md | tokens match on mii-pr-mtb-histologie-evaluation-auftrag (1 candidate artefact) |
| 47 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Leitliniendokumentation-Extension.page.md` | 5 | 0 | 164 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Index.page.md (no anchor of its own) |
| 48 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Leitlinienbehandlung-Status-Extension.page.md` | 5 | 0 | 135 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-mtb-leitlinienbehandlung-status-intro.md | tokens match on mii-ex-mtb-leitlinienbehandlung-status (3 candidate artefacts) |
| 49 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Index.page.md` | 5 | 4 | 2 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 4 children, 2 anchoring distinct artefacts (StructureDefinition) |
| 50 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Therapielinie-Extension.page.md` | 5 | 0 | 94 | 2 section on index page | h3/h4 section on profiles.md <br>_(on disk but not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/toc.yaml)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Index.page.md (no anchor of its own) |
| 51 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Zulassungsstatus-Extension.page.md` | 5 | 0 | 100 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-mtb-zulassungsstatus-intro.md <br>_(on disk but not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/toc.yaml)_ | tokens match on mii-vs-mtb-zulassungsstatus (2 candidate artefacts) |
| 52 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Index.page.md` | 4 | 3 | 11 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Index.page.md (no anchor of its own) |
| 53 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Follow-Up-ClinicalImpression.page.md` | 4 | 0 | 381 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression-intro.md | compact match on mii-pr-mtb-follow-up-clinicalimpression (6 candidate artefacts) |
| 54 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Index.page.md` | 5 | 3 | 2 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 3 children, 2 anchoring distinct artefacts (StructureDefinition) |
| 55 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Systemische-MTB-Therapie-Procedure.page.md` | 5 | 0 | 632 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-systemische-therapie-intro.md | tokens match on mii-pr-mtb-systemische-therapie (2 candidate artefacts) |
| 56 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Systemische-Therapie-Medication-Statement-Medication-Statement.page.md` | 5 | 0 | 440 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement-intro.md | tokens match on mii-pr-mtb-systemtherapie-medication-statement (1 candidate artefact) |
| 57 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Befund-Response/Index.page.md` | 6 | 1 | 2 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Index.page.md (no anchor of its own) |
| 58 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Befund-Response/Befund-Response-Observation.page.md` | 6 | 0 | 594 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-response-befund-intro.md | tokens match on mii-pr-mtb-response-befund (5 candidate artefacts) |
| 59 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Index.page.md` | 5 | 2 | 2 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Index.page.md (no anchor of its own) |
| 60 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antrag-Kostenuebernahme-Claim/Index.page.md` | 6 | 1 | 472 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Index.page.md (no anchor of its own) |
| 61 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antrag-Kostenuebernahme-Claim/Antragsstadium-Extension.page.md` | 6 | 0 | 94 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-mtb-antrag-kostenuebernahme-antragsstadium-intro.md | tokens match on mii-ex-mtb-antrag-kostenuebernahme-antragsstadium (3 candidate artefacts) |
| 62 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antwort-Kostenuebernahme-ClaimResponse/Ablehnungsgrund-Extension.page.md` | 6 | 0 | 92 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund-intro.md | tokens match on mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund (3 candidate artefacts) |
| 63 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antwort-Kostenuebernahme-ClaimResponse/Index.page.md` | 6 | 2 | 455 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 2 children, 2 anchoring distinct artefacts (StructureDefinition) |
| 64 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antwort-Kostenuebernahme-ClaimResponse/Entscheidung-Extension.page.md` | 6 | 0 | 90 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-entscheidung-intro.md | tokens match on mii-ex-mtb-antwort-kostenuebernahme-entscheidung (3 candidate artefacts) |
| 65 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Index.page.md` | 4 | 6 | 2 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Index.page.md (no anchor of its own) |
| 66 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/NGS-Bericht-DiagnosticReport.page.md` | 4 | 0 | 318 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-ngs-bericht-intro.md | tokens match on mii-pr-mtb-ngs-bericht (2 candidate artefacts) |
| 67 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Index.page.md` | 5 | 3 | 2 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 3 children, 2 anchoring distinct artefacts (StructureDefinition) |
| 68 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Genomic-Study-Procedure.page.md` | 5 | 0 | 356 | 1 intro-note | input/intro-notes/StructureDefinition-genomic-study-device-intro.md | tokens match on genomic-study-device (5 candidate artefacts) |
| 69 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Genomics-Study-Analysis-Procedure.page.md` | 5 | 0 | 401 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-genomic-study-analysis-intro.md | tokens match on mii-pr-mtb-genomic-study-analysis (2 candidate artefacts) |
| 70 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Genomic-Study-Device-Device.page.md` | 5 | 0 | 295 | 1 intro-note | input/intro-notes/StructureDefinition-genomic-study-device-intro.md <br>_(on disk but not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/toc.yaml)_ | tokens match on genomic-study-device (8 candidate artefacts) |
| 71 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/Index.page.md` | 5 | 4 | 2 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 4 children, 4 anchoring distinct artefacts (StructureDefinition) |
| 72 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/Einfache-Variante-Observation.page.md` | 5 | 0 | 533 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-einfache-variante-intro.md | tokens match on mii-pr-mtb-einfache-variante (1 candidate artefact) |
| 73 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/Copy-Number-Variant-Observation.page.md` | 5 | 0 | 586 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-copy-number-variant-intro.md | tokens match on mii-pr-mtb-copy-number-variant (1 candidate artefact) |
| 74 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/DNA-Fusion-Observation.page.md` | 5 | 0 | 635 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-dna-fusion-intro.md | tokens match on mii-pr-mtb-dna-fusion (1 candidate artefact) |
| 75 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/RNA-Fusion-Observation.page.md` | 5 | 0 | 669 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-rna-fusion-intro.md | tokens match on mii-pr-mtb-rna-fusion (1 candidate artefact) |
| 76 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genetische-Implikationen/Index.page.md` | 5 | 2 | 110 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 2 children, 2 anchoring distinct artefacts (StructureDefinition) |
| 77 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genetische-Implikationen/Diagnostische-Implikation-Observation.page.md` | 5 | 0 | 425 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-diagnostische-implikation-intro.md | tokens match on mii-pr-mtb-diagnostische-implikation (1 candidate artefact) |
| 78 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genetische-Implikationen/Therapeutische-Implikation-Observation.page.md` | 5 | 0 | 492 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-therapeutische-implikation-intro.md | tokens match on mii-pr-mtb-therapeutische-implikation (1 candidate artefact) |
| 79 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Index.page.md` | 5 | 8 | 2 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 8 children, 8 anchoring distinct artefacts (StructureDefinition) |
| 80 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Molekularer-Biomarker-Observation.page.md` | 5 | 0 | 265 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-molekularer-biomarker-intro.md | tokens match on mii-pr-mtb-molekularer-biomarker (1 candidate artefact) |
| 81 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Mutationslast-Observation.page.md` | 5 | 0 | 432 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-mutationslast-intro.md | tokens match on mii-pr-mtb-mutationslast (1 candidate artefact) |
| 82 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Mikrosatelliteninstabilitaet-Observation.page.md` | 5 | 0 | 459 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet-intro.md | tokens match on mii-pr-mtb-mikrosatelliteninstabilitaet (1 candidate artefact) |
| 83 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/HRD-Score-Observation.page.md` | 5 | 0 | 423 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-hrd-score-intro.md | tokens match on mii-pr-mtb-hrd-score (1 candidate artefact) |
| 84 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/BRCAness-Observation.page.md` | 5 | 0 | 386 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-brcaness-intro.md | tokens match on mii-pr-mtb-brcaness (1 candidate artefact) |
| 85 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/HER2-Status-Biomarker-Observation.page.md` | 5 | 0 | 23 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-biomarker-her2-status-intro.md <br>_(on disk but not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/toc.yaml)_ | tokens match on mii-pr-mtb-biomarker-her2-status (1 candidate artefact) |
| 86 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/MSI-Observation.page.md` | 5 | 0 | 21 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-msi-intro.md <br>_(on disk but not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/toc.yaml)_ | tokens match on mii-pr-mtb-msi (4 candidate artefacts) |
| 87 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Ploidie-Observation.page.md` | 5 | 0 | 267 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-ploidie-intro.md <br>_(on disk but not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/toc.yaml)_ | tokens match on mii-pr-mtb-ploidie (1 candidate artefact) |
| 88 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/RNA-Seq/Index.page.md` | 5 | 1 | 2 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Index.page.md (no anchor of its own) |
| 89 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/RNA-Seq/RNA-Seq-Observation.page.md` | 5 | 0 | 574 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mtb-rna-seq-intro.md | tokens match on mii-pr-mtb-rna-seq (1 candidate artefact) |
| 90 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Index.page.md` | 4 | 3 | 2 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Index.page.md (no anchor of its own) |
| 91 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Molekular-Pathologie-Befund-DiagnosticReport.page.md` | 4 | 0 | 243 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Index.page.md (no anchor of its own) |
| 92 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md` | 5 | 6 | 2 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Index.page.md (no anchor of its own) |
| 93 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-Observation.page.md` | 5 | 0 | 539 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md (no anchor of its own) |
| 94 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/P-Immunhistochemie-Observation.page.md` | 5 | 0 | 490 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md (no anchor of its own) |
| 95 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-HER2-Observation.page.md` | 5 | 0 | 273 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md (no anchor of its own) |
| 96 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-MMR-MSI-Observation.page.md` | 5 | 0 | 351 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md (no anchor of its own) |
| 97 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-PDL1-Observation.page.md` | 5 | 0 | 443 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md (no anchor of its own) |
| 98 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-Phosphorylation-Observation.page.md` | 5 | 0 | 16 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(on disk but not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/toc.yaml)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md (no anchor of its own) |
| 99 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/Index.page.md` | 5 | 2 | 102 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Index.page.md (no anchor of its own) |
| 100 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/In-Situ-Hybridization-Observation.page.md` | 5 | 0 | 482 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/Index.page.md (no anchor of its own) |
| 101 | `MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/In-Situ-Hybridization-HER2-Observation.page.md` | 5 | 0 | 19 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(on disk but not listed in MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/toc.yaml)_ | child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/Index.page.md (no anchor of its own) |

Branch totals: 1 intro-note = 45, 2 section on index page = 43, 3 merge into agreed page = 11, 4 own page = 2.

## 5. Report queue 1 items

The menu budget forced a ToC-nesting where a menu entry was otherwise warranted. Allocation below is first-come-first-served in source document order; the human may spend the budget differently.

- MIIIGModulMTB/AnwendungsflleInformationsmodell/Index.page.md - nested under MIIIGModulMTB/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.

## 6. Suggested `5.4c page-routing` run-log lines

One per source page (union pages included), ready for the migration run log. The `5.4c page-routing` step IS the advice run that GENERATES the page map (`--map`) - the map is machine-written, never hand-written; these lines are only its run-log form.

```
5.4c page-routing	MIIIGModulMTB/Index.page.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	MIIIGModulMTB/ReleaseNotes.page.md	branch=3	changes.md	semantic match 'releasenotes' -> changes (routing-table)
5.4c page-routing	MIIIGModulMTB/BeschreibungModulModul.page.md	branch=3	index.md	semantic match 'beschreibungmodul' -> index (routing-table)
5.4c page-routing	MIIIGModulMTB/KontextimGesamtprojektBezgezuanderenModulen.page.md	branch=3	implementer-guidance.md	semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulMTB/Referenzen.page.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulMTB/Kommentierungsphase.page.md	branch=4	own page (merged page), MENU entry (top level); total 23->24, top level 7->8; remaining after: total 9 free, top level 0 free, freest dropdown Metadata (8 free)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulMTB/AnwendungsflleInformationsmodell/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulMTB/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulMTB/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md	branch=3	guidance.md	semantic match 'szenarien' -> guidance (routing-table)
5.4c page-routing	MIIIGModulMTB/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md	branch=3	logical-models.md	semantic match 'datensaetze' -> logical-models (routing-table)
5.4c page-routing	MIIIGModulMTB/AnwendungsflleInformationsmodell/UML.page.md	branch=3	uml-diagrams.md	semantic match 'uml' -> uml-diagrams (routing-table)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/Index.page.md	branch=2	h3/h4 section on capability-statements.md	7 children, 2 anchoring distinct artefacts (CapabilityStatement)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/Profile-Inhalt-und-Vererbung.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/Profile-Beziehungen-und-Referenzen.page.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/CapabilityStatement.page.md	branch=3	capability-statements.md	semantic match 'capabilitystatement' -> capability-statements (routing-table)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/Terminologien.page.md	branch=3	code-systems.md	semantic match 'terminologien' -> code-systems (routing-table)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/DNPM-Transformation.page.md	branch=1	input/intro-notes/StructureDefinition-dnpm-lm-care-plan-intro.md	tokens match on dnpm-lm-care-plan (3 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/QA-Validierung.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Index.page.md	branch=2	h3/h4 section on profiles.md	7 children, 3 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Behandlungsepisode-ClinicalImpression.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-behandlungsepisode-intro.md	tokens match on mii-pr-mtb-behandlungsepisode (4 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Systemische-Vortherapie-Procedure.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-systemische-vortherapie-intro.md	tokens match on mii-pr-mtb-systemische-vortherapie (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Consent-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-consent-given-intro.md	tokens match on mii-pr-mtb-consent-given (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Index.page.md	branch=2	h3/h4 section on profiles.md	4 children, 4 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Diagnose-Primaertumor-Condition.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-diagnose-primaertumor-intro.md	tokens match on mii-pr-mtb-diagnose-primaertumor (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Tumorausbreitung-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-tumorausbreitung-intro.md	tokens match on mii-pr-mtb-tumorausbreitung (2 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/WHO-Grad-ZNS-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-who-grad-tumor-zns-intro.md	tokens match on mii-pr-mtb-who-grad-tumor-zns (2 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Oncotree-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-oncotree-intro.md	tokens match on mii-pr-mtb-oncotree (2 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Probe/Index.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Probe/Tumorzellgehalt-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-tumorzellgehalt-intro.md	tokens match on mii-pr-mtb-tumorzellgehalt (3 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Index.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieplan-CarePlan.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-therapieplan-intro.md	tokens match on mii-pr-mtb-therapieplan (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Index.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Therapieempfehlung-MedicationRequest.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-therapieempfehlung-intro.md	tokens match on mii-pr-mtb-therapieempfehlung (2 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Kombinationstherapie-Empfehlung-RequestGroup.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Kombinationstherapie-Empfehlung-RequestGroup-Alias.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Extensions/Publikation-Extension.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-mtb-empfehlung-publikation-intro.md	tokens match on mii-ex-mtb-empfehlung-publikation (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Extensions/Evidenzgraduierung-Extension.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-mtb-empfehlung-evidenzgraduierung-intro.md	tokens match on mii-ex-mtb-empfehlung-evidenzgraduierung (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Extensions/Prioritaet-Extension.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-mtb-empfehlung-prioritaet-intro.md	tokens match on mii-ex-mtb-empfehlung-prioritaet (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieempfehlung/Extensions/Index.page.md	branch=2	h3/h4 section on profiles.md	3 children, 3 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Studieneinschlussempfehlung/Index.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Studieneinschlussempfehlung/Studieneinschluss-Anfrage-ServiceRequest.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage-intro.md	tokens match on mii-pr-mtb-studieneinschluss-anfrage (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Studieneinschlussempfehlung/Studieneinschluss-Studie-ResearchStudy.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Studieneinschlussempfehlung/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Index.page.md	branch=2	h3/h4 section on profiles.md	3 children, 2 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Biopsie-Auftrag-ServiceRequest.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-biopsie-auftrag-intro.md	tokens match on mii-pr-mtb-biopsie-auftrag (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Human-genetische-Beratung-Auftrag-ServiceRequest.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Weitere-Empfehlungen/Histologie-Evaluation-Auftrag-ServiceRequest.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag-intro.md	tokens match on mii-pr-mtb-histologie-evaluation-auftrag (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Leitliniendokumentation-Extension.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Leitlinienbehandlung-Status-Extension.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-mtb-leitlinienbehandlung-status-intro.md	tokens match on mii-ex-mtb-leitlinienbehandlung-status (3 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Index.page.md	branch=2	h3/h4 section on profiles.md	4 children, 2 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Therapielinie-Extension.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Zulassungsstatus-Extension.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-mtb-zulassungsstatus-intro.md	tokens match on mii-vs-mtb-zulassungsstatus (2 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Follow-Up-ClinicalImpression.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression-intro.md	compact match on mii-pr-mtb-follow-up-clinicalimpression (6 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Index.page.md	branch=2	h3/h4 section on profiles.md	3 children, 2 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Systemische-MTB-Therapie-Procedure.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-systemische-therapie-intro.md	tokens match on mii-pr-mtb-systemische-therapie (2 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Systemische-Therapie-Medication-Statement-Medication-Statement.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement-intro.md	tokens match on mii-pr-mtb-systemtherapie-medication-statement (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Befund-Response/Index.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Befund-Response/Befund-Response-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-response-befund-intro.md	tokens match on mii-pr-mtb-response-befund (5 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antrag-Kostenuebernahme-Claim/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antrag-Kostenuebernahme-Claim/Antragsstadium-Extension.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-mtb-antrag-kostenuebernahme-antragsstadium-intro.md	tokens match on mii-ex-mtb-antrag-kostenuebernahme-antragsstadium (3 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antwort-Kostenuebernahme-ClaimResponse/Ablehnungsgrund-Extension.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund-intro.md	tokens match on mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund (3 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antwort-Kostenuebernahme-ClaimResponse/Index.page.md	branch=2	h3/h4 section on profiles.md	2 children, 2 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antwort-Kostenuebernahme-ClaimResponse/Entscheidung-Extension.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-entscheidung-intro.md	tokens match on mii-ex-mtb-antwort-kostenuebernahme-entscheidung (3 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/NGS-Bericht-DiagnosticReport.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-ngs-bericht-intro.md	tokens match on mii-pr-mtb-ngs-bericht (2 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Index.page.md	branch=2	h3/h4 section on profiles.md	3 children, 2 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Genomic-Study-Procedure.page.md	branch=1	input/intro-notes/StructureDefinition-genomic-study-device-intro.md	tokens match on genomic-study-device (5 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Genomics-Study-Analysis-Procedure.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-genomic-study-analysis-intro.md	tokens match on mii-pr-mtb-genomic-study-analysis (2 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Genomic-Study-Device-Device.page.md	branch=1	input/intro-notes/StructureDefinition-genomic-study-device-intro.md	tokens match on genomic-study-device (8 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/Index.page.md	branch=2	h3/h4 section on profiles.md	4 children, 4 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/Einfache-Variante-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-einfache-variante-intro.md	tokens match on mii-pr-mtb-einfache-variante (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/Copy-Number-Variant-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-copy-number-variant-intro.md	tokens match on mii-pr-mtb-copy-number-variant (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/DNA-Fusion-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-dna-fusion-intro.md	tokens match on mii-pr-mtb-dna-fusion (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Variante/RNA-Fusion-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-rna-fusion-intro.md	tokens match on mii-pr-mtb-rna-fusion (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genetische-Implikationen/Index.page.md	branch=2	h3/h4 section on profiles.md	2 children, 2 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genetische-Implikationen/Diagnostische-Implikation-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-diagnostische-implikation-intro.md	tokens match on mii-pr-mtb-diagnostische-implikation (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genetische-Implikationen/Therapeutische-Implikation-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-therapeutische-implikation-intro.md	tokens match on mii-pr-mtb-therapeutische-implikation (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Index.page.md	branch=2	h3/h4 section on profiles.md	8 children, 8 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Molekularer-Biomarker-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-molekularer-biomarker-intro.md	tokens match on mii-pr-mtb-molekularer-biomarker (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Mutationslast-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-mutationslast-intro.md	tokens match on mii-pr-mtb-mutationslast (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Mikrosatelliteninstabilitaet-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet-intro.md	tokens match on mii-pr-mtb-mikrosatelliteninstabilitaet (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/HRD-Score-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-hrd-score-intro.md	tokens match on mii-pr-mtb-hrd-score (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/BRCAness-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-brcaness-intro.md	tokens match on mii-pr-mtb-brcaness (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/HER2-Status-Biomarker-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-biomarker-her2-status-intro.md	tokens match on mii-pr-mtb-biomarker-her2-status (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/MSI-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-msi-intro.md	tokens match on mii-pr-mtb-msi (4 candidate artefacts)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Molekularer-Biomarker/Ploidie-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-ploidie-intro.md	tokens match on mii-pr-mtb-ploidie (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/RNA-Seq/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/RNA-Seq/RNA-Seq-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mtb-rna-seq-intro.md	tokens match on mii-pr-mtb-rna-seq (1 candidate artefact)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Molekular-Pathologie-Befund-DiagnosticReport.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-Observation.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/P-Immunhistochemie-Observation.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-HER2-Observation.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-MMR-MSI-Observation.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-PDL1-Observation.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-Phosphorylation-Observation.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/In-Situ-Hybridization-Observation.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/In-Situ-Hybridization-HER2-Observation.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/In-Situ-Hybridization/Index.page.md (no anchor of its own)
5.4c page-routing	index.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	map rows=102 retired=0 coverage=ok	map=migration-log/page-map.tsv
```

## 7. Page map (v2) and coverage

The page map is the CONTRACT of the narrative migration: this run generates and validates it, step 5 consumes ONLY it, step 8 checks against it. Columns: `source_page`, `target` (repo-relative path or `RETIRED`), `reason`, `branch` (spec 9e 1-4; 5 = RETIRED), `measure`. One row per page of the source page universe - the authoritative guide tree UNION `input/pagecontent` UNION on-disk pages no toc lists.

Rows: **102** total - 102 routed source pages (101 from the primary tree, 1 union pages outside it) and 0 RETIRED guide-tree summary row(s).

### 7.1 Union pages outside the primary tree

Pages of the universe the primary page tree does not list - routed by the same passes, after it (menu budget included).

| Source page | Branch | Target | Measurement |
| --- | --- | --- | --- |
| `index.md` | 3 | `input/pagecontent/index.md` | agreed page named 'index' exists in the target <br>_(union page: in input/pagecontent but not in the primary page tree)_ |

### 7.3 Coverage validation

Universe re-derived from disk: **102** page(s). Every one needs a row with a non-empty target; every RETIRED row needs a reason. The exit code reports the result (0 covered, 1 not).

**Covered.** All 102 universe pages have a target row; every RETIRED row carries a reason.

## 8. M9 optional-page / other-bucket proposal (Gate 0 census)

Counts: generated_crosscheck.counts (fsh-generated/resources). Rule (spec 9a): count 0 -> REMOVE the optional page, count > 0 -> KEEP and fill it; artefacts are never deleted to force a removal. Each proposal is a `5.4a` run-log line and a HUMAN decision - this table only measures.

| Optional page | Census key | Count | Proposal |
| --- | --- | ---: | --- |
| `extensions.md` | `extensions` | 11 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `search-parameters.md` | `searchparameters` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `operations.md` | `operations` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `value-sets.md` | `valuesets` | 29 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `code-systems.md` | `codesystems` | 19 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `researcher-guidance.md` | - | - | no artefact count decides it - source narrative does (human decision) |
| `metadata.md` | - | - | no artefact count decides it - source narrative does (human decision) |

Artefact types in the census's OTHER bucket - each has NO template page and needs its own named placement (its own `5.4a` line; a type nobody placed is a queue-1 item):

| `artifacts.other` type | Count | Proposed placement |
| --- | ---: | --- |
| ConceptMap | 2 | h3/h4 section on `artifacts.md` |
| EvidenceVariable | 2 | h3/h4 section on `artifacts.md` |
| NamingSystem | 3 | h3/h4 section on `artifacts.md` |

Declared-vs-generated mismatches Gate 0 reports (3) - the GENERATED counts above are the authoritative ones: `examples` 186->183, `other:EvidenceVariable` 0->2, `profiles` 50->49.

