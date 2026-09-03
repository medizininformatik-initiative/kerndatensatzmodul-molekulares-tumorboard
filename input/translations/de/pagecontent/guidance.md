<!-- markdownlint-disable MD041 -->
<!-- Übersichtsseite "Anleitung". Ersetzen Sie die [TODO]-Hinweise; die
     Unterseiten-Struktur folgt kerndatensatz-basis. -->

Dieser Abschnitt bündelt die fachlichen Hinweise zur Umsetzung und Nutzung des
Moduls **Molekulares Tumorboard**.

### Allgemeine Umsetzungshinweise

* **[Datensätze und Beschreibungen](logical-models.html)** — die Datenelemente
  des Moduls, beschrieben als logische Modelle. (Dieser Eintrag teilt sein Ziel
  mit *Artefakte → Logische Modelle*; keiner der Anker der Artefakt-Übersicht
  ist als Linkziel nutzbar — siehe
  [`docs/page-structure.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/blob/main/docs/page-structure.md) in diesem Repository.)
* **[UML-Diagramme](uml-diagrams.html)** — visuelle Darstellung der Datenmodelle
  und ihrer Beziehungen.
* **[Anwendungsszenarien](anwendungsszenarien.html)** — ausgearbeitete Szenarien
  für die Anwendung der Modul-Profile.
* **[DNPM-Transformation](dnpm-transformation.html)** — Mapping und
  Transformations-Pipeline zwischen DNPM-Datensatz und den MII-MTB-Profilen.

### Zielgruppenspezifische Hinweise

* **[Anleitung für Forschende](researcher-guidance.html)** — für Forschende, die
  Moduldaten nutzen.
* **[Anleitung für Implementierende](implementer-guidance.html)** — technische
  Hinweise für DIZ-Implementierende.

### Kontext im Gesamtprojekt / Bezüge zu anderen Modulen

<!-- Migriert aus dem Simplifier-IG (KontextimGesamtprojektBezgezuanderenModulen). TODO:REVIEW -->

Der Kerndatensatz der Medizininformatik-Initiative hat mittlerweile eine
Vielzahl von KDS-Modulen. Ein Zusammenspiel der Module an einzelnen Standorten
ist angedacht und gewünscht, kann aber aufgrund der lokal verschiedenen Systeme
und Ressourcen nicht vorausgesetzt werden. Außerdem ist zu beachten, dass sich
alle Module des MII KDS in einem stetigen Weiterentwicklungsprozess befinden.

Verpflichtend für die Nutzung sind:

- die MII-Basismodule, v. a. Prozedur, Medikation und Diagnose,
- das Onkologie-Modul,
- der Molekulargenetische Befundbericht.

#### Modul Onkologie

* Das Modul Onkologie modelliert in der ersten Version 2025 die klinischen
  Daten aus dem oBDS.
* Es umfasst damit die strukturierte Darstellung der „regulären"
  leitliniengerechten Therapien.
* In zukünftigen Versionen wird das Modul um weitere Datenpunkte auch jenseits
  des oBDS-Krebsregisterdatensatzes erweitert.
* Das MTB-Modul nutzt prinzipiell die gleichen Profile wie das Onkologie-Modul
  oder erweitert diese in eigenen abgeleiteten Profilen durch weitere
  Datenelemente.

#### Modul Molekulargenetischer Befundbericht

* Das MTB-Modul erbt von der aktuellen Version des Moduls „Molekulargenetischer
  Befundbericht".
* Das Modul Molekulargenetischer Befundbericht v2025.0.0 basiert auf Version
  STU2 des HL7 International
  [Genomics Reporting Implementation Guide](https://build.fhir.org/ig/HL7/genomics-reporting/general.html).
* Dieser wurde mittlerweile in die Version STU3 überarbeitet, u. a. zur
  besseren Darstellung von genübergreifenden molekularen Biomarkern.
* In der kommenden Version des Molekulargenetischen Befundberichts (v2026) ist
  ein Update auf diese Version STU3 geplant. Die vorliegende Spezifikation
  benutzt daher bereits eine Definition von Molekularen Biomarkern aus
  Genomics Reporting STU3, auch wenn die Varianten weiterhin auf
  MolGen/Genomics Reporting STU2 basieren.
* Langfristig wird sich die HL7-Spezifikation des Genomics Reporting
  Implementation Guide an den Spezifikationen der Global Alliance for Genomics
  and Health (GA4GH) orientieren, wobei insbesondere die Variation
  Representation Specification (VRS) zu nennen ist.

#### Modul Pathologie-Befund

* Das Pathologiemodul enthält Vorgaben zur **Strukturierung** eines
  Pathologieberichts — diese wurden mit Blick auf die
  [IHE-Vormodellierung](https://www.ihe.net/resources/technical_frameworks/#PaLM)
  APSR entwickelt.
* In der derzeitigen Version enthält das Pathologiemodul jedoch noch **keine
  genaueren Vorgaben** zur exakten Darstellung von z. B. Ergebnissen aus der
  Immunhistochemie (IHC) und In-situ-Hybridisierung (ISH).
* Diese sollen daher hier im MTB-Modul mit besonderem Fokus auf onkologisch
  relevante Beobachtungen getestet und ggfs. langfristig als allgemeingültige
  Profile ins Pathologie-Modul übergehen.

#### Modul Forschungsvorhaben

* Das Modul Forschungsvorhaben stellt Ressourcen insbesondere für die
  Beschreibung von Studien, Registern, Kohorten und Evidenzvariablen dar. Es
  wird nicht unmittelbar benötigt, aber da versuchte Studieneinschlüsse ein
  häufiger Anwendungsfall von MTB-Beschlüssen sind, wird von vornherein eine
  enge Zusammenarbeit angestrebt.

### Referenzen

<!-- Migriert aus dem Simplifier-IG (Referenzen). TODO:REVIEW -->

Das KDS-Modul *Molekulares Tumorboard* basiert maßgeblich auf dem Datenmodell
des *Deutschen Netzwerks für Personalisierte Medizin (DNPM)*, welches die
Anforderungen aus dem
[Modellvorhaben Genomsequenzierung (MV GenomSeq)](https://www.bfarm.de/DE/Das-BfArM/Aufgaben/Modellvorhaben-Genomsequenzierung/_node.html)
gemäß [§ 64e SGB V](https://www.sozialgesetzbuch-sgb.de/sgbv/64e.html)
einbezieht. Die Inhalte sind öffentlich verfügbar:

* Webseite des DNPM mit allen relevanten Datenfeldern, Beschreibungen und
  Antwortmöglichkeiten:
  * [DNPM Datenmodell v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)
  * [DNPM Datenmodell v2.0 *mit Anpassungen aus MV GenomSeq*](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/525336578/Datenmodell+V2.0+-+MVGenomSeq-Anpassungen)

Weiterhin wurde die aktuelle Version des
[HL7 Clinical Genomics Reporting Guide](https://build.fhir.org/ig/HL7/genomics-reporting/),
der schon als Vorlage für den Molekulargenetischen Befundbericht diente, jetzt
auch als Grundlage für die Darstellung von Molekularen Biomarkern und
molekularpathologischen Markern hinzugezogen.

---
Für die KDS-weiten Konformitätsanforderungen siehe die
[Konformitätsregeln des Meta-Moduls](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
für die technischen Artefakte siehe [Profile](profiles.html).
