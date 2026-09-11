# MII CS Response Befund Beurteilungsmethode - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Response Befund Beurteilungsmethode**

## CodeSystem: MII CS Response Befund Beurteilungsmethode 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilungsmethode | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_CS_MTB_Response_Befund_Beurteilungsmethode |

 
Codesystem für die Beurteilungsmethode eines Response Befunds 

This Code system is referenced in the definition of the following value sets:

* [MII VS Response Befund Beurteilung](ValueSet-mii-vs-mtb-beurteilungsmethode-response-befund.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-response-befund-beurteilungsmethode",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilungsmethode",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Response_Befund_Beurteilungsmethode",
  "title" : "MII CS Response Befund Beurteilungsmethode",
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
  "description" : "Codesystem für die Beurteilungsmethode eines Response Befunds",
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
    "code" : "RECIST",
    "display" : "RECIST"
  },
  {
    "code" : "RANO",
    "display" : "RANO"
  }]
}

```
