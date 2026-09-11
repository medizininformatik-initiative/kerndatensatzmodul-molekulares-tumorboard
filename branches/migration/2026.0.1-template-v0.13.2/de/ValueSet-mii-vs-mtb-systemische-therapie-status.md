# MII VS MTB Systemtherapie Status - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS MTB Systemtherapie Status**

## ValueSet: MII VS MTB Systemtherapie Status 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-systemische-therapie-status | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_VS_MTB_Systemische_Therapie_Status |

 
Einschränkung der Status für Systemtherapie 

 **References** 

* [MII PR MTB Systemische Therapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-systemische-therapie-status",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-systemische-therapie-status",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Systemische_Therapie_Status",
  "title" : "MII VS MTB Systemtherapie Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T14:44:50+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Einschränkung der Status für Systemtherapie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/event-status",
      "concept" : [{
        "code" : "not-done"
      },
      {
        "code" : "in-progress"
      },
      {
        "code" : "stopped"
      },
      {
        "code" : "completed"
      }]
    }]
  }
}

```
