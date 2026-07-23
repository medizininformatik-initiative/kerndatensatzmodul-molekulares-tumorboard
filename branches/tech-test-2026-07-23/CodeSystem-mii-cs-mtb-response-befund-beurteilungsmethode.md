# MII CS Response Befund Beurteilungsmethode - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Response Befund Beurteilungsmethode**

## CodeSystem: MII CS Response Befund Beurteilungsmethode 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilungsmethode | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_MTB_Response_Befund_Beurteilungsmethode |

 
Codesystem für die Beurteilungsmethode eines Response Befunds 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_MTB_Beurteilungsmethode](ValueSet-mii-vs-mtb-beurteilungsmethode-response-befund.md)



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
  "date" : "2026-07-23T12:42:46+00:00",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
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
