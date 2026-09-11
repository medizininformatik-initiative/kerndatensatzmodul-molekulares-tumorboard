# MII VS Leitlinienbehandlung Status - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Leitlinienbehandlung Status**

## ValueSet: MII VS Leitlinienbehandlung Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-leitlinienbehandlung-status | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_VS_MTB_Leitlinienbehandlung_Status |

 
ValueSet zum Status der Behandlung nach Leitlinie 

 **References** 

* [MII EX MTB Leitlinienbehandlung Status](StructureDefinition-mii-ex-mtb-leitlinienbehandlung-status.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-leitlinienbehandlung-status",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-leitlinienbehandlung-status",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Leitlinienbehandlung_Status",
  "title" : "MII VS Leitlinienbehandlung Status",
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
  "description" : "ValueSet zum Status der Behandlung nach Leitlinie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-leitlinienbehandlung-status"
    }]
  }
}

```
