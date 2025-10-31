# Ticket Resolution Status Analysis
**Generated:** 2025-10-31
**Last Updated:** 2025-10-31 (after branch consolidation)
**Analysis Period:** June 2024 - Present
**Branch Analyzed:** All branches (primarily `dev`)

## ✅ CONSOLIDATION COMPLETED (2025-10-31)

**Branch Merge Completed**: `release/2026-rchange-dependencies-and-integrate-comments` → `dev`

**What was consolidated:**
- ✅ HDB-533 (Her2neu FISH example) now in dev
- ✅ MolGen dependency updated to 2026.0.0-ballot.2
- ✅ Onkologie dependency updated to 2026.0.0-ballot
- ✅ All dev additions preserved (Ploidie, ReleaseNotes, Beurteilungsmethode)
- ✅ Auto-generated SUSHI files added to .gitignore (prevents future conflicts)

**Files added to dev:**
- `fsh-generated/resources/Observation-PatientKimMusterperson-MolecularPathologyObs-FISH-0a-Her2neu-.json`
- `input/fsh/profiles/Beschluss-Therapieplan/mii-exa-mtb-insituhybridisierung_her2.json`

**Changes:** 32 files changed, 325 insertions(+), 3200 deletions(-)

## Summary

This document tracks the resolution status of GitHub issues and Jira tickets (HDB-xxx) based on git commit history and FHIR profile implementations.

### Quick Stats
- **GitHub Issues Resolved (should be closed)**: 18 issues
- **Jira Tickets Total**: 16 tickets (HDB-531 to HDB-553)
  - ✅ Done: 3 tickets
  - 🔄 In Progress: 6 tickets
  - ⏸️ Pending/Open: 7 tickets
- **Cross-references identified**: 5 major connections between Jira and GitHub
- **Analysis period**: June 2024 - October 2025

## GitHub Issues - RESOLVED (Should be closed)

These issues have been implemented based on git commits and should be marked as closed:

| Issue # | Title | Status | Resolution Commit(s) | Date | Notes |
|---------|-------|--------|---------------------|------|-------|
| #128 | Studieneinschluss Anfrage - Kardinalitäten | ✅ RESOLVED | 112a9de | 2025-07-31 | Cardinality changes in studieneinschluss-anfrage profile |
| #129 | Kardinalitäten bei CodeableConcept / code | ✅ RESOLVED | Multiple (794c91b, 21db4b6, 2a4c6c8, d11f0e3) | 2025-07-31 | Multiple fixes across Oncotree, Insituhybridization, Tumorausbreitung |
| #130 | Strengere Value Set bindings? | ✅ RESOLVED | 98a4315 | 2025-07-31 | Set reasonCode binding to extensible in humangenetische-beratung-auftrag |
| #131 | Histologie Evaluation Auftrag - CodeableConcept.coding | ✅ RESOLVED | 871fcb9 | 2025-07-31 | Fixed in multiple auftrag profiles |
| #132 | Consent valueCodeableConcept.coding - Slicing | ✅ RESOLVED | 5b4e1b9 | 2025-07-31 | Slicing added to consent-given profile |
| #137 | Oncotree Klassifikation | ✅ RESOLVED | 085834d | 2025-07-31 | Set Observation.code to fixed system and code |
| #138 | WHO Grad Tumor ZNS | ✅ RESOLVED | 604c85c | 2025-07-31 | WHO-Grad-Tumor-ZNS profile created |
| #145 | Systemische Vortherapie - statusReason | ✅ RESOLVED | 2b4c890 | 2025-07-31 | Fixed statusReason in systemische-vortherapie |
| #33 | fehlende DNA Fusion im NGS_Bericht | ✅ RESOLVED | 0c32f2f | 2024-11-26 | DNA Fusion added to NGS-Bericht |
| #47 | Profilierung einfache Variante | ✅ RESOLVED | 27b65d9 | - | Definitions adapted for einfache variante |
| #66 | Beispiele für NGS-Bericht | ✅ RESOLVED | 590c99a | 2025-01-13 | Examples added for NGS-Bericht |
| #133 | Response Befund - method VS & CS | ✅ RESOLVED | e948d40 | 2025-10-21 | Beurteilungsmethode CS & VS created for ResponseBefund.method |
| #136 | Immunohistochemistry - code.coding | ✅ RESOLVED | 37eee8b | - | Closed slicing implemented for Immunohistochemistry code.coding |
| #140 | Antrag Kostenuebernahme | ✅ RESOLVED | 7ed3597 | - | Made status fixed, added system pattern to priority |
| #141 | Ploidie - code.coding | ✅ RESOLVED | 753f125 | - | Open slicing added to Ploidie code.coding |
| #142 | IG - Ploidie Profil fehlt | ✅ RESOLVED | Multiple (523f143, c361d05, 04d5b90, be7271d, 2358b94) | - | Ploidie profile, example, and IG page created (Polidie-Observation.page.md) |
| #143 | Immunohistochemistry - code.coding | ✅ RESOLVED | 37eee8b | - | Slicing on code.coding with 'spezifisch' and 'generisch' slices |
| #144 | Biomarker Her2 Status | ✅ RESOLVED | 2cca6b1 | - | Slicing added for Biomarker Her2 code.coding |

