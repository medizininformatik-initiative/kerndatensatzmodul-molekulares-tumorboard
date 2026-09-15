<!-- markdownlint-disable MD041 -->
<!-- Source: kerndatensatz-basis input/pagecontent/researcher-guidance.md.
     German mirror: input/translations/de/pagecontent/researcher-guidance.md. -->


### Guidance for Researchers

Guidance for researchers using the data of the **Molecular Tumor Board** module for research purposes — e.g. which data elements are relevant to which research questions, and how they are to be interpreted.

<!-- DERIVED:accepted source=none gate=B signed-off=2026-09-15 (user; Vitalstatus/Tod-Ergänzung eingearbeitet) -->
### Outcome endpoints: OS, PFS and time to next treatment

The module's follow-up documentation is designed so that the standard
real-world oncology endpoints can be derived from routine data. The reference
point (t₀) for all three is typically the **start of the MTB-recommended
therapy** ([SystemischeTherapie](StructureDefinition-mii-pr-mtb-systemische-therapie.html)`.performedPeriod.start`);
depending on the research question, the **MTB decision date**
([Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.html)) can serve as
an alternative index date.

**Overall survival (OS)** — time from t₀ to death from any cause.
Death and its date come from `Patient.deceasedDateTime` (MII Person module);
in addition, the Person module's
[Vitalstatus](https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus)
observation carries the vital status per contact date, and the Oncology
module's
[Tod](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod)
observation documents death date, cause of death and its tumor relation —
use them to confirm the event and, for cause-specific analyses, to
distinguish tumor-related deaths. Patients without a death record are
censored at their last documented contact (most recently dated [Follow-Up
ClinicalImpression](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.html),
Response-Befund or therapy documentation).

**Progression-free survival (PFS)** — time from t₀ to the first documented
progression or death, whichever comes first. Progression is read from the
[Response-Befund](StructureDefinition-mii-pr-mtb-response-befund.html): a
RECIST/iRECIST assessment of *progressive disease* (`PD`) in
`valueCodeableConcept`, with `effectiveDateTime` as the event date and the
assessment method (RECIST, RANO, clinical) in the profile's method element.
Response findings are tied to their therapy via `partOf`, so PFS is computed
**per therapy line**, not per patient alone.

**Time to next treatment (TTNT)** — time from t₀ to the start of the *next*
systemic therapy line (`performedPeriod.start` of the following
SystemischeTherapie, or the first MedicationStatement of the next line);
patients without a subsequent line are censored at last contact. TTNT is the
robust real-world surrogate when imaging-based progression assessment is
incompletely documented — in this module's data it needs no imaging at all,
only the therapy sequence, and the reason a line ended is available in the
therapy's status reason (`mii-cs-mtb-therapiestatusgrund` /
`statusReason`) and, for non-implementation of a recommendation, in the
Follow-Up's `Grund Nicht-Umsetzung` coding.

Practical notes: therapy lines are ordered by `performedPeriod`; the
`Leitliniendokumentation` extension on prior therapies carries the line number
(`Therapielinie`) where documented. Cost-coverage delays (visible as the span
between [Antrag](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.html)
and [Antwort Kostenübernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.html))
can systematically shift t₀ and are themselves a researchable quantity.
