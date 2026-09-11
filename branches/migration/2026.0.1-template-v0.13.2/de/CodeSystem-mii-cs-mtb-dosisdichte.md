# MII CS Dosisdichte - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Dosisdichte**

## CodeSystem: MII CS Dosisdichte 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-dosisdichte | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_CS_MTB_Dosisdichte |

 
Codesystem für die Dosisdichte einer Medikamentengabe 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Dosisdichte](ValueSet-mii-vs-mtb-dosisdichte.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-dosisdichte",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-dosisdichte",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Dosisdichte",
  "title" : "MII CS Dosisdichte",
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
  "description" : "Codesystem für die Dosisdichte einer Medikamentengabe",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "volle-Dosis",
    "display" : "Volle Dosis"
  },
  {
    "code" : ">50%",
    "display" : "Mehr als 50%"
  },
  {
    "code" : "<50%",
    "display" : "Weniger als 50%"
  },
  {
    "code" : "unbekannt",
    "display" : "Unbekannt"
  }]
}

```
