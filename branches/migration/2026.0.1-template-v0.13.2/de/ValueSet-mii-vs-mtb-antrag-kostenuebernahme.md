# MII VS MTB Antrag Kostenuebernahme - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS MTB Antrag Kostenuebernahme**

## ValueSet: MII VS MTB Antrag Kostenuebernahme 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antrag-kostenuebernahme | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_VS_MTB_Antrag_Kostenuebernahme_Type |

 
MII Logical Model Modul Molekulares Tumorboard 

 **References** 

* [MII PR MTB Antrag Kostenuebernahme](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md)
* [MII PR MTB Anwort Kostenuebernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-antrag-kostenuebernahme",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antrag-kostenuebernahme",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Antrag_Kostenuebernahme_Type",
  "title" : "MII VS MTB Antrag Kostenuebernahme",
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
  "description" : "MII Logical Model Modul Molekulares Tumorboard",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
      "concept" : [{
        "code" : "institutional",
        "display" : "Stationärer Erstattungsantrag"
      },
      {
        "code" : "pharmacy",
        "display" : "Apotheken-Erstattungsantrag"
      },
      {
        "code" : "professional",
        "display" : "Außerklinischer Erstattungsantrag (z.B. niedergelassener Onkologe)"
      }]
    }]
  }
}

```
