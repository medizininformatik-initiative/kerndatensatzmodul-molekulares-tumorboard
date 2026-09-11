# MII CS Bestimmungsmethode Tumorzellgehalt - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Bestimmungsmethode Tumorzellgehalt**

## CodeSystem: MII CS Bestimmungsmethode Tumorzellgehalt 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-bestimmungsmethode-tumorzellgehalt | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_CS_MTB_BestimmungsmethodeTumorzellgehalt |

 
Angewandte Methode zur Bestimmung des Tumorzellgehalts 

This Code system is referenced in the definition of the following value sets:

* [MII VS Bestimmungsmethode Tumorzellgehalt](ValueSet-mii-vs-mtb-bestimmungsmethode-tumorzellgehalt.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-bestimmungsmethode-tumorzellgehalt",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-bestimmungsmethode-tumorzellgehalt",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_BestimmungsmethodeTumorzellgehalt",
  "title" : "MII CS Bestimmungsmethode Tumorzellgehalt",
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
  "description" : "Angewandte Methode zur Bestimmung des Tumorzellgehalts",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "bioinformatic",
    "display" : "Bioinformatisch",
    "definition" : "Bioinformatische Bestimmung"
  },
  {
    "code" : "histologic",
    "display" : "Histologisch",
    "definition" : "Histologische Bestimmung"
  }]
}

```
