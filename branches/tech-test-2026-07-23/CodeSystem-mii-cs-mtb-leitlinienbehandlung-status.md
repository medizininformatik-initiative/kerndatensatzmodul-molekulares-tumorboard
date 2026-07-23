# MII CS Leitlinienbehandlung Status - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Leitlinienbehandlung Status**

## CodeSystem: MII CS Leitlinienbehandlung Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-leitlinienbehandlung-status | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_MTB_Leitlinienbehandlung_Status |

 
Status der Behandlung nach Leitlinie 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_MTB_Leitlinienbehandlung_Status](ValueSet-mii-vs-mtb-leitlinienbehandlung-status.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-leitlinienbehandlung-status",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-leitlinienbehandlung-status",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Leitlinienbehandlung_Status",
  "title" : "MII CS Leitlinienbehandlung Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-23T12:42:46+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Status der Behandlung nach Leitlinie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "exhausted",
    "display" : "Leitlinien ausgeschöpft",
    "definition" : "Behandlung nach Leitline ausgeschöpft"
  },
  {
    "code" : "non-exhausted",
    "display" : "Leitlinien nicht ausgeschöpft",
    "definition" : "Behandlung nach Leitline nicht ausgeschöpft"
  },
  {
    "code" : "impossible",
    "display" : "Leitlinientherapie nicht möglich",
    "definition" : "Behandlung nach Leitline nicht möglich"
  },
  {
    "code" : "no-guidelines-available",
    "display" : "Keine Leitlinien vorhanden",
    "definition" : "Keine Leitlinie zur Behandlung vorhanden"
  },
  {
    "code" : "unknown",
    "display" : "Unbekannt",
    "definition" : "Status zur Behandlung nach Leitline unbekannt"
  }]
}

```
