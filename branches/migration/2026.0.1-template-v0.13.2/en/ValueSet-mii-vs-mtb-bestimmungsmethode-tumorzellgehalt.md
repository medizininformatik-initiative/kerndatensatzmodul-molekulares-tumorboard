# MII VS Bestimmungsmethode Tumorzellgehalt - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Bestimmungsmethode Tumorzellgehalt**

## ValueSet: MII VS Bestimmungsmethode Tumorzellgehalt 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-bestimmungsmethode-tumorzellgehalt | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_VS_MTB_BestimmungsmethodeTumorzellgehalt |

 
ValueSet für Angewandte Methode zur Bestimmung des Tumorzellgehalts 

 **References** 

* [MII PR MTB Tumorzellgehalt](StructureDefinition-mii-pr-mtb-tumorzellgehalt.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-bestimmungsmethode-tumorzellgehalt",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-bestimmungsmethode-tumorzellgehalt",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_BestimmungsmethodeTumorzellgehalt",
  "title" : "MII VS Bestimmungsmethode Tumorzellgehalt",
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
