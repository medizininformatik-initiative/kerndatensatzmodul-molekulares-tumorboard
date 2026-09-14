<!-- markdownlint-disable MD041 -->
<!-- DERIVED:suggestion source=none gate=B -->
> **Written during migration - review before release.** Neue Seite
> (2026-09-14) zum Panel-Produktkatalog rund um
> `MII_PR_MTB_Panel_DeviceDefinition`; enthält einen Aufruf zu
> Community-Feedback.
{: .ig-highlight .ig-highlight-blue}

### Der Sequenzier-Panel-Produktkatalog

Befunde aus dem Molekularen Tumorboard lassen sich nur korrekt interpretieren,
wenn bekannt ist, **was überhaupt untersucht wurde**: eine *nicht berichtete*
Variante bedeutet etwas völlig anderes, je nachdem, ob das Gen überhaupt auf
dem Panel lag. Dieses Modul liefert deshalb einen maschinenlesbaren **Katalog
von Sequenzier-Panel-Produkten** auf Definitionsebene:

- **Je Panel-Produkt ein
  [DeviceDefinition](StructureDefinition-mii-pr-mtb-panel-devicedefinition.html)-Template**
  — Hersteller, Produktname und Version, Link zur Herstellerdokumentation und
  die **analytischen Fähigkeiten** des Produkts (SNV-, Fusions-, Deletions-,
  Amplifikations-, Überexpressions- und Signatur-Detektion, kodiert mit
  [MII_CS_MTB_Panel_Capability](CodeSystem-mii-cs-mtb-panel-capability.html)).
- **Die Genliste(n) des Panels als expandierbare ValueSets** von HGNC-Genen,
  referenziert über die
  [Panel-Gene-List-Extension](StructureDefinition-mii-ex-mtb-panel-gene-list.html)
  — nach SNV- und Fusions-Scope getrennt, wo das Produkt sie unterscheidet
  (z. B. TruSight Oncology 500).

Der mitgelieferte Katalog umfasst elf Produkte — Oncomine Focus und Focus
Plus, Qiagen DHS-3501Z, Agilent MH IVD 600+ und SureSelect Cancer CGP,
DKTK/MASTER-Ganzgenomsequenzierung, generisches WGS, FusionPlex Archer Lung
V2, TCM NGS, Basic-NGS und TruSight Oncology 500 — mit neun
Genlisten-ValueSets zwischen 17 und 602 Genen. Alle Templates stehen auf der
[Artefakt-Übersicht](artifacts.html).

#### Verwendung

Die konkrete Sequencer-, Kit- oder Panel-Instanz einer Einrichtung verweist
via `Device.definition` auf ihr Katalog-Template und hängt wie bisher über die
Genomics-Reporting-Extension `genomic-study-analysis-device` am
Sequenzier-Workflow. Datennutzende können das Genlisten-ValueSet eines Panels
expandieren, um die Frage „war dieses Gen abgedeckt?" zu beantworten — etwa
bei der Interpretation eines fehlenden Variantenbefunds oder beim Poolen von
Kohorten, die auf unterschiedlichen Panels sequenziert wurden.

#### Interesse? Feedback erwünscht

Dieser Katalog ist ein **Vorschlag**. Bevor wir in Vollständigkeit investieren
— Versionierung der Hersteller-Genlisten je Release, weitere Produkte,
zentrale Pflege über dieses Modul hinaus — möchten
wir wissen, ob Standorte und Forschungsprojekte Panel-Metadaten **in dieser
oder ähnlicher Form** tatsächlich nutzen würden. Wenn ja (oder wenn ihr eine
andere Form braucht, z. B. `PlanDefinition`-basierte Auftragskataloge oder
schlichte CSV-Downloads), meldet euch:

- als Issue im
  [Modul-Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues), oder
- im Zulip: [chat.fhir.org](https://chat.fhir.org), Stream
  `german/mi-initiative`, oder [mii.zulipchat.com](https://mii.zulipchat.com/),
  Stream `MII-Kerndatensatz`.
