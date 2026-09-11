# MII CS Zulassungsstatus - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Zulassungsstatus**

## CodeSystem: MII CS Zulassungsstatus 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-zulassungsstatus | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_CS_MTB_Zulassungsstatus |

 
Angabe zum Zulassungsstatus 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Zulassungsstatus](ValueSet-mii-vs-mtb-zulassungsstatus.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-zulassungsstatus",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-zulassungsstatus",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Zulassungsstatus",
  "title" : "MII CS Zulassungsstatus",
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
  "description" : "Angabe zum Zulassungsstatus",
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
    "code" : "in-label",
    "display" : "In-Label",
    "definition" : "Verwendung des Arzneimittels entsprechend der zugelassenen Indikation, Dosierung, Darreichungsform und Patientengruppe"
  },
  {
    "code" : "off-label",
    "display" : "Off-Label",
    "definition" : "Verwendung des Arzneimittels abweichend von der zugelassenen Indikation, Dosierung, Darreichungsform oder Patientengruppe"
  },
  {
    "code" : "leitlinie",
    "display" : "Leitlinie",
    "definition" : "Verwendung des Arzneimittels gemäß Leitlinienempfehlungen"
  }]
}

```
