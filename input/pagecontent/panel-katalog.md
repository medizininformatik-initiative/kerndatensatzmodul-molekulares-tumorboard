<!-- markdownlint-disable MD041 -->
<!-- DERIVED:suggestion source=none gate=B -->
> **Written during migration - review before release.** New page (2026-09-14)
> describing the panel product catalog introduced with
> `MII_PR_MTB_Panel_DeviceDefinition`; includes a call for community feedback.
{: .ig-highlight .ig-highlight-blue}

### The sequencing-panel product catalog

Molecular tumor board findings can only be interpreted correctly when it is
known **what was actually looked at**: a variant that was *not reported* means
something entirely different depending on whether the gene was on the panel at
all. This module therefore ships a machine-readable **catalog of sequencing
panel products** at the definition level:

- **One [DeviceDefinition](StructureDefinition-mii-pr-mtb-panel-devicedefinition.html)
  template per panel product** — manufacturer, product name and version, a link
  to the vendor documentation, and the product's **analytical capabilities**
  (SNV, fusion, deletion, amplification, overexpression and signature
  detection, coded with
  [MII_CS_MTB_Panel_Capability](CodeSystem-mii-cs-mtb-panel-capability.html)).
- **The panel's gene list(s) as expandable ValueSets** of HGNC genes,
  referenced from the template via the
  [Panel Gene List extension](StructureDefinition-mii-ex-mtb-panel-gene-list.html)
  — separated into SNV and fusion scope where the product distinguishes them
  (e.g. TruSight Oncology 500).

The shipped catalog covers eleven products — Oncomine Focus and Focus Plus,
Qiagen DHS-3501Z, Agilent MH IVD 600+ and SureSelect Cancer CGP, DKTK/MASTER
whole-genome sequencing, generic WGS, FusionPlex Archer Lung V2, TCM NGS,
Basic-NGS and TruSight Oncology 500 — with nine gene-list ValueSets between
17 and 602 genes. All templates are listed on the
[artifacts summary](artifacts.html).

#### How to use it

A site's concrete sequencer, kit or panel instance points at its catalog
template via `Device.definition` and attaches to the sequencing workflow
through the Genomics-Reporting extension `genomic-study-analysis-device`, as
before. Data consumers can expand a panel's gene-list ValueSet to answer the
"was this gene covered?" question — for example when interpreting an absent
variant call, or when pooling cohorts sequenced on different panels.

#### Interested? Feedback wanted

This catalog is a **proposal**. Before investing in completeness — stable
HGNC-ID coding, per-release versioning of vendor gene lists, additional
products, central maintenance beyond this module — we would like to know
whether sites and research projects would actually use panel metadata **in
this or a similar form**. If you would (or if you need a different shape,
e.g. `PlanDefinition`-based order catalogs or plain CSV downloads), please
tell us:

- as an issue in the
  [module repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues), or
- on Zulip: [chat.fhir.org](https://chat.fhir.org) stream
  `german/mi-initiative`, or [mii.zulipchat.com](https://mii.zulipchat.com/)
  stream `MII-Kerndatensatz`.
