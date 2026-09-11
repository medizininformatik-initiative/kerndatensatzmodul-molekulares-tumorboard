# MII CS Empfehlung Status Begründung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Empfehlung Status Begründung**

## CodeSystem: MII CS Empfehlung Status Begründung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-status-begruendung | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_CS_MTB_Empfehlung_StatusBegruendung |

 
Begründung bei fehlender Empfehlung im MTB-Beschluss 

This Code system is referenced in the definition of the following value sets:

* [MII VS Empfehlung Status Begründung](ValueSet-mii-vs-mtb-empfehlung-status-begruendung.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-empfehlung-status-begruendung",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-status-begruendung",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Empfehlung_StatusBegruendung",
  "title" : "MII CS Empfehlung Status Begründung",
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
  "description" : "Begründung bei fehlender Empfehlung im MTB-Beschluss",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "no-target",
    "display" : "Keine therapeutische Konsequenz",
    "definition" : "Keine therapeutische Konsequenz durch fehlende Empfehlung"
  }]
}

```
