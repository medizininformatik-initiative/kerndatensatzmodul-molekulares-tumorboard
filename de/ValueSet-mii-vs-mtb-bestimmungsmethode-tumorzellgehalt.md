# MII VS Bestimmungsmethode Tumorzellgehalt - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2027.0.0-ballot.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Bestimmungsmethode Tumorzellgehalt**

## ValueSet: MII VS Bestimmungsmethode Tumorzellgehalt 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-bestimmungsmethode-tumorzellgehalt | *Version*:2027.0.0-ballot.1 |
| Active Stand: 2026-09-15 | *Maschinenlesbarer Name*:MII_VS_MTB_BestimmungsmethodeTumorzellgehalt |

 
ValueSet für Angewandte Methode zur Bestimmung des Tumorzellgehalts 

 **References** 

* [MII PR MTB Tumorzellgehalt](StructureDefinition-mii-pr-mtb-tumorzellgehalt.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-bestimmungsmethode-tumorzellgehalt",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-bestimmungsmethode-tumorzellgehalt",
  "version" : "2027.0.0-ballot.1",
  "name" : "MII_VS_MTB_BestimmungsmethodeTumorzellgehalt",
  "title" : "MII VS Bestimmungsmethode Tumorzellgehalt",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-15T18:08:27+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "ValueSet für Angewandte Methode zur Bestimmung des Tumorzellgehalts",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-bestimmungsmethode-tumorzellgehalt"
    }]
  }
}

```
