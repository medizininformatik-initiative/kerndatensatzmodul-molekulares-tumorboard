<!-- markdownlint-disable MD041 -->
<!-- English rendering of input/pagecontent/security-and-privacy.md.
     Structured in the TF-KDS-agreed THREE stages: (1) the overarching data
     protection concept, (2) DIMP in the data portal, (3) the
     module-specific aspects. Stages 1 and 2 are static overarching content —
     keep them; stage 3 is where your module writes. Stage 3 was decided during the template migration
     (M11): a module-specific proposal is in place, marked DERIVED for Gate-B
     review; the template's illustrative example box was removed.
     German mirror: input/translations/de/pagecontent/security-and-privacy.md —
     both files must say the same thing. -->


This section addresses security and privacy experts. General requirements are in
the FHIR core specification —
[Security & Privacy Module](https://build.fhir.org/secpriv-module.html) and the
[security checklist](https://build.fhir.org/security.html). This page does not
repeat them; it links the overarching data protection framework and states what is
**specific to this module**.

#### 1. The overarching data protection concept

The
[overarching data protection concept of the Medical Informatics Initiative](https://www.medizininformatik-initiative.de/en/data-protection-concept)
governs how patient data may be processed for research across the network of
Data Integration Centers: it
covers the legal basis (the MII Broad Consent), the roles of the Data
Integration Centers and Use & Access Committees, and the cross-site application
scenarios (feasibility queries, distributed analyses, data and biosample
provision). Everything this module specifies operates inside that framework —
this guide adds no processing purpose of its own.

#### 2. De-identification, minimisation and pseudonymisation (DIMP)

How data leaving a Data Integration Center is de-identified in practice is
specified by
[DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html)
in the data portal documentation: direct identifiers are removed,
data elements not needed by the approved project are dropped, and identifying
values are replaced by project-specific pseudonyms (FHIR Pseudonymizer
configuration). The profiles of this module describe data *before* DIMP is
applied; which elements survive a concrete data release is decided per project
by the DIMP configuration, not by this guide.

#### 3. Module-specific aspects

This is the module's own contribution: the security and privacy properties
that follow from the *kind of data this module carries*. **Its content is
optional** — not every module has aspects of its own. If yours does not, the
whole section body becomes the following default text (delete the example and
TODO boxes below and adopt it verbatim):

> Beyond the overarching framework above — the overarching data protection
> concept, the Broad Consent it rests on, and DIMP — this module carries no
> data category that raises security or privacy aspects of its own, and it
> places no module-specific security or privacy requirements on implementers.


<!-- DERIVED:suggestion source=none gate=B -->
> **Written during migration - review before release.** The source guide ships
> no security-and-privacy section; the following module-specific aspects are
> PROPOSED from the module's data categories and require review by the module
> team (Gate B):
> this module carries **genomic data** (somatic and potentially germline
> variants from NGS panel/exome/genome sequencing) documented under the
> Modellvorhaben Genomsequenzierung (§ 64e SGB V). Genomic raw and variant
> data have a high intrinsic re-identification potential that profile-level
> pseudonymisation does not remove, and germline findings can carry
> information about biological relatives. Implementers SHOULD treat the
> variant-level resources (Einfache Variante, Copy Number Variant, DNA/RNA
> fusion, molecular biomarkers) as especially sensitive in DIMP
> configurations, and SHOULD take the DNPM/MV-GenomSeq governance rules into
> account when data leaves the site.
{: .ig-highlight .ig-highlight-blue}
