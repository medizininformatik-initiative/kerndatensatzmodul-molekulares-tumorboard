# MII Kerndatensatz Modul Molekulares Tumorboard

### Übersicht

[![FHIR Project on GitHub.com](https://img.shields.io/badge/FHIR_project_on_GitHub.com-kerndatensatzmodul--molekulares--tumorboard-green)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard)

[![CI (FHIR Validation)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/actions/workflows/main.yml/badge.svg)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/actions/workflows/main.yml)

Das vorliegende Projekt beschreibt die FHIR-Spezifikation des KDS-Moduls 'Molekulares Tumorboard'. Die hier veröffentlichten FHIR-Profile und Implementation Guides dienen als zentrale und verbindliche Spezifikation für die syntaktische und semantische Kodierung der Modulinhalte.

### Beschreibung

Das Modul Molekulares Tumorboard basiert auf dem DNPM-Datensatz (Deutsches Netzwerk für Personalisierte Medizin) und ergänzt das KDS-Modul Onkologie. Es deckt die Dokumentation von:

- Behandlungsepisoden im Kontext des Molekularen Tumorboards
- Therapieempfehlungen und -entscheidungen
- Genomische Analysen und Befunde
- Follow-Up-Dokumentation

ab und berücksichtigt die Anforderungen des Modellvorhabens Genomsequenzierung (MV GenomSeq) gemäß § 64e SGB V.

### Links

- **Implementation Guide**: [Simplifier.net](https://simplifier.net/guide/mii-ig-molekulares-tumorboard-v2026-de)
- **FHIR Package**: [de.medizininformatikinitiative.kerndatensatz.mtb](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.mtb)
- **MII Kerndatensatz Übersicht**: [medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/de/der-kerndatensatz-der-medizininformatik-initiative)

### Abhängigkeiten

Dieses Modul baut auf folgenden MII-Modulen auf:
- [KDS-Modul Onkologie](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie)
- [KDS-Modul Molekulargenetischer Befundbericht](https://github.com/medizininformatik-initiative/kerndatensatzmodul-GenetischeTests)
- MII Basismodule (Person, Diagnose, Prozedur, Medikation)

### Kontakt

Fragen zur vorliegenden Publikation können jederzeit unter [chat.fhir.org](https://chat.fhir.org) im Stream 'german/mi-initiative' gestellt werden.

Anmerkungen und Kritik werden in Form von Issues im GitHub-Projekt gern entgegengenommen.

---

### Entwicklung

Für lokale Entwicklung und Profiling kann das Dev Containers Feature von Visual Studio Code verwendet werden.

Voraussetzungen:
- Docker Desktop
- Visual Studio Code mit Dev Containers Extension (`ms-vscode-remote.remote-containers`)

### Lizenz

Copyright © 2024+: TMF e. V., Charlottenstraße 42, 10117 Berlin

Der Inhalt dieser Spezifikation ist öffentlich. Die Nachnutzungs- bzw. Veröffentlichungsansprüche sind nicht beschränkt.
