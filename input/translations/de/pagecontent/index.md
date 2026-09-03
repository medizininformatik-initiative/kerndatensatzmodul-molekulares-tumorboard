<!-- markdownlint-disable MD041 -->
<!-- Migriert aus dem Simplifier-IG (MIIIGModulMTB/Index + BeschreibungModulModul). TODO:REVIEW -->

### Einleitung

Diese Spezifikation beschreibt die FHIR-Repräsentation des
Kerndatensatz-(KDS-)Moduls **Molekulares Tumorboard** der Medizininformatik-Initiative
(MII). Sie beschreibt die Anwendungsfälle des Moduls sowie die zugehörigen
FHIR-Profile, Extensions und Terminologie-Ressourcen in ihrer verbindlichen
Form. Der MII-Kerndatensatz dient der standardisierten Nutzung klinischer
Routinedaten für die medizinische Forschung.

Das Modul Molekulares Tumorboard basiert auf dem DNPM Datensatz und ergänzt das MII KDS-Modul Onkologie. Zusätzliche und ausgesparte Datenelemente kamen durch die Besprechung des Datensatzes mit Experten und Expertinnen aus Medizin und Bioninformatik zustande. Außerdem wurden die Erkenntnisse aus anderen Forschungsnetzwerken (z.B. nNGM) integriert.

#### Beschreibung des Moduls

Hauptelemente des KDS-Moduls sind die "Behandungsepisode" des Patienten unter Einbezug des Molekularen Tumorboards & das "Follow-Up".

In der Behandlungsepisode sind sowohl spezifisch für das MTB relevante Informationen über Diagnosen, Vortherapien, Proben als auch bioinformatische Daten des NGS-Bericht & des Molekular-Pathologie-Befunds enthalten, welche ausschlaggebend für den MTB-Beschluss (Therapieempfehlungen etc.) sind.
Ebenfalls Teil der Behandlungsepisode sind die Einwilligung des Patienten zum MTB, der ECOG Status und die familiäre Krankengeschichte.
Das Follow-Up umfasst die Dokumentation der im Anschluss tatsächlich umgesetzten Therapien und deren Kostenübernahme.

Ausführliche Begründung der Modellierung und Intention der Profile finden sich auf den einzelnen Modulseiten.

Das Modul Molekulares Tumorboard ist explizit

- ergänzend zum Onkologie
- basierend auf DNPM
- unter Einbezug der Erkenntnisse aus anderen Forschungsnetzwerken (nNGM)

| Veröffentlichung |               |
|------------------|---------------|
| Datum            | 2026-03-30 |
| Version          | 2026.0.1 (CalVer `JJJJ.n.n`) |
| Status           | active        |
| Realm            | DE            |

### Zielgruppe

Dieser Implementierungsleitfaden richtet sich an:

<div class="ig-highlight ig-highlight-blue">
<h5>Implementierende</h5>
<p>Datenintegrationszentren (DIZ), Software-Entwickelnde und System-Architekt:innen, die FHIR-basierte Lösungen umsetzen.<br/>
→ siehe <a href="profiles.html">Profile</a> und <a href="logical-models.html">Logische Modelle</a>.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Forschende</h5>
<p>Wissenschaftler:innen, die KDS-Daten für die medizinische Forschung nutzen.<br/>
→ siehe <a href="researcher-guidance.html">Anleitung für Forschende</a>.</p>
</div>

### Inhalt dieses Leitfadens

- **[Anleitung](guidance.html)** — Einstieg und fachliche Hinweise.
- **Konformität** — die KDS-weiten Konformitätsregeln (Anforderungssprache,
  Must-Support, Umgang mit fehlenden Daten) pflegt zentral das
  [Meta-Modul](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
  die modul-spezifischen Aspekte zu
  [Sicherheit und Datenschutz](security-and-privacy.html) sind Teil dieses
  Leitfadens.
- **[Profile](profiles.html)** und die weiteren
  **[Artefakt-Seiten](artifacts.html)** — die technischen Artefakte.
- **[Beispiele](examples.html)** — Beispielinstanzen.
- **[Abhängigkeiten](ImplementationGuide-mii-kerndatensatzmodul-molekulares-tumorboard.html)** — die
  ImplementationGuide-Ressource mit Abhängigkeitstabelle, versionsübergreifender
  Analyse und Urheberrechtshinweisen.

### Verwandte Leitfäden

Dieses Modul ist Teil des MII-Kerndatensatzes; die weiteren KDS-Module und ihre
Abhängigkeiten sind unter
[medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/)
beschrieben.

Dieses Modul baut auf den MII-KDS-Modulen
[Onkologie](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie),
[Molekulargenetischer Befundbericht (MolGen)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-GenetischeTests),
Pathologie-Befund, Studie, Medikation, Biobank, Consent sowie den MII-Basismodulen
(Person, Diagnose, Prozedur) auf, außerdem auf dem HL7
[Genomics Reporting IG](https://hl7.org/fhir/uv/genomics-reporting/); die
genauen Versions-Pins listet die
[ImplementationGuide-Ressource](ImplementationGuide-mii-kerndatensatzmodul-molekulares-tumorboard.html).

Weitere FHIR-Implementierungsleitfäden finden Sie im offiziellen
**[FHIR IG Registry](https://fhir.org/guides/registry/)** (Quelle:
[`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)).

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik-Initiative erstellt worden
und unterliegt per Governance-Prozess dem Abstimmungsverfahren des
Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

### Ansprechpartner

Fragen zu dieser Publikation können im HL7-FHIR-Zulip
[chat.fhir.org](https://chat.fhir.org) im Stream `german/mi-initiative` oder im
MII-Zulip [mii.zulipchat.com](https://mii.zulipchat.com/) im Stream
`MII-Kerndatensatz` gestellt werden.
Anmerkungen und Kritik werden als *Issues* auf
[GitHub](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues) entgegengenommen.

Fachliche Ansprechpartner:

- Thomas Debertshäuser, Berlin Institute of Health (Charité)
- Martin Boeker (TUM, DIFUTURE)
- Karoline Buckow, TMF e. V.
- Franziska Klepka, TMF e. V.

### Autor:innen (in alphabetischer Reihenfolge)

- Alexander Schulz (UK Erlangen)
- Frederik Voigt (UK Freiburg)
- Jonas Gassenschmidt (UK Freiburg)
- Linda Gräßel (UK Freiburg)
- Marcel Susky (TU Dresden)
- Markus Budeus (TU München)
- Thomas Debertshäuser (Berlin Institute of Health, Charité)

### Urheberrecht und Lizenz

© 2024+ TMF e. V., Charlottenstraße 42, 10117 Berlin

Der Inhalt dieser Spezifikation ist öffentlich
([CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/deed.de));
die Nachnutzungs- bzw. Veröffentlichungsansprüche sind nicht beschränkt.

Für die Nutzungsrechte der zugrunde liegenden FHIR-Technologie siehe die
FHIR-Basisspezifikation.

Einige der verwendeten Codesysteme werden von anderen Organisationen
veröffentlicht und gepflegt; es gilt das Urheberrecht der jeweiligen Herausgeber.

### Haftungsausschluss

Der Inhalt dieses Dokuments ist öffentlich. Bitte beachten Sie, dass Teile
dieses Dokuments auf FHIR Version R4 basieren, dessen Urheberrecht bei
HL7 International liegt.

Obwohl diese Publikation mit größter Sorgfalt erstellt wurde, können die
Autor:innen keine Haftung für direkte oder indirekte Schäden übernehmen, die
aus dem Inhalt dieser Spezifikation entstehen könnten.
