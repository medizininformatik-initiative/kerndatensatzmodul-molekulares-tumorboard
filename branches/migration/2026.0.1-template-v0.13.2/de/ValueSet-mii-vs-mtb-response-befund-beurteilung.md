# MII VS Response Befund Beurteilung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Response Befund Beurteilung**

## ValueSet: MII VS Response Befund Beurteilung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-response-befund-beurteilung | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_VS_MTB_Response_Befund_Beurteilung |

 
ValueSet Response Befund Beurteilung 

 **References** 

* [MII PR MTB Response Befund](StructureDefinition-mii-pr-mtb-response-befund.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-response-befund-beurteilung",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-response-befund-beurteilung",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Response_Befund_Beurteilung",
  "title" : "MII VS Response Befund Beurteilung",
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
  "description" : "ValueSet Response Befund Beurteilung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung"
    }]
  }
}

```
