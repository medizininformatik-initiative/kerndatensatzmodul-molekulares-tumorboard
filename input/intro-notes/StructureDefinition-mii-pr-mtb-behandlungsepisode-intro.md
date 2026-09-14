<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Behandlungsepisode-ClinicalImpression.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the current Behandlungsepisode (treatment episode) including the current health status, prior therapies, molecular pathology report and NGS-Bericht (NGS report).

It serves as a bracket intended to complement the case concept, since the MTB can cover, in addition to the classic in-house patients, each of the following patient journeys:

* The patient is cared for from beginning to end at the same university hospital, both in accordance with guidelines (oncology) and at the Molekulares Tumorboard (molecular tumor board) (diagnosis, therapy and follow-up)
* The patient is treated externally in accordance with guidelines, and once those options are exhausted, the remainder of the therapy takes place at the university hospital
* The patient never presents in person at the university hospital; instead, the case is only discussed at the MTB
* Arbitrary combinations of prior therapies and subsequent therapies.

### Profiling decisions / ballot comment

As an alternative, the use of the `EpisodeOfCare` resource was considered. However, this is to be regarded rather as an administrative treatment period.

Therefore, using the `ClinicalImpression` resource seemed more sensible to us, even though the `ClinicalImpression` here captures a time **period** and not a **point** in time. It thus contains references to the state of the patient at the time of inclusion as well as references to the diagnostics and treatments performed and to interdisciplinary conferences for further treatment planning.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

3. The search parameter "period-end" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?period-end=eq2025-01-01```

    Usage notes: Further information on searching by "period-end" can be found in the [FHIR base specification - section "Date Search"](https://hl7.org/fhir/R4/search.html#date).

4. The search parameter "problem" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?problem=Condition/example```

    Usage notes: Further information on searching by "problem" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "investigation" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?investigation=DiagnosticReport/example```

    Usage notes: Further information on searching by "investigation" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

6. The search parameter "supporting-info" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?supporting-info=DiagnosticReport/example```

    Usage notes: Further information on searching by "supporting-info" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

<span style="color:red;font-weight:bold">TODO: SP guideline treatment status extension</span>

**Examples**

Example: MTB case decision for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.html))

---
