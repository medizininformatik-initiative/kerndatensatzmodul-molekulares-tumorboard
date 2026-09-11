# MII CS Antwort Kostenuebernahme Entscheidung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Antwort Kostenuebernahme Entscheidung**

## CodeSystem: MII CS Antwort Kostenuebernahme Entscheidung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-entscheidung | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_CS_MTB_Antwort_Kostenuebernahme_Entscheidung |

 
Codesystem zum Status der Antwort zur Kostenuebernahme nach DNPM 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Antwort Kostenuebernahme Entscheidung](ValueSet-mii-vs-mtb-antwort-kostenuebernahme-entscheidung.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-antwort-kostenuebernahme-entscheidung",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-entscheidung",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Antwort_Kostenuebernahme_Entscheidung",
  "title" : "MII CS Antwort Kostenuebernahme Entscheidung",
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
  "description" : "Codesystem zum Status der Antwort zur Kostenuebernahme nach DNPM",
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
    "code" : "accepted",
    "display" : "Angenommen"
  },
  {
    "code" : "rejected",
    "display" : "Abgelehnt"
  },
  {
    "code" : "unknown",
    "display" : "Unbekannt"
  }]
}

```
