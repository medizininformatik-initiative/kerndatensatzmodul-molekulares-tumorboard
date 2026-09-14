<!-- DERIVED:suggestion source=none gate=B -->
> **Written during migration - review before release.** Neuer
> Modellierungsvorschlag (2026-09-14): der Panel-Produktkatalog als
> DeviceDefinition-Templates, generiert aus dem Panel-Metadaten-Inventar des
> Modulteams. Vor Release prüfen.
{: .ig-highlight .ig-highlight-blue}

### Inhalt

Dieses Profil trägt den **Sequenzier-Panel-Produktkatalog** auf
*Definitionsebene*: je Panel-Produkt ein DeviceDefinition-Template
(Hersteller, Produktname/Version, analytische Fähigkeiten und die
Genliste(n) des Panels als kanonische Referenzen auf HGNC-ValueSets — nach
SNV- und Fusions-Scope getrennt, wo das Produkt sie unterscheidet).

Die konkrete Geräte-/Kit-Instanz einer Einrichtung verweist via
`Device.definition` auf ihr Template und hängt wie bisher über die
Genomics-Reporting-Extension `genomic-study-analysis-device` am
Sequenzier-Workflow.

Der mitgelieferte Katalog umfasst elf Produkte (Oncomine Focus/Focus Plus,
Qiagen DHS-3501Z, Agilent MH IVD 600+ und SureSelect Cancer CGP, DKTK/MASTER
WGS, generisches WGS, FusionPlex Archer Lung V2, TCM NGS, Basic-NGS, TruSight
Oncology 500) mit neun Genlisten-ValueSets (17–602 Gene, kodiert als
HGNC-Symbole — das Mapping auf stabile HGNC-IDs ist ein offenes TODO:REVIEW).