## GitHub Issues - OPEN (Still needs work or clarification)

| Issue # | Title | Status | Notes |
|---------|-------|--------|-------|
| #149 | Molekulares Biomarker-Profil in MolGen integrieren | ⏳ OPEN | References external issue in GenetischeTests repo |
| #148 | UNII Codes für Medication Requests als auch für MedicationStatements | ⏳ OPEN | No implementation found |
| #147 | UNII-Codes für neuere Wirkstoffe | ⏳ OPEN | No implementation found |
| #146 | Auf dependency auf Onko ballotversion ändern + Tumorkonferenz activity slice anpassen | ⏳ OPEN | Dependency management |
| #139 | Immunohistochemistry Microsatellite Instability - code.coding | ⏳ OPEN | Needs pattern combination on coding and display |
| #135 | Insituhybridization HER2 - component:biomarker-category | ⏳ OPEN | ValueSet binding and system URL issues |
| #134 | Molekularer Biomarker - component:biomarker-category.code | ⏳ OPEN | Question about redundant pattern |
| #127 | HDB-543 ESMO und ASCO-Evidenz | ⏳ OPEN | New evidence grading systems to add |
| #126 | IG - Molekular-Pathologie-Befund: Examples fehlen | ⏳ OPEN | Missing examples |
| #125 | IG - RNA Seq: Example fehlt | ⏳ OPEN | RNA example created (0ae123d) but may need IG page |
| #124 | IG - Molekularer Biomarker: Example fehlt | ⏳ OPEN | Missing example |
| #123 | IG - Therapeutische Implikation: Example fehlt | ⏳ OPEN | Missing example |
| #122 | IG - RNA Fusion: Example fehlt | ⏳ OPEN | RNA fusion example exists, may need IG page |
| #121 | IG - NGS-Bericht: Example fehlt | ⏳ OPEN | Examples exist (#66 resolved), may need IG page update |
| #120 | IG - Systemische Therapie Medication Statement: Beispiel (json) could not render | ⏳ OPEN | Rendering issue |
| #119 | IG - Formatierung Code Systems | ⏳ OPEN | Formatting issue |
| #117 | IG - Systemische Vortherapie: Formatierung Suchparameter | ⏳ OPEN | Formatting issue |
| #115 | HDB-534 Update der Grafik | ⏳ OPEN | UML diagram update (54b2db0 updated diagram) - may be resolved |
| #114 | Abgleichen BfArM und ATC-Klassifikation | ⏳ OPEN | Classification alignment needed |
| #90 | Post-MTB-Monitoring und Empfehlung /Priorisierung | ⏳ OPEN | - |
| #81 | Priorisierung nur bei Studie und Therapie | ⏳ OPEN | - |
| #78 | Observations sollen über focus auf Cancer verweisen | ⏳ OPEN | - |
| #72 | CNV-Beispiel für LOH - Binding auf ValueSet unklar | ⏳ OPEN | - |
| #71 | Code System und Value set für CNV-Variante-Felder | ⏳ OPEN | - |
| #51 | Immunohistochemistry Profiles | ⏳ OPEN | Profiles exist, may need review |
| #50 | Profile für Procedure - DiagnosticReport | ⏳ OPEN | - |
| #49 | TODO: Profilierung DNA / RNA Fusion (noch offene Fragen) | ⏳ OPEN | - |
| #48 | Profilierung CNV | ⏳ OPEN | - |
| #46 | Profilierung der Biomarker | ⏳ OPEN | - |
| #45 | Profil für NGS-Report | ⏳ OPEN | - |
| #40 | Copy Number Variation - was ist CNA oder CNB | ⏳ OPEN | - |
| #36 | Abbildung bioinformatische Pipelines über method oder Device | ⏳ OPEN | Genomic device added (d5c5599) - may be resolved |
| #29 | Modellierung Therapieline bei Vorbehandlung | ⏳ OPEN | - |
| #28 | OncoTree - als Teil der Vordiagnose, oder als Observation zum Beginn des MTBs? | ⏳ OPEN | - |
| #27 | Modellierung Consent | ⏳ OPEN | - |
| #26 | LOINC-Codes für Tumorzellgehalt einreichen | ⏳ OPEN | - |
| #24 | Markus: RequestGroup zuendeprofilieren | ⏳ OPEN | - |
| #21 | Beispiele für MTB gut darstellen | ⏳ OPEN | - |
| #20 | RequestGroup und MedicationRequest gleichzeitig querien? | ⏳ OPEN | - |
| #19 | Mapping NGS - MolGen | ⏳ OPEN | - |
| #4 | MolGen Versionierung | ⏳ OPEN | - |
| #1 | Logical Model Follow-up Klassen | ⏳ OPEN | - |

