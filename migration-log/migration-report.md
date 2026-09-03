# Migration report — Molekulares Tumorboard (MTB) → MII KDS module template

**Module:** MII KDS Modul Molekulares Tumorboard (MTB) · **Report author:** agent (Claude Code) + `mii-ig-migration` skill v0.25.0 · **Report date:** 2026-09-03
**Written for:** the MTB module team and TF KDS reviewers (Gate A–D staffing below) · **Decision requested by:** next TF-KDS sync
**Decision requested:** approve with the listed conditions (Gates A–C worked through the Sign-off checklist)
**State:** complete through build and verification
**Published?** No package was released to the FHIR package registry. The rendered preview will appear (after CI runs on this branch) at
<https://medizininformatik-initiative.github.io/kerndatensatzmodul-molekulares-tumorboard/branches/migration/2026.0.1-template-v0.13.2/>.
**Recommendation:** merge after Gates A–C are signed — identity, artifact set and canonical URLs are measured IDENTISCH to the source, the QA error count fell from 1,387 to 260 on the same pinned toolchain, and every open point is queued below with an owner.

## How to use this report

1. Read **Summary** and **Applied fixes** first (five minutes): that is everything that already changed.
2. Working a sign-off? Go straight to the **QA checklist** under *Sign-off* — one checkbox per open obligation, grouped by gate.
3. Then work **① Decisions**, **② Reviews**, **③ QA triage** in that order. Every item names its owner.
4. Comparing the migrated guide against the source by hand? `migration-log/comparison-table.md` renders the page map as clickable source ↔ target rows.
5. **Gate 0**, **Identity**, **Verification** and **Protocol** are evidence. Open them to check an item or look a term up.
6. Item ids are greppable (`DEC-3`, `REV-2`, `QA-5`, `FIX-1`) — quote the id when you answer.
7. Nothing is published and every applied change is revertible; but doing nothing is not neutral — read each item's **If nobody acts**.

## Summary — read this first (for everyone)

The MTB module (FHIR profiles for molecular tumor board documentation, based on the DNPM dataset) was moved from its Simplifier-published, `fhir.base.template` hybrid setup onto the **MII KDS module template v0.13.2** — the same template already carrying Onkologie, Lungenfunktion, Seltene Erkrankungen and PROs. Identity, artifact set and canonical URLs are unchanged; the guide is now bilingual (English default, German translation) with the full German narrative carried over.

- **Source:** `medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard` @ `624b767` (branch `dev`, version 2026.0.1), shape **A** — an IG-Publisher project with FSH in its tree; narrative taken from the repository's own Simplifier guide tree `implementation-guides/ImplementationGuide-2026.x-DE` (101 pages). The Simplifier guide has **no published read-only version** (only a live preview; the README's guide key 404s), so the git tree is the pinned narrative source.
- **Rendered preview:** builds locally to `output/` (en default, de at `output/de/`); the public URL above appears once CI publishes this branch.
- **Build:** SUSHI reports **0 errors, 0 warnings**; the IG Publisher's QA report lists **260 errors / 4,652 warnings** (two tools, two counts — QA errors do not fail the build).
- **QA acceptance bar:** no worse than the unmigrated source. Source **1,387 errors** (measured, same pinned toolchain), target **260** — bar met with a 5× improvement (③).
- **Verification:** **247 IDENTISCH · 36 DIVERGIERT · 148 NICHT PRÜFBAR** (final build) — every DIVERGIERT row is classified into one of five named transformation/decision classes (run.log `11 c4-classification`) or queued below; NICHT PRÜFBAR rows are listed in the Sign-off checklist. Neither is a pass by itself.
- **Open for humans:** 6 decisions (①), 5 review groups (②), 5 QA classes (③); **DEC-1..DEC-4 and the ② machine-translation review block publication** (Gate A–C), listed under *Sign-off*.
- **Not checked by this migration:** clinical correctness of any prose, the DNPM→MII StructureMaps' transformation correctness (the FML under `input/maps/` is carried unchanged and no longer compiled by the IG build — see QA-4), and the Simplifier live-preview's equality with the git tree. Unchanged from the source, out of scope here.

## Where the evidence lives

Everything cited is committed with the branch under `migration-log/`.

