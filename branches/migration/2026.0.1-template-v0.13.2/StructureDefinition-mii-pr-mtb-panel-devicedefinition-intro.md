<!-- DERIVED:suggestion source=none gate=B -->
> **Written during migration - review before release.** New modeling proposal
> (2026-09-14): the panel product catalog as DeviceDefinition templates,
> generated from the module team's panel metadata inventory. Review before
> release.
{: .ig-highlight .ig-highlight-blue}

### Content

This profile carries the **sequencing-panel product catalog** at the
*definition* level: one DeviceDefinition template per panel product
(manufacturer, product name/version, analytical capabilities, and the panel's
gene list(s) as canonical references to HGNC ValueSets — separated by SNV and
fusion scope where the product distinguishes them).

A site's concrete device or kit instance points at its template via
`Device.definition` and attaches to the sequencing workflow through the
Genomics-Reporting extension `genomic-study-analysis-device`, as before.

The shipped catalog covers eleven products (Oncomine Focus/Focus Plus, Qiagen
DHS-3501Z, Agilent MH IVD 600+ and SureSelect Cancer CGP, DKTK/MASTER WGS,
generic WGS, FusionPlex Archer Lung V2, TCM NGS, Basic-NGS, TruSight
Oncology 500) with nine gene-list ValueSets (17–602 genes, coded as HGNC
symbols — mapping to stable HGNC IDs is an open TODO:REVIEW).
