# MII CS Response Befund Beurteilung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Response Befund Beurteilung**

## CodeSystem: MII CS Response Befund Beurteilung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_CS_MTB_Response_Befund_Beurteilung |

 
Codesystem für die Beurteilung des Response Befund 

This Code system is referenced in the definition of the following value sets:

* [MII VS Response Befund Beurteilung](ValueSet-mii-vs-mtb-response-befund-beurteilung.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-response-befund-beurteilung",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Response_Befund_Beurteilung",
  "title" : "MII CS Response Befund Beurteilung",
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
  "description" : "Codesystem für die Beurteilung des Response Befund",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "CR",
    "display" : "Complete Response"
  },
  {
    "code" : "PR",
    "display" : "Partial Response"
  },
  {
    "code" : "MR",
    "display" : "Mixed Response"
  },
  {
    "code" : "SD",
    "display" : "Stable Disease"
  },
  {
    "code" : "PD",
    "display" : "Progressive Disease"
  },
  {
    "code" : "NA",
    "display" : "Not assessable"
  },
  {
    "code" : "NYA",
    "display" : "Not yet assessable"
  }]
}

```