| File | What it is |
|---|---|
| `run.log` | append-only record of every step, its command and measured outcome |
| `verification.md` / `verification-findings.tsv` | the verifier's per-check table (human/machine readable) |
| `page-map.tsv` / `page-structure-advice.md` | the page-map v2 contract (generated, reviewed) and its rendering |
| `comparison-table.md` | the map as clickable rendered source ↔ target rows |
| `preflight-analysis.json` / `postflight-analysis.json` | ig-stats measurement of the unmigrated / migrated tree |
| `prepost-delta.md` / `.tsv` | property-by-property pre→post verdicts |
| `samemodule/compare-report.md` | the same-module verification (identity / artifact set / canonicals) |
| `derived-content.tsv` | every passage the migration WROTE rather than carried (8 markers) |
| `identity-claims.md` / `.tsv` | one row per identity field per source, contradictions flagged |
| `source-inventory.json` | every source file classified |
| `qa-source-baseline.json` + `ig-publisher-source.log` | the PROVEN source QA baseline (same toolchain) |
| `qa-checklist.md` | the generated per-gate sign-off checklist (pasted under *Sign-off*) |
| `ig-publisher*.log`, `sushi-*.log` | raw tool output behind every build number |

**Citation format:** `run.log {step} {action}` = one line in the run log — find it with `grep -F '{action}' migration-log/run.log`. Where report and evidence disagree, the evidence wins.

## How to re-run any of this

| What | Command | Expected |
|---|---|---|
| compile the FSH | `npx --yes fsh-sushi@3.20.1 .` | `0 Errors` |
| render and validate the guide | `java -jar publisher.jar -ig .` (IG Publisher **2.3.2**, sha256 pinned in `.github/workflows/ig-publisher.yml`) | `qa.json` errs=260 |
| the template's release checks (M1–M11) | `node scripts/convention-check.mjs` | see DEC-2 (id/canonical pattern divergences are the SOURCE's identity) |
| the migration verifier | `python3 <skill>/scripts/verify-migration.py --target . --source <source checkout @624b767> --rendered output --source-lang de --template-latest v0.13.2` | exit 1 (36 classified DIVERGIERT) |
| the derived-content scan | `python3 <skill>/scripts/derived-scan.py` | 8 markers, 0 findings |
| the page-routing map generator | `python3 <skill>/scripts/page-structure-advice.py --source <source> --target . --out migration-log/page-structure-advice.md --map migration-log/page-map.tsv` | ⚠ regenerating OVERWRITES the reviewed map — re-apply the reviewed overrides recorded in run.log |
| the pre/post delta | `python3 <skill>/scripts/prepost-delta.py --pre migration-log/preflight-analysis.json --post migration-log/postflight-analysis.json --out migration-log/prepost-delta.md --tsv migration-log/prepost-delta.tsv` | exit 1: ONE residual row, the analysed licence-heuristic false positive (QA-5) |
| the LICENSE aligner | `python3 <skill>/scripts/license-align.py --source <source> --target .` | exit 0, `license-replaced: from=CC-BY-4.0 to=CC0-1.0` |
| the sign-off checklist / comparison table | `qa-checklist.py` / `comparison-table.py` (see run.log `8 …` lines for the exact invocations) | regenerate, never retype |

**The verifier is not vendored here** — it ships with the `mii-ig-migration` skill, `forschungsgruppe-digital-health/agent-skills` **v0.25.0** (commit `5c0cc0c`). It needs the source checkout (`git worktree add <dir> 624b767`) and the rendered `output/`.

## Codes, gates and words used in this report

**Item ids.** `DEC-n` decision (①) · `REV-n` review (②) · `QA-n` QA triage (③) · `FIX-n` an applied, revertible change.
**Verdicts** (the verifier reports in German): **IDENTISCH** matched · **DIVERGIERT** differs, named · **NICHT PRÜFBAR** could not run — *not* a pass.
**M1–M11** — the template's release checks (`scripts/convention-check.mjs`): M1 packageId namespace · M2 id pattern · M3 name pattern · M4 title · M5 canonical space · M6 CalVer · M7 no floating pins · M8 demo page gone · M9 optional pages decided by artifact count · M10 no repeated title headings · M11 the Security-and-Privacy stage-3 decision.
**C/F/P/R/L** — the verifier's layers: Conservation · Fidelity · Provenance · Rendering · run-Log as second oracle.

| Gate | What it decides | Who staffs it | Passed when |
|---|---|---|---|
| **A** | identity: canonical, ids, version, licence, artifact completeness | module maintainer + TF KDS (owns cross-module conventions) | every ① row routed to A answered |
| **B** | the narrative: section mapping, completeness, images, links | the module's clinical/technical authors | every ② row routed to B checked |
| **C** | language: translation quality, every `TODO:REVIEW` | a German- and English-competent domain reviewer | no `TODO:REVIEW` unreviewed |
| **D** | release governance and the merge — **merging publishes the preview**, releasing needs the module-release workflow | TF KDS / AG IOP / NSG per KDS governance | A–C signed, blocking items cleared |

