# MII VS Therapiestatusgrund - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Therapiestatusgrund**

## ValueSet: MII VS Therapiestatusgrund 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-therapiestatusgrund | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_VS_MTB_Therapiestatusgrund |

 
ValueSet zum Therapiestatusgrund 

 **References** 

* [MII PR MTB Systemische Therapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md)
* [MII PR MTB Systemische Vortherapie](StructureDefinition-mii-pr-mtb-systemische-vortherapie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-therapiestatusgrund",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-therapiestatusgrund",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Therapiestatusgrund",
  "title" : "MII VS Therapiestatusgrund",
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
  "description" : "ValueSet zum Therapiestatusgrund",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund"
    }]
  }
}

```