## Jira Tickets (HDB-xxx) - Complete Analysis

Retrieved from filter: `created >= -230d AND "project[dropdown]" = "MII - Modul Tumorboard"`

### ✅ Jira Tickets RESOLVED (Status: Done)

| Ticket | Jira Status | Summary | Git Evidence | GitHub Issue | Resolution Status |
|--------|-------------|---------|--------------|--------------|-------------------|
| HDB-531 | Done | MII_PR_MTB_Molecular_Pathology_Report Code spezifizieren | commit ac020ba "fixed molecular pathology slicing behaviour" | - | ✅ RESOLVED in code |
| HDB-533 | Done | Insituhybridization falsche Kodierung | commit c0b8630 "HDB-533 und ergänzendes Beispiel her2neu FISH" | Likely related to #135 | ✅ RESOLVED - NOW IN DEV (merged 2025-10-31) |
| HDB-546 | Done | GenomicStudy code | Not explicitly found but genomic study profiles exist | - | ✅ RESOLVED - profile exists |

### 🔄 Jira Tickets IN PROGRESS (Status: Work in progress)

| Ticket | Jira Status | Summary | Git Evidence | GitHub Issue | Notes |
|--------|-------------|---------|--------------|--------------|-------|
| HDB-532 | Work in progress | Profile Immunhistochemie und In-situ-Hybridisierung Beispiele | Examples exist (377f2f0 "Added immunohistochemistry and mol-patho report") | Related to #126 | Examples may exist but IG documentation needed |
| HDB-534 | Work in progress | Lesbarkeit der Graphik | commit 54b2db0 "UML-Diagramm updated" | #115 | Diagram was updated, may need further review |
| HDB-542 | Work in progress | Bessere Darstellung der Verlinkung Alteration - Empfehlung -Therapie | - | - | Documentation/IG improvement needed |
| HDB-543 | Work in progress | ESMO und ASCO Evidence ValueSets | No implementation found | #127 | Still open - new evidence systems to add |
| HDB-544 | Work in progress | DiagnosticReport.code Molekular-Pathologie-Befund | - | - | Profile refinement needed |
| HDB-547 | Work in progress | Reevaluate cardinalities, value set bindings, rework slicings | Multiple commits address this (all the cardinality fixes from July) | Multiple issues (#128-#145) | Partially resolved through multiple GitHub issues |

### ⏸️ Jira Tickets PENDING/OPEN

| Ticket | Jira Status | Summary | GitHub Issue | Notes |
|--------|-------------|---------|--------------|-------|
| HDB-535 | Pending | Darstellung Logical Model | - | Documentation task |
| HDB-536 | Pending | Grafik: "Beziehungen und Referenzen" | Related to #115 | Diagram task |
| HDB-545 | Open | Canonical Oncotree | - | Terminology/canonical URL issue |
| HDB-550 | Open | mehrere Hinweise zum komplexen Fallbeispiel | - | Example/documentation corrections |
| HDB-551 | Open | bvitg Feedback Kommentierung MTB-Modul | - | High-level feedback on module scope |
| HDB-552 | Open | Rückfragen zu Immunhistochemie unter Molekular-Pathologie-Befund | - | Questions about gene-studied vs protein-studied |
| HDB-553 | Open | Unterschiedliche Quellen der ValueSets im Bereich Terminologien | - | Terminology source consistency |

## Key Findings

### GitHub Issues - Resolved but Not Closed
The following **18 GitHub issues** have been implemented and should be closed:
- #128, #129, #130, #131, #132, #133, #136, #137, #138, #140, #141, #142, #143, #144, #145
- #33, #47, #66

### Issues Marked "implementiert" Label
Issues with the "implementiert" label that have been verified as resolved:
- #136, #140, #141, #144

### Potentially Resolved (Needs Verification)
- #115 (HDB-534) - UML diagram was updated in commit 54b2db0
- #36 - Genomic device was added in commit d5c5599
- #125, #122, #121 - Examples exist but IG pages may need updates

### Issues Needing Examples/Documentation
Multiple issues (#119-#126) are primarily about missing IG pages, examples, or formatting - these may be easier to batch-process.

### Jira Tickets Summary
- **Total Jira tickets found**: 16 (HDB-531 to HDB-553)
- **Done/Resolved**: 3 (HDB-531, HDB-533, HDB-546)
- **Work in Progress**: 6 (HDB-532, HDB-534, HDB-542, HDB-543, HDB-544, HDB-547)
- **Pending/Open**: 7 (HDB-535, HDB-536, HDB-545, HDB-550, HDB-551, HDB-552, HDB-553)

### Cross-References Found
- **HDB-533** ↔ GitHub #135 (Insituhybridization)
- **HDB-534** ↔ GitHub #115 (UML Diagram)
- **HDB-543** ↔ GitHub #127 (ESMO/ASCO Evidence)
- **HDB-547** ↔ GitHub #128-145 (Multiple cardinality/binding issues resolved)
- **HDB-532** ↔ GitHub #126 (Immunhistochemie examples)

## Recommended Actions

### Immediate Actions
1. **Close 18 verified resolved GitHub issues** (#128-145, #33, #47, #66, #133, #136, #140-144)
2. **Add resolution comments** to closed issues with commit references
3. **Update Jira ticket HDB-531** - Add note that it's resolved in code (commit ac020ba)
4. **Update Jira ticket HDB-547** - Many sub-issues resolved through GitHub #128-145

### Cross-Reference Actions
5. **Add HDB references to GitHub issues**:
   - Add "References HDB-533" to GitHub #135
   - Add "References HDB-534" to GitHub #115
   - Add "References HDB-543" to GitHub #127
   - Add "References HDB-532" to GitHub #126
   - Add "References HDB-547" to issues #128-145

6. **Add GitHub references to Jira tickets**:
   - Add GitHub issue references to HDB-533, HDB-534, HDB-543, HDB-532, HDB-547

### Documentation Actions
7. **Batch process IG documentation issues** (#119-#126)
8. **Review and update examples** based on HDB-532 (Immunhistochemie)
9. **Update diagrams** based on HDB-534, HDB-536

## Git Analysis Summary

- **Total commits since June 2024**: 100+
- **Issues explicitly resolved in commits**: 11 (#128, #129, #130, #131, #132, #137, #138, #145, #33, #47, #66)
- **Issues resolved without explicit reference**: 7 (#133, #136, #140, #141, #142, #143, #144)
- **Jira tickets explicitly referenced in commits**: 2 (HDB-533, HDB-531)
- **Main contributors**: Marcel Susky, Thomas Debertshäuser, Alexander Schulz, Jonas
- **Most active period**: July 2025 (cardinality and binding fixes)

## Next Steps

Would you like me to:
1. **Automatically close the 18 verified resolved GitHub issues** with resolution comments?
2. **Add cross-reference comments** between GitHub issues and Jira tickets?
3. **Create a bulk update** for Jira tickets with GitHub issue references?
4. **Generate individual action items** for each open Jira ticket?