**Gate 0 is not a sign-off** — it is the measured pre-migration scope picture.
**"spec §n"** = the migration specification in `agent-skills` v0.25.0 (`skills/mii-ig-migration/references/migration-spec.md`); not vendored here.

## Applied fixes (already changed — a human confirms or reverts)

Merging accepts all of them; to reject one, revert its commit on this branch.

**FIX-1 — LICENSE aligned with the source's licence.** The target's `LICENSE` (the template scaffold's CC-BY-4.0) was replaced with **CC0-1.0** — the official legal code vendored with the skill, because the source declares CC0-1.0 in `sushi-config.yaml`/`package.json` but ships **no LICENSE file** (the measured normal state of CC0 KDS modules). Evidence: run.log `5.2 license-align` `license-replaced: from=CC-BY-4.0 to=CC0-1.0 mode=declared-vendored`. **Required, not optional** — reverting restores a licence the module never declared.

**FIX-2 — jurisdiction rendered form.** Source declared `http://unstats.un.org/unsd/methods/m49/m49.htm#276`; the page header cannot resolve that form (`Unknown region code '276'`, the measured R2 defect class), so the template's equivalent `urn:iso:std:iso:3166#DE "Germany"` is used (as Onkologie does). Marked `TODO:REVIEW Gate A` in `sushi-config.yaml`. Semantics unchanged (both mean Germany); this is the one identity-adjacent field where template-wins was applied, announced here and in DEC-3.

**FIX-3 — licence claim in `metadata.md` corrected** from the scaffold's CC-BY-4.0 literal to CC0-1.0 (both languages) — caught by the pre/post delta.

**FIX-4 — scenario tables converted HTML → markdown** (`anwendungsszenarien.md`, both languages) and the three information-model SVGs copied into `input/images/` with local references (previously hot-linked from `raw.githubusercontent.com`). Fixes the delta's directive regression and makes the pages render offline; content unchanged (see REV-3).

**FIX-5 — retired the `fhir.base.template` build entry points** (`_build.*`, `_genonce.*`, `_gencontinuous.*`, `_updatePublisher.*`; `git rm`, revertible) — replaced by the template's `ig-publisher.yml` workflow and devcontainer. The module's own `main.yml` CI and `package.json`/`package.bake.yaml` (Simplifier publishing path) are **kept**, as Onkologie kept them.

## ① Decision queue (Gate A — someone must choose)

**DEC-1 — identity `title` and `canonical` contradictions between sushi-config and package.json** · severity **medium** · Gate A
- **What it is:** `sushi-config.yaml` says title `MII IG Kerndatensatz-Modul Molekulares Tumorboard` and canonical `…/fhir/ext/modul-mtb`; `package.json` says `MII IG Molekulares Tumorboard` and canonical `…/ext/modul-mtb/ImplementationGuide/mii-ig-mtb-de` (the Simplifier IG-resource URL form, referencing an IG id `mii-ig-mtb-de` that exists nowhere else). The migration carried **sushi-config's values** (it is what the build reads) and left package.json untouched.
- **Where:** `sushi-config.yaml:14-15`, `package.json` — ledger `migration-log/identity-claims.md`.
- **If nobody acts:** nothing breaks; the two files keep disagreeing as they did before the migration.
- **Options:** (a) confirm sushi-config's values and align package.json in a follow-up → files agree · (b) keep as-is, recorded → status quo.
- **Default applied now:** sushi-config wins, both readings stand in the ledger. **Who decides:** module maintainer. **Effort · impact:** minutes · cosmetic. **Reversible:** yes. **Evidence:** run.log `2.1 carry` (identity-contradiction WARNs).

**DEC-2 — template naming-pattern divergences (M2/M5): id and canonical are the SOURCE's, not the template pattern's** · severity **high (release-blocking only if TF-KDS insists on the pattern)** · Gate A
- **What it is:** the template patterns would give id `mii-ig-mtb` and canonical `…/fhir/modul-mtb`. The module's **published** identity is id `mii-kerndatensatzmodul-molekulares-tumorboard` and canonical `…/fhir/ext/modul-mtb`. Per spec §2.2 the source wins — changing a published canonical breaks every consumer; the same decision was taken for Onkologie (`mii-ig-onko-de-v2026`, `…/ext/modul-onko`).
- **Where:** `sushi-config.yaml:10,13` (commented in place).
- **If nobody acts:** the convention check reports M2/M5 pattern deviations at release time; consumers are unaffected.
- **Options:** (a) keep the published identity (recommended, Onkologie precedent) → M2/M5 waiver recorded · (b) rename to the pattern → **breaks every existing consumer and the registry package**.
- **Default applied now:** (a). **Who decides:** TF KDS. **Effort · impact:** none · consumer-visible only under (b). **Reversible:** (a) yes; (b) NO — published canonicals cannot be recalled. **Evidence:** run.log `2.1 read-identity`, samemodule compare (IDENTISCH).

**DEC-3 — STAND-IN values invented by the migration** · severity **medium** · Gate A
- **What it is:** four values the CRMI metadata contract requires that the source nowhere declares: **approvalDate/date** `2026-03-30` (the 2026.0.1 release-merge date), **artifact-author email** `thomas.debertshaeuser@charite.de` (mirrors Onkologie), **artifact-topic NCI code** `C3262` *Neoplasm* (mirrors Onkologie), and the **jurisdiction form** (FIX-2). Each is marked `TODO:REVIEW Gate A` in `sushi-config.yaml`.
- **Where:** `sushi-config.yaml` lines with `TODO:REVIEW Gate A`.
- **If nobody acts:** the rendered guide presents these as fact.
- **Next action:** confirm or replace each value, delete the TODO comments. **Who decides:** module maintainer. **Effort · impact:** minutes · consumer-visible metadata. **Reversible:** yes, config-only.

**DEC-4 — dependencies added by the template machinery (F2 ×4)** · severity **low** · Gate A
- **What it is:** the source's 11 pins are carried **unchanged**; the template's CRMI `meta.profile` claims and scaffold add `hl7.fhir.uv.crmi 2.0.0`, `hl7.fhir.uv.xver-r5.r4 0.1.0`, `hl7.terminology.r4 7.3.0`, `hl7.fhir.uv.extensions.r4 5.3.0` (exactly what Onkologie carries). The verifier flags every ADDED pin NICHT PRÜFBAR by design.
- **If nobody acts:** nothing — the pins are pinned. **Next action:** tick the four F2 boxes in the checklist. **Who decides:** module maintainer. **Reversible:** yes.

**DEC-5 — canonical-space outliers carried unchanged (special-url list)** · severity **low** · Gate A
- **What it is:** 4 definitional URLs outside the module canonical, all pre-existing in the source and now declared in `sushi-config.yaml`'s `special-url` list: the CapabilityStatement at `…/fhir/modul-mtb/CapabilityStatement/metadata` (no `/ext/`) and the three `dnpm-dip.net` logical models; plus 4 pre-existing id↔url mismatches (preflight `canonical_space`). Guardrail 1: never changed by a migration.
- **If nobody acts:** status quo (published state). **Next action:** acknowledge; fixing any of them is a breaking change for a future major. **Who decides:** TF KDS + module team.

**DEC-6 — Simplifier guide has no published version** · severity **medium** · Gate A/D
- **What it is:** discovery (run.log `5.1c simplifier-discover`) found guide key `mii-ig-molekulares-tumorboard-v2026-de` with **only a live preview**; the README's `MII-IG-MTB-DE` key 404s. The migration therefore pinned the **git tree** as narrative source. The README's IG link is stale either way.
- **If nobody acts:** the README keeps pointing at a 404 guide.
- **Options:** (a) after merge, point the README's IG link at the GitHub-Pages rendering · (b) publish a Simplifier version for the record · (c) both.
- **Default applied now:** none (README untouched — it is the module's own file). **Who decides:** module maintainer. **Effort:** minutes.

**Values this migration invented (STAND-IN):** the four DEC-3 values — nothing else.

## ② Review queue (Gates B/C — someone must check)

### Derived content — GENERATED, do not retype

8 markers, all gate B, none open a finding (`derived-scan` exit 0, twins matched): `profiles` (summary ×2: the four-group overview), `extensions` (suggestion ×4: the two notes about extensions `mii-ex-mtb-therapielinie` / `mii-ex-mtb-zulassungsstatus` that the source guide describes but the package no longer contains), `security-and-privacy` (suggestion ×2: the proposed stage-3 module-specific aspects — genomic-data re-identification, germline findings, MV-GenomSeq governance). Rows: `migration-log/derived-content.tsv`. Each is answered by keeping (delete marker+box) or rejecting (delete the text) — a Gate-B decision per row.

### Hand-written review items

**REV-1 — machine-translated English default pages** · severity **high** · Gate C
- **What it is:** English is now the default language; every default-language page and all 57 intro notes are **machine translations of the German source**, marked with a provenance comment `TODO:REVIEW machine-translated`. The German mirrors carry the source text (verbatim where possible — see REV-2).
- **Where:** grep handle: `grep -rl 'TODO:REVIEW machine-translated' input/pagecontent input/intro-notes` (≈78 files).
- **If nobody acts:** unreviewed machine English ships as the guide's default language.
- **Next action:** review per page, remove the marker. Translation defects inherited from the source (broken sentences in Leitlinienbehandlung-Status, IHC-Phosphorylation, genomic-study-analysis, systemische-therapie, systemische-vortherapie, IHC-PDL1; a `ttps://` typo; stray list numbers) were **preserved 1:1** — run.log `5.4 source-prose-defects` lists them; fixing them is a source-content decision, not a translation fix.
- **Who checks:** German/English-competent domain reviewer. **Effort:** hours. **Reversible:** yes, text under version control.

**REV-2 — the five C4/C7 divergence classes (narrative fidelity)** · severity **medium** · Gate B
- **What it is:** 17 C4 + 14 C7 verifier rows, classified (run.log `11 c4-classification`): (1) decision-retired pages (Kommentierungsphase — self-declared temporary; empty nav pages); (2) FQL/`{{render}}` blocks dropped — their tables regenerate on the IG-Publisher artifact pages; (3) image links rewritten to local `input/images/`; (4) the HTML→markdown table conversion (FIX-4); (5) normalization of carried German (`ue`→`ü` transliteration in the Genetische-Implikationen text, list punctuation in Kontext). Two pages were restored **verbatim** after the first verifier run caught silent typo-fixes (capability-statements DE, index DE module description).
- **Where:** `migration-log/verification-findings.tsv` (C4/C7 rows); checklist Gate-B section.
- **Next action:** spot-check one page per class against `comparison-table.md`; accept or name a loss.
- **Who checks:** module authors. **Effort:** ~1 hour.

**REV-3 — page-map routing decisions** · severity **medium** · Gate B
- **What it is:** the reviewed `page-map.tsv`: 59 artifact pages → intro notes (routed by their own `subject:` front-matter), 15 merges into template pages, 2 own pages (`anwendungsszenarien`, `dnpm-transformation`), 24 retired (nav-only/stale), 2 merges into `profiles.md`. Notable single calls: `P-Immunhistochemie` merged into the *phosphorylation* intro (its `subject:` is stale); the duplicate `RequestGroup-Alias` page merged; `QA-Validierung` became an *Implementer Guidance* section; the 4,618-word scenario page became its own page (size gate).
- **Next action:** skim `page-structure-advice.md` + the RETIRED checklist rows; reroute anything misplaced (map + file move).
- **Who checks:** module authors. **Effort:** ~1 hour.

**REV-4 — template pages still carrying scaffold prompts (gaps, not errors)** · severity **low** · Gate B
- **What it is:** `downloads`, `researcher-guidance`, `metadata` (FAIR table), `version-history`, `translationinfo` keep template default content with `[TODO]` prompts — the source has no counterpart content, and a gap in the source is a TODO, never a writing task (guardrail 3).
- **Next action:** fill or accept per page. **Who checks:** module team. **Effort:** hours (optional before first template release).

**REV-5 — retained top-level source files (Gate-D retirement list)** · severity **low** · Gate B/D
- **What it is:** kept in the tree, proposed for retirement only after Gate D: `implementation-guides/` (the migrated Simplifier tree — the C4 comparison source), stale build artifacts committed by the old setup (`validation.json`, `validation.html`, `validation-output/`, `log.txt`, `txlog.html`, `known_errors.text`), and the module's working notes (`QUESTIONS.md`, `TICKET_RESOLUTION_STATUS.md`, `information-model/`, `input/maps/`, `scripts/matchbox/`) which stay.
- **Next action:** confirm the retirement list at Gate D; nothing was removed.

## ③ QA triage (what the build says, and whose problem it is)

**Baseline (proven, not asserted):** the unmigrated source was built with the same pinned toolchain (IG Publisher 2.3.2, SUSHI 3.20.1, Jekyll 4.4.1) — run.log `5.6 qa-baseline-proven`, `migration-log/qa-source-baseline.json`.

| Build | Errors | Read as |
|---|---|---|
| **Source total (unmigrated, measured)** | **1,387** | what the module already had |
| **Target total (this migration)** | **260** | bar "no worse than the source" — met, 5× better |
| Reconciliation | source ≈ 1,127 source-only (814 extension-context "Zielkontext" + FML StructureMap compile errors + display/vocab classes absent from the target) + ~260 shared; target = shared classes only, no migration-new class | one line; per-class lists below |

| # | Finding (shortened) | Count | Whose problem (proof) | If nobody acts | Next action | Who owns it |
|---|---|---|---|---|---|---|
| QA-1 | `Ressource X nicht auffindbar` (unresolvable example references), `DosageStructuredRequiresBoth` constraint, slice-match errors, ATC/LOINC vocabulary errors | 57+49+16+~25 | **source-inherent, proven** — identical classes and counts in the baseline build | ships exactly as today | accept, recorded; report upstream to the module team | module team upstream |
| QA-2 | broken in-page anchors on the biomarker SD pages (`ploidie`, `mutationslast`, `hrd-score`, `brcaness`), now ×2 (en+de) | 96 | **source-inherent, proven** (same pages in baseline); the language split doubles the *count*, not the defect | cosmetic broken anchors | fix the SD narrative anchors upstream | module team |
| QA-3 | 4,652 warnings vs source 4,334 | +318 | migration-**visible** — the second language variant re-renders every page; warning *classes* unchanged | nothing | none | — |
| QA-4 | the DNPM FML maps under `input/maps/` are **no longer compiled** by the IG build (source build compiled them, with errors) | — | migration-visible, source-authored — the maps were never in the published package (registry package has no StructureMaps), so package identity is unchanged; they remain executable with Matchbox per the DNPM-Transformation page | the maps stay repo files, not rendered artifacts | decide at Gate B whether to publish them as artifacts in a future release (would need `path-resource` + FSH/JSON form) | module team |
| QA-5 | pre/post delta residual: `licence.contradictory` false→true | 1 row | **tool false positive, analysed** — all four evidence values are CC0; the fifth "value" is ig-stats reading only line 1 of the official CC0 legal code (“Creative Commons Legal Code”); same class as fhir-ig-analysis issue #95 | none — every declaration is CC0 | file the upstream `fhir-ig-analysis` issue; do NOT edit the legal text | migration tooling |

**Blocking?** None of the above blocks — the acceptance bar is met and no migration-induced error class exists.

## Gate 0 — pre-flight scope (evidence; not a sign-off)

From `migration-log/preflight-analysis.json` (measured on the unmigrated source):

| Aspect | Measured on the source | What it caused in this run |
|---|---|---|
| Artifacts | 50 profiles, 11 extensions, 29 VS, 19 CS, 4 logicals, 1 CapabilityStatement, 186 examples, 3 NamingSystems, 2 ConceptMaps (+2 generated EvidenceVariables) — Σ 300 | M9 decisions; C1 reference set |
| Generated-vs-declared cross-check | 3 mismatches (50↔49 profiles, 186↔183 examples, 2 EvidenceVariables generated only) | pre-existing; generated census treated as authoritative (SUSHI is what publishes) |
| Canonical-space census | 4 out-of-space urls + 4 id↔url mismatches; special-url prediction 8 | the 4-entry `special-url` list (DEC-5) |
| Licence evidence | CC0-1.0 from sushi-config + package.json, agreeing; **no LICENSE file** | FIX-1 (vendored official CC0 text) |
| Dependency health | 11 exact pins; injection_risk flagged (tho/extensions unpinned) | the 4 template pins (DEC-4) remove the injection risk (delta: improved) |
| Narrative source | **dual**: stub `input/pagecontent/index.md` (2025-12) + full guide tree (2026-04) | the guide tree is authoritative (fresher, complete) — run.log `5.1c rendered-source` |
| QA baseline | none in-tree; local `output/qa.json` stale (2025-12, crashed) | **obtained**: source built with the pinned toolchain → 1,387 errors |

## Content map (where every source page went)

**Narrative source (spec §5.1d):** the repository's own guide tree (101 pages, in git — no harvest needed; the Simplifier preview is unpinned and served only as a human reference). **The machine-readable contract is `migration-log/page-map.tsv`** (102 rows: 59 intro-note routes, 15 merges, 2 own pages, 2 profile-family merges, 24 RETIRED with reasons); the generated, clickable rendering is **`migration-log/comparison-table.md`** — pasted there rather than duplicated here (deviation noted under *Protocol*).

**Optional pages, decided by measurement (M9):** REMOVED at artifact count 0: `operations`, `search-parameters`. KEPT with counts: `extensions` (11), `value-sets` (29), `code-systems` (19), `capability-statements` (1), `logical-models` (4), plus `metadata` and `researcher-guidance` (Onkologie parity). **M8:** the scaffold's demo page (`rendering-artifacts`) deleted, both languages. **M11:** stage-3 decided — module-specific aspects PROPOSED as marked DERIVED content (② derived table); illustrative example box removed in both languages.

**Artifact classes the template page set does not model:** ConceptMap (2), NamingSystem (3), EvidenceVariable (2) — listed on the generated artifacts summary; no dedicated page (as in the source). **Template pages without source content (kept as stubs):** see REV-4. **Source files retained for Gate-D retirement:** see REV-5.

## Identity (what makes this module *this* module)

| Field | Value | Same as the source? | Where it came from |
|---|---|---|---|
| canonical | `https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb` | yes | sushi-config (package.json variant → DEC-1) |
| id / name | `mii-kerndatensatzmodul-molekulares-tumorboard` / `MII_IG_MTB_DE` | yes | sushi-config (template pattern diverges → DEC-2) |
| title | `MII IG Kerndatensatz-Modul Molekulares Tumorboard` | yes | sushi-config (package.json variant → DEC-1) |
| packageId | `de.medizininformatikinitiative.kerndatensatz.mtb` | yes | package.json (absent in sushi-config; matches the registry) |
| version / releaseLabel | `2026.0.1` / `release` | yes | sushi-config + registry |
| status / licence | `active` / `CC0-1.0` | yes | sushi-config + package.json |
| publisher | Medizininformatik-Initiative | yes | sushi-config |
| jurisdiction | `urn:iso:std:iso:3166#DE` | **form changed** (m49#276 → ISO-3166 DE; same country) | FIX-2 / DEC-3 |
| dependencies | the source's 11 pins unchanged + 4 template pins | source pins yes; 4 added | DEC-4 |

**Fields that differ from the source:** jurisdiction form only (FIX-2, announced). The same-module verification reads **identity IDENTISCH (10 fields), published artifact set IDENTISCH (300), canonical URLs IDENTISCH (115)** — `migration-log/samemodule/compare-report.md`.

The full per-source ledger with the three recorded contradictions (canonical, title, jurisdiction — all DEC-1/DEC-3) is `migration-log/identity-claims.md` (generated). **Parent packages missing snapshots:** none encountered (shape A, all parents resolved).

## Verification (summary — the full generated table is `migration-log/verification.md`)

**Command:** see *How to re-run*. **Exit 1** — at least one named divergence. **Inputs:** target · source @624b767 · rendered `output/` · run.log.

| Layer | IDENTISCH | DIVERGIERT | NICHT PRÜFBAR |
|---|---|---|---|
| conservation (C1–C7) | see `verification.md` | 31 (C4 17 + C7 14 — the five classes, REV-2) | C4-unjudged rows (checklist Gate B) |
| fidelity (F1–F4) | identity/pins/licence | 0 | 4 (the added template pins, DEC-4) |
| provenance (P1–P4) | template/publisher/pins | 0 | P4 (no published Simplifier version to pin — DEC-6) |
| rendering (R1–R5) | pages/images/translations | 2 (R2: the searchform `{{title}}` placeholder, en+de — template-inherent; the quoted "Unknown code" rows cleared after rewording) | R1 reference rows |
| run log (L0–L4) | complete | 3 (L3: the three recorded identity contradictions — DEC-1/DEC-3, open by design until Gate A) | conditional steps |

**Totals: 247 IDENTISCH · 36 DIVERGIERT · 148 NICHT PRÜFBAR.** Acceptance: every DIVERGIERT row is fixed (L2/P1/C5 were, mid-run) or carried as a classified, queued decision (C4/C7 → REV-2; L3 → DEC-1/3; R2 → template-inherent + fixed-pending-rebuild). Every NICHT PRÜFBAR row is a checklist box under *Sign-off*.

**Verifier changes made during this run:** none. **Runs, in order:** run 1 (238/48/154) → emitted the missing expected-step log lines, fixed the profiles-marker source, added the IG-resource menu entry, reworded the quoted defect string, restored two DE pages verbatim → run 2 (247/38/148) → final rebuild → run 3 (247/36/148).

## Auto-fix (spec §12)

Not run — every repair above was made explicitly and is listed as a FIX/queue item.

## Protocol (what was executed — for auditors)

GENERATED evidence: `migration-log/run.log` — read it back with `grep -E '  (WARN |ERROR)  ' migration-log/run.log`. Key steps, in order (each line carries its `cmd=` and measured outcome):

| Step | Action | Measured outcome | Acceptance |
|---|---|---|---|
| 1 | preflight-analysis | 300 artifacts, 1,305 directives, 72 content pages | met |
| 5.1c | simplifier-discover | key found, **no published version** (WARN) | met (finding → DEC-6) |
| 2.1 | read-identity / package-identity / claims | ledger written, 3 contradictions (WARN) | met (→ DEC-1/3) |
| 5.2 | skeleton-vendored / template-reference | v0.13.2 @a2390de, 152 files; template ref release=1.3.4 (measured) | met |
| 5.2 | license-align | `license-replaced: CC-BY-4.0 → CC0-1.0` | met (FIX-1) |
| 5.2 | sushi-skeleton | first run 1,670 errors (Aliases.fsh clobbered on the case-insensitive FS — WARN, repaired by per-definition merge); final **0 errors 0 warnings** | met |
| 5.3 | transfer | 199/199 FSH paths preserved, scaffold-only additions | met |
| 5.4 | fql-scan / fql-scan-migrated | 1,305 directives mapped, 3 unknown (`{{index:current}}` — dropped, template nav replaces); migrated tree: 0 real directives (16 `[tabs]`-rule false positives on `<table` before FIX-4) | met |
| 5.4a/b | optional-page-decisions / security-privacy-decision | M9 measured; M11 decided | met |
| 5.4c | page-routing | 102-row map generated, then reviewed (overrides logged) | met |
| 5.4d | derived-scan | 8 markers, 0 findings | met |
| 5.5 | gen-page-title-po | 22/22 titles translated | met |
| 5.6 | sushi-build / ig-publisher / qa-baseline-proven | 0/0; qa 260 errs vs baseline 1,387 | met |
| 7 | postflight / prepost-delta / same-module-verification | delta: 1 residual row (QA-5, analysed); same-module IDENTISCH ×3 | met-as-qualified |
| 11 | verify-migration | 247/38/148, divergences classified | met-as-qualified |

**Log:** 4 run boundaries, WARN/ERROR lines all accounted for above (every WARN class maps to a FIX/DEC/REV/QA item; `silent-partial-success:` — none). **Deviations from the skill:** (1) the generated comparison table and full verification table are **referenced**, not pasted, to keep this report within PR-body limits — both are committed beside it; (2) `fql-scan --strict` on the migrated tree was run with explicit targets (`input/…`) because the default target set includes the not-yet-retired `implementation-guides/` source tree; (3) two long builds ran detached (`nohup`) because the harness kills backgrounded tasks at ~10 min.

## Sign-off — what must happen before anything is published

The GENERATED per-gate checklist is **`migration-log/qa-checklist.md`** (50 boxes) — work it there. Report-authored additions:

- [ ] DEC-1 … DEC-6 answered (Gate A)
- [ ] REV-1 machine-translation review (Gate C) — **blocks publication**
- [ ] REV-2 divergence-class spot-check (Gate B)
- [ ] REV-3 page-map skim (Gate B)
- [ ] QA-4 decision on publishing the FML maps (Gate B, non-blocking)

| Status | Items | Owner |
|---|---|---|
| **Blocks publication** | DEC-2 (waiver or rename), DEC-3, REV-1 | TF KDS · maintainer · Gate-C reviewer |
| **Should be settled, does not block** | DEC-1, DEC-5, DEC-6, REV-2, REV-3, REV-4 | module team |
| **Accepted as-is, recorded** | QA-1, QA-2, QA-3, QA-5 | — |
| **Sent upstream** | QA-5 (fhir-ig-analysis licence heuristic), fql-rules `</?tab` pattern | migration tooling |

| Gate | Signed by | Date | Conditions attached |
|---|---|---|---|
| A | — | — | — |
| B | — | — | — |
| C | — | — | — |
| D | — | — | merging publishes the **branch preview** under `branches/…`; a release additionally needs the module-release workflow (Gate-D governance) |

## Mini-glossary

**canonical** the module's permanent identifying URL — changing it breaks consumers · **FSH/SUSHI** the profiling language and its compiler · **IG Publisher / qa.txt** HL7's renderer-validator and its findings report · **Gate A–D** the four human sign-offs (table above) · **TODO:REVIEW** in-tree marker: a human must look here (② groups them) · **intro note** narrative rendered atop an artifact page (`input/intro-notes/`) · **IDENTISCH / DIVERGIERT / NICHT PRÜFBAR** matched · differs (named) · could not be checked — the third is never a pass · **run log** `migration-log/run.log`, the second oracle the Protocol section is generated from.
