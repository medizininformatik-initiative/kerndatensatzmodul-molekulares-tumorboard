# MII CS Antwort Kostenuebernahme Entscheidung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Antwort Kostenuebernahme Entscheidung**

## CodeSystem: MII CS Antwort Kostenuebernahme Entscheidung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-entscheidung | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_MTB_Antwort_Kostenuebernahme_Entscheidung |

 
Codesystem zum Status der Antwort zur Kostenuebernahme nach DNPM 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_MTB_Antwort_Kostenuebernahme_Entscheidung](ValueSet-mii-vs-mtb-antwort-kostenuebernahme-entscheidung.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-antwort-kostenuebernahme-entscheidung",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-entscheidung",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Antwort_Kostenuebernahme_Entscheidung",
  "title" : "MII CS Antwort Kostenuebernahme Entscheidung",
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
  "description" : "Codesystem zum Status der Antwort zur Kostenuebernahme nach DNPM",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "accepted",
    "display" : "Angenommen"
  },
  {
    "code" : "rejected",
    "display" : "Abgelehnt"
  },
  {
    "code" : "unknown",
    "display" : "Unbekannt"
  }]
}

```
