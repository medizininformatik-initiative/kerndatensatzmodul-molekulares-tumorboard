# MII VS Antrag Kostenuebernahme Antragsstadium - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Antrag Kostenuebernahme Antragsstadium**

## ValueSet: MII VS Antrag Kostenuebernahme Antragsstadium 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antrag-kostenuebernahme-antragsstadium | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_VS_MTB_Antrag_Kostenuebernahme_Antragsstadium |

 
ValueSet zum Stadium des Antrags zur Kostenuebernahme 

 **References** 

* [MII EX MTB Antrag Kostenuebernahme Antragsstadium](StructureDefinition-mii-ex-mtb-antrag-kostenuebernahme-antragsstadium.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-antrag-kostenuebernahme-antragsstadium",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antrag-kostenuebernahme-antragsstadium",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Antrag_Kostenuebernahme_Antragsstadium",
  "title" : "MII VS Antrag Kostenuebernahme Antragsstadium",
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
  "description" : "ValueSet zum Stadium des Antrags zur Kostenuebernahme",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antrag-kostenuebernahme-antragsstadium"
    }]
  }
}

```
