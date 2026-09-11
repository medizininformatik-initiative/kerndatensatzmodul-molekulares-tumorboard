# MII NS Studie DRKS - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII NS Studie DRKS**

## NamingSystem: MII NS Studie DRKS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/NamingSystem/mii-ns-studie-drks | *Version*:2026.0.1 |
| Active Stand: 2024-07-19 | *Maschinenlesbarer Name*:MII_NS_Studie_DRKS |

 
NamingSystem für Identifikatoren des Deutschen Register Klinischer Studien (DRKS) 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "mii-ns-studie-drks",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/NamingSystem/mii-ns-studie-drks"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "2026.0.1"
  }],
  "name" : "MII_NS_Studie_DRKS",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2024-07-19",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "NamingSystem für Identifikatoren des Deutschen Register Klinischer Studien (DRKS)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/drks",
    "preferred" : true
  }]
}

```
