---
parent: 
---

## {{page-title}}

Beschreibung von eigenen ValueSets, Verwendung internationaler Terminologien, Lizenzen...

- [Definierte CodeSystems](#definierte-codesystems)
- [Definierte ValueSets](#definierte-valuesets)
- [Definierte ConceptMaps](#definierte-conceptmaps)

{{index:current}}
---

### Definierte CodeSystems

#### Behandlungsepisode: Diagnose: Status der Leitlinienbehandlung

Wird verwendet in der Behandlungsepisode.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-leitlinienbehandlung-status') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Behandlungsepisode: Vortherapie: Zulassungsstatus

Wird in der Leitliniendokumentation verwendet.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-zulassungsstatus') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Behandlungsepisode: Probe: Bestimmungsmethode Tumorzellgehalt

Wird im Tumorzellgehalt verwendet.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-bestimmungsmethode-tumorzellgehalt')
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---


#### Behandlungsepisode: Therapieplan: Human-genetische Beratung: Begründung des Auftrags

Wird in der Human-genetischen Beratung verwendet.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-auftrag-begruendung')
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Behandlungsepisode: Therapieempfehlung: Evidenzgrad

Wird verwendet in der Therapieempfehlung Evidenzgraduierung.
Quelle: [10.1002/ijc.32358](https://doi.org/10.1002/ijc.32358)

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Behandlungsepisode: Therapieempfehlung: Evidenzgrad-Zusatzverweis

Wird verwendet in der Evidenzgraduierung einer Therapieempfehlung.
Quelle: [10.1002/ijc.32358](https://doi.org/10.1002/ijc.32358)

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Behandlungsepisode: Therapieempfehlung: Begründung des Status (Fehlen einer Therapieempfehlung)

Wird verwendet im Therapieplan.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-empfehlung-status-begruendung') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Follow-Up: Status

Wird in der Follow-Up ClinicalImpression verwendet.

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-follow-up-status') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Follow-Up: Dosisdichte

Wird verwendet in Follow-Up Systemische Therapie (Medication Statement)
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-dosisdichte') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Follow-Up: Response Befund Beurteilung

Wird im Befund Response verwendet.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-response-befund-beurteilung') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Follow-Up: Response Befund Beurteilungsmethode

Wird im Befund Response verwendet.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-response-befund-beurteilungsmethode') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---


#### Follow-Up: Systemische Therapie Status Grund

Wird für die systemische Therapie (sowohl Vortherapie als auch Follow-Up verwendet).
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-therapiestatusgrund') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Follow-Up: Antrag Kostenübernahme Antragsstadium

Wird verwendet im Antrag Kostenübernahme.

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-antrag-kostenuebernahme-antragsstadium') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Follow-Up: Antwort Kostenübernahme Entscheidung

Wird verwendet in der Antwort Kostenübernahme.

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-entscheidung') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Follow-Up: Antwort Kostenübernahme Ablehnungsgrund

Wird verwendet in der Antwort Kostenübernahme.

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### NGS-Bericht: Gerätetyp

Wird in der Genomics Study Analysis verwendet.

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-genomicanalysis-devicefunction') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### NGS-Bericht: Methodik

Wird verwendet in der Genomic Study Analysis.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-genomic-analysis-method-type')
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### NGS-Bericht: MSI-Bestimmung: Methodik

Wird für die Mikrosatelliteninstabilität verwendet.

Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-msi-method-type')
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### NGS-Bericht: Molekulare Biomarker

Wird verwendet im Molekularer Biomarker-Profil.

<fql output="table">
from 
    CodeSystem 
where 
    url.endsWith('CodeSystem/mii-cs-mtb-molekulare-biomarker') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>


---
---

### Definierte ValueSets

#### Diagnose: Tumorausbreitung

Wird für die Tumorausbreitung verwendet.
Quelle: [DNPM v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)

<fql output="table">
from 
    ValueSet 
where 
    url.endsWith('ValueSet/mii-vs-mtb-tumorausbreitung')
for 
    compose.include.concept
select
    'Code (SNOMED CT)': '<a href="https://lookup.snomedtools.org/' + code + '">' + code + '</a>',
    Display: display,
    Definition: definition
</fql>

---


#### Diagnose: WHO Grad Tumor ZNS

Wird für den WHO Grad ZNS verwendet. Enthält alle Kindkonzepte des SNOMED CT-Codes

**396921005** *World Health Organization grade finding for central nervous system tumor (finding)*

siehe https://browser.ihtsdotools.org/?perspective=full&conceptId1=396921005&edition=MAIN/2025-07-01&release=&languages=en


---

#### NGS-Bericht: Methodik

Wird verwendet in der Genomic Study Analysis. Enthält alle Codes aus dem hier definierten "NGS-Bericht: Methodik" CodeSystem und alle Codes aus `http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs`

---

#### NGS-Bericht: Mikrosatelliteninstabilität

Wird für die Mikrosatelliteninstabilität verwendet.

<fql output="table">
from 
    ValueSet 
where 
    url.endsWith('ValueSet/mii-vs-mtb-msi')
for 
    compose.include.concept
select
    'Code (LOINC)': '<a href="https://loinc.org/' + code + '">' + code + '</a>',
    Display: display,
    Definition: definition
</fql>

---

#### Follow-Up: Syystemtherapie Status

Eingeschränkte Version des Systemtherapie Status CodeSystems. Wird für die Systemtherapie verwendet.

<fql output="table">
from 
    ValueSet 
where 
    url.endsWith('ValueSet/mii-vs-mtb-systemische-therapie-status')
for 
    compose.include.concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Follow-Up: Kostenübernahme Typ

Wird für den Antrag und die Antwort zur Kostenübernahme verwendet.

<fql output="table">
from 
    ValueSet 
where 
    url.endsWith('ValueSet/mii-vs-mtb-antrag-kostenuebernahme')
for 
    compose.include.concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Follow-Up: Grund Nicht-Umsetzung

Wird für die Follow-Up ClinicalImpression verwendet.

<fql output="table">
from 
    ValueSet 
where 
    url.endsWith('ValueSet/mii-vs-mtb-follow-up-grund-nicht-umsetzung')
for 
    compose.include.concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>

---

#### Molekular-Pathologie-Befund: MMR Expression

Wird für die Immunohistochemie MMR MSI verwendet.

<fql output="table">
from 
    ValueSet 
where 
    url.endsWith('ValueSet/mii-vs-mtb-mmr-expression')
for 
    compose.include.concept
select
    'Code (LOINC)': '<a href="https://loinc.org/' + code + '">' + code + '</a>',
    Display: display,
    Definition: definition
</fql>

---


#### Molekular-Pathologie-Befund: MMR Proficiency

Wird für die Immunohistochemie MMR MSI verwendet.

<fql output="table">
from 
    ValueSet 
where 
    url.endsWith('ValueSet/mii-vs-mtb-mmr-proficiency')
for 
    compose.include.concept
select
    'Code (NCIT)': code,
    Display: display,
    Definition: definition
</fql>

---

### Definierte ConceptMaps

#### Systemische Vortherapie: Therapiestatusgrund nach oBDS

Quelle: [DNPM v2.1 inkl. MVGenomSeq](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/698777783/Datenmodell+V2.1+-+inkl.+MVGenomSeq-Anpassungen+Stand+06.05.2025)

<fql output="table">
from 
    ConceptMap 
where 
    url.endsWith('ConceptMap/mii-cm-mtb-therapiestatusgrund-obds')
for 
    group.element
select
    Code: code,
    Display: display,
    'Equivalence (oBDS)': target.equivalence,
    'Code (oBDS)': '<a href="https://www.basisdatensatz.de/feld/214/systemische-therapie-ende-grund">' + target.code + '</a>',
    'Display (oBDS)': target.display
</fql>

---

#### Systemische Vortherapie: Therapiestatusgrund nach SNOMED CT

Quelle: [DNPM v2.1 inkl. MVGenomSeq](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/698777783/Datenmodell+V2.1+-+inkl.+MVGenomSeq-Anpassungen+Stand+06.05.2025)

<fql output="table">
from 
    ConceptMap 
where 
    url.endsWith('ConceptMap/mii-cm-mtb-therapiestatusgrund-sct')
for 
    group.element
select
    Code: code,
    Display: display,
    'Equivalence (SNOMED CT)': target.equivalence,
    'Code (SNOMED CT)': '<a href="https://lookup.snomedtools.org/' + target.code + '">' + target.code + '</a>',
    'Display (SNOMED CT)': target.display
</fql>