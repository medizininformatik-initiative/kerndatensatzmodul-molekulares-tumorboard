# Guidance for Researchers - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Guidance for Researchers**

## Guidance for Researchers

### Guidance for Researchers

Guidance for researchers using the data of the **Molecular Tumor Board** module for research purposes — e.g. which data elements are relevant to which research questions, and how they are to be interpreted.

> **Written during migration - review before release.** The source guide ships no researcher guidance; the following outcome-endpoint section is PROPOSED from the module's data elements and requires review by the module team.

### Outcome endpoints: OS, PFS and time to next treatment

The module's follow-up documentation is designed so that the standard real-world oncology endpoints can be derived from routine data. The reference point (t₀) for all three is typically the **start of the MTB-recommended therapy** ([SystemischeTherapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md)`.performedPeriod.start`); depending on the research question, the **MTB decision date** ([Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)) can serve as an alternative index date.

**Overall survival (OS)** — time from t₀ to death from any cause. Death and its date come from `Patient.deceasedDateTime` (MII Person module); patients without a death record are censored at their last documented contact (most recently dated [Follow-Up ClinicalImpression](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.md), Response-Befund or therapy documentation).

**Progression-free survival (PFS)** — time from t₀ to the first documented progression or death, whichever comes first. Progression is read from the [Response-Befund](StructureDefinition-mii-pr-mtb-response-befund.md): a RECIST/iRECIST assessment of **progressive disease** (`PD`) in `valueCodeableConcept`, with `effectiveDateTime` as the event date and the assessment method (RECIST, RANO, clinical) in the profile's method element. Response findings are tied to their therapy via `partOf`, so PFS is computed **per therapy line**, not per patient alone.

**Time to next treatment (TTNT)** — time from t₀ to the start of the **next** systemic therapy line (`performedPeriod.start` of the following SystemischeTherapie, or the first MedicationStatement of the next line); patients without a subsequent line are censored at last contact. TTNT is the robust real-world surrogate when imaging-based progression assessment is incompletely documented — in this module's data it needs no imaging at all, only the therapy sequence, and the reason a line ended is available in the therapy's status reason (`mii-cs-mtb-therapiestatusgrund` / `statusReason`) and, for non-implementation of a recommendation, in the Follow-Up's `Grund Nicht-Umsetzung` coding.

Practical notes: therapy lines are ordered by `performedPeriod`; the `Leitliniendokumentation` extension on prior therapies carries the line number (`Therapielinie`) where documented. Cost-coverage delays (visible as the span between [Antrag](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md) and [Antwort Kostenübernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.md)) can systematically shift t₀ and are themselves a researchable quantity.

