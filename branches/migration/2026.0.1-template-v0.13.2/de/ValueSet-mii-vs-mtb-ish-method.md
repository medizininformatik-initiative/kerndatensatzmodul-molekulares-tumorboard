# MII VS MTB ISH Method - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS MTB ISH Method**

## ValueSet: MII VS MTB ISH Method 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-ish-method | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_VS_MTB_ISH_Method |

 
In Situ Hybridization technique methods (FISH, CISH, SISH) 

 **References** 

* [MII PR MTB In Situ Hybridization](StructureDefinition-mii-pr-mtb-insituhybridization.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-ish-method",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-ish-method",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_ISH_Method",
  "title" : "MII VS MTB ISH Method",
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
  "description" : "In Situ Hybridization technique methods (FISH, CISH, SISH)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "1363313004",
        "display" : "In situ hybridization technique (qualifier value)"
      },
      {
        "code" : "1303773004",
        "display" : "Fluorescence in situ hybridization technique (qualifier value)"
      },
      {
        "code" : "787997001",
        "display" : "Chromogenic in situ hybridization (qualifier value)"
      },
      {
        "code" : "787998006",
        "display" : "Silver in situ hybridization (qualifier value)"
      }]
    }]
  }
}

```
