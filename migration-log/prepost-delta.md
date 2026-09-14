# Pre/post delta — the two ig-stats measurements compared

| Side | Measurement |
|---|---|
| pre | preflight-analysis.json (mii-kerndatensatzmodul-molekulares-tumorboard, 624b767, 2026-09-03T17:02:47Z) |
| post | postflight-analysis.json (mii-kerndatensatzmodul-molekulares-tumorboard, 6abfe4f, 2026-09-03T18:03:05Z) |

Verdicts: **unchanged** 30 · **improved** 1 · **expected-change** 4 · **REGRESSION** 1 · **not-measurable** 0.

## ⛔ Regressions — properties that got WORSE

Each one blocks the migration until it is fixed or explained; an explanation belongs in the migration report, not in a merge commit.

- **`licence.contradictory`**: `false` → `true` — the target now declares CONTRADICTORY licences (the target declares: cc0-1.0, creativecommonslegalcode) -- one file will be read as the licence by someone, and it will be the wrong one

## Identity

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `identity.id` | mii-kerndatensatzmodul-molekulares-tumorboard | mii-kerndatensatzmodul-molekulares-tumorboard | unchanged |  |
| `identity.canonical` | https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb | https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb | unchanged |  |
| `identity.packageId` | de.medizininformatikinitiative.kerndatensatz.mtb | de.medizininformatikinitiative.kerndatensatz.mtb | unchanged |  |
| `identity.name` | MII_IG_MTB_DE | MII_IG_MTB_DE | unchanged |  |
| `identity.version` | 2026.0.1 | 2026.0.1 | unchanged |  |
| `identity.fhirVersion` | 4.0.1 | 4.0.1 | unchanged |  |
| `identity.license` | CC0-1.0 | CC0-1.0 | unchanged |  |
| `identity.calver` | true | true | unchanged |  |
| `identity.publisher` | Medizininformatik-Initiative | Medizininformatik-Initiative | unchanged |  |
| `identity.status` | active | active | unchanged |  |
| `identity.title` | MII IG Kerndatensatz-Modul Molekulares Tumorboard | MII IG Kerndatensatz-Modul Molekulares Tumorboard | unchanged |  |

## Preflight flags

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `licence.contradictory` | false | true | **REGRESSION** | the target now declares CONTRADICTORY licences (the target declares: cc0-1.0, creativecommonslegalcode) -- one file will be read as the licence by someone, and it will be the wrong one |
| `dependency_health.injection_risk` | true | false | improved | the dependency-injection risk the source carried is cleared |
| `narrative_sources.dual_source` | true | true | unchanged |  |

## Artefact counts

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `mode` | static | static | unchanged |  |
| `artifacts.profiles` | 50 | 50 | unchanged |  |
| `artifacts.extensions` | 11 | 11 | unchanged |  |
| `artifacts.valuesets` | 29 | 29 | unchanged |  |
| `artifacts.codesystems` | 19 | 19 | unchanged |  |
| `artifacts.logicals` | 4 | 4 | unchanged |  |
| `artifacts.capabilitystatements` | 1 | 1 | unchanged |  |
| `artifacts.questionnaires` | 0 | 0 | unchanged |  |
| `artifacts.searchparameters` | 0 | 0 | unchanged |  |
| `artifacts.operations` | 0 | 0 | unchanged |  |
| `artifacts.examples` | 186 | 186 | unchanged |  |
| `artifacts.rulesets` | 116 | 150 | expected-change | the count rose by 34 -- artefacts added by the migration; the report names what and why |
| `artifacts.invariants` | 2 | 2 | unchanged |  |
| `artifacts.mappings` | 2 | 2 | unchanged |  |
| `artifacts.other.ConceptMap` | 2 | 2 | unchanged |  |
| `artifacts.other.NamingSystem` | 3 | 3 | unchanged |  |
| `artifacts.other_total` | 5 | 5 | unchanged |  |
| `artifacts.total` | 300 | 300 | unchanged |  |

## Narrative pages

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `narrative.pages` | 72 | 92 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.intro_note_pages` | 0 | 57 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.translation_pages` | 0 | 21 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |

## Directives

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `directives.total` | 1305 | 1305 | unchanged |  |

