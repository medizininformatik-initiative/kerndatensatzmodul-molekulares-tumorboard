# MII CS Human-genetische Beratung Auftrag Begründung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Human-genetische Beratung Auftrag Begründung**

## CodeSystem: MII CS Human-genetische Beratung Auftrag Begründung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-auftrag-begruendung | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_CS_MTB_AuftragBegruendung |

 
Begründung zum Auftrag zur (erneuten) Human-genetischen Beratung 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Auftrag Begründung](ValueSet-mii-vs-mtb-auftrag-begruendung.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-auftrag-begruendung",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-auftrag-begruendung",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_AuftragBegruendung",
  "title" : "MII CS Human-genetische Beratung Auftrag Begründung",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T15:11:15+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Begründung zum Auftrag zur (erneuten) Human-genetischen Beratung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "family-anamnesis",
    "display" : "Familienanamnese",
    "definition" : "Aufklärung zur medizinischen Vorgeschichte von Familienmitgliedern"
  },
  {
    "code" : "self-anamnesis",
    "display" : "Eigenanamnese",
    "definition" : "Aufklärung zur persönlichen medizinischen Vorgeschichte"
  },
  {
    "code" : "secondary-tumor",
    "display" : "Zweittumor",
    "definition" : "Aufklärung zu weiteren diagnostiziertem Tumor"
  },
  {
    "code" : "other",
    "display" : "Andere",
    "definition" : "Andere Aufklärung"
  },
  {
    "code" : "unknown",
    "display" : "Unbekannt",
    "definition" : "Unbekannter Grund"
  }]
}

```
