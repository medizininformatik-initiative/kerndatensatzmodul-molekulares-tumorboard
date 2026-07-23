# MII CS Dosisdichte - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Dosisdichte**

## CodeSystem: MII CS Dosisdichte 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-dosisdichte | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_MTB_Dosisdichte |

 
Codesystem für die Dosisdichte einer Medikamentengabe 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_MTB_Dosisdichte](ValueSet-mii-vs-mtb-dosisdichte.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-dosisdichte",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-dosisdichte",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Dosisdichte",
  "title" : "MII CS Dosisdichte",
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
  "description" : "Codesystem für die Dosisdichte einer Medikamentengabe",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "volle-Dosis",
    "display" : "Volle Dosis"
  },
  {
    "code" : ">50%",
    "display" : "Mehr als 50%"
  },
  {
    "code" : "<50%",
    "display" : "Weniger als 50%"
  },
  {
    "code" : "unbekannt",
    "display" : "Unbekannt"
  }]
}

```
