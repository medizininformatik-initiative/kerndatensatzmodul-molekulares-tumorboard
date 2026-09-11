# MII CS Antrag Kostenuebernahme Antragsstadium - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Antrag Kostenuebernahme Antragsstadium**

## CodeSystem: MII CS Antrag Kostenuebernahme Antragsstadium 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antrag-kostenuebernahme-antragsstadium | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_CS_MTB_Antrag_Kostenuebernahme_Antragsstadium |

 
Codesystem zum Stadium des Antrags zur Kostenuebernahme nach DNPM 

This Code system is referenced in the definition of the following value sets:

* [MII VS Antrag Kostenuebernahme Antragsstadium](ValueSet-mii-vs-mtb-antrag-kostenuebernahme-antragsstadium.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-antrag-kostenuebernahme-antragsstadium",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antrag-kostenuebernahme-antragsstadium",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Antrag_Kostenuebernahme_Antragsstadium",
  "title" : "MII CS Antrag Kostenuebernahme Antragsstadium",
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
  "description" : "Codesystem zum Stadium des Antrags zur Kostenuebernahme nach DNPM",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "initial-claim",
    "display" : "Erstantrag"
  },
  {
    "code" : "revocation",
    "display" : "Widerspruch"
  },
  {
    "code" : "follow-up-claim",
    "display" : "Folgeantrag"
  },
  {
    "code" : "unknown",
    "display" : "Unbekannt"
  }]
}

```
