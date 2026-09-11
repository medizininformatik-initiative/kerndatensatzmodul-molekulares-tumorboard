# MII CS Follow-Up Status - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Follow-Up Status**

## CodeSystem: MII CS Follow-Up Status 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-follow-up-status | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_CS_MTB_Follow_Up_Status |

 
Codesystem zum Follow-Up Status 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Follow-Up Status](ValueSet-mii-vs-mtb-follow-up-status.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-follow-up-status",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-follow-up-status",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Follow_Up_Status",
  "title" : "MII CS Follow-Up Status",
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
  "description" : "Codesystem zum Follow-Up Status",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "ongoing",
    "display" : "ongoing"
  },
  {
    "code" : "completed",
    "display" : "completed"
  },
  {
    "code" : "not-done",
    "display" : "not done"
  }]
}

```
