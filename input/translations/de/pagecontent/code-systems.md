<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung von input/pagecontent/code-systems.md (aufgeteilt aus
     der früheren Seite terminology.md gemäß der TF-KDS-abgestimmten Menüstruktur).
     Der IG-Publisher listet die CodeSystems auf den Artefakt-Seiten
     automatisch; hier stehen die MII-Hinweise dazu. -->


### CodeSystems

Diese Seite beschreibt die CodeSystems des Moduls **Molekulares Tumorboard**
(Namenskonvention `MII_CS_<Modul>_<Name>`). Die darauf aufbauenden ValueSets
beschreibt die Seite [ValueSets](value-sets.html).

{:.bg-info}
**Wichtig:** CodeSystem-Ressourcen externer Terminologien (z. B. ICD-10-GM, OPS,
SNOMED CT) werden in diesem Modul **nicht** publiziert, sondern über den
zentralen KDS-Terminologieserver (SU-TermServ) bezogen:
[https://mii-termserv.de/](https://mii-termserv.de/).

<!-- Migriert aus dem Simplifier-IG (TechnischeImplementierung/Terminologien). TODO:REVIEW -->

Die vollständige Liste der definierten CodeSystems, ValueSets und ConceptMaps
erzeugt der IG Publisher automatisch auf der
[Artefakt-Übersicht](artifacts.html). Nachfolgend die fachlichen Hinweise zu den
modul-eigenen Terminologien (Beschreibung eigener ValueSets, Verwendung
internationaler Terminologien, Quellen).

### Definierte CodeSystems

Beschreibung von eigenen ValueSets, Verwendung internationaler Terminologien, Lizenzen...


#### Behandlungsepisode: Diagnose: Status der Leitlinienbehandlung

Wird verwendet in der Behandlungsepisode.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Behandlungsepisode: Vortherapie: Zulassungsstatus

Wird in der Leitliniendokumentation verwendet.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Behandlungsepisode: Probe: Bestimmungsmethode Tumorzellgehalt

Wird im Tumorzellgehalt verwendet.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Behandlungsepisode: Therapieplan: Human-genetische Beratung: Begründung des Auftrags

Wird in der Human-genetischen Beratung verwendet.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Behandlungsepisode: Therapieempfehlung: Evidenzgrad

Wird verwendet in der Therapieempfehlung Evidenzgraduierung.
Quelle: [10.1002/ijc.32358](https://doi.org/10.1002/ijc.32358)

#### Behandlungsepisode: Therapieempfehlung: Evidenzgrad-Zusatzverweis

Wird verwendet in der Evidenzgraduierung einer Therapieempfehlung.
Quelle: [10.1002/ijc.32358](https://doi.org/10.1002/ijc.32358)

#### Behandlungsepisode: Therapieempfehlung: Begründung des Status (Fehlen einer Therapieempfehlung)

Wird verwendet im Therapieplan.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Follow-Up: Status

Wird in der Follow-Up ClinicalImpression verwendet.

#### Follow-Up: Dosisdichte

Wird verwendet in Follow-Up Systemische Therapie (Medication Statement)
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Follow-Up: Response Befund Beurteilung

Wird im Befund Response verwendet.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Follow-Up: Response Befund Beurteilungsmethode

Wird im Befund Response verwendet.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Follow-Up: Systemische Therapie Status Grund

Wird für die systemische Therapie (sowohl Vortherapie als auch Follow-Up verwendet).
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Follow-Up: Antrag Kostenübernahme Antragsstadium

Wird verwendet im Antrag Kostenübernahme.

#### Follow-Up: Antwort Kostenübernahme Entscheidung

Wird verwendet in der Antwort Kostenübernahme.

#### Follow-Up: Antwort Kostenübernahme Ablehnungsgrund

Wird verwendet in der Antwort Kostenübernahme.

#### NGS-Bericht: Gerätetyp

Wird in der Genomics Study Analysis verwendet.

#### NGS-Bericht: Methodik

Wird verwendet in der Genomic Study Analysis.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### NGS-Bericht: MSI-Bestimmung: Methodik

Wird für die Mikrosatelliteninstabilität verwendet.

Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### NGS-Bericht: Molekulare Biomarker

Wird verwendet im Molekularer Biomarker-Profil.

### Definierte ValueSets

#### Diagnose: Tumorausbreitung

Wird für die Tumorausbreitung verwendet.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

#### Diagnose: WHO Grad Tumor ZNS

Wird für den WHO Grad ZNS verwendet. Enthält alle Kindkonzepte des SNOMED CT-Codes

**396921005** *World Health Organization grade finding for central nervous system tumor (finding)*

siehe https://browser.ihtsdotools.org/?perspective=full&conceptId1=396921005&edition=MAIN/2025-07-01&release=&languages=en

#### NGS-Bericht: Methodik

Wird verwendet in der Genomic Study Analysis. Enthält alle Codes aus dem hier definierten "NGS-Bericht: Methodik" CodeSystem und alle Codes aus `http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs`

#### NGS-Bericht: Mikrosatelliteninstabilität

Wird für die Mikrosatelliteninstabilität verwendet.

#### Follow-Up: Syystemtherapie Status

Eingeschränkte Version des Systemtherapie Status CodeSystems. Wird für die Systemtherapie verwendet.

#### Follow-Up: Kostenübernahme Typ

Wird für den Antrag und die Antwort zur Kostenübernahme verwendet.

#### Follow-Up: Grund Nicht-Umsetzung

Wird für die Follow-Up ClinicalImpression verwendet.

#### Molekular-Pathologie-Befund: MMR Expression

Wird für die Immunohistochemie MMR MSI verwendet.

#### Molekular-Pathologie-Befund: MMR Proficiency

Wird für die Immunohistochemie MMR MSI verwendet.

#### Systemische Vortherapie: Therapiestatusgrund nach oBDS

Quelle: [DNPM v2.1 inkl. MVGenomSeq](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/698777783/Datenmodell+V2.1+-+inkl.+MVGenomSeq-Anpassungen+Stand+06.05.2025)

#### Systemische Vortherapie: Therapiestatusgrund nach SNOMED CT

Quelle: [DNPM v2.1 inkl. MVGenomSeq](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/698777783/Datenmodell+V2.1+-+inkl.+MVGenomSeq-Anpassungen+Stand+06.05.2025)
