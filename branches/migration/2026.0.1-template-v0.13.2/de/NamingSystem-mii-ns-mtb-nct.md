# MII NS MTB NCT - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII NS MTB NCT**

## NamingSystem: MII NS MTB NCT 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/NamingSystem/mii-ns-mtb-nct | *Version*:2026.0.1 |
| Active Stand: 2024-07-19 | *Maschinenlesbarer Name*:MII_NS_MTB_NCT |

 
NamingSystem für Identifikatoren des Nationalen Centrums für Tumorerkrankungen (NCT) 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "mii-ns-mtb-nct",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/NamingSystem/mii-ns-mtb-nct"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "2026.0.1"
  }],
  "name" : "MII_NS_MTB_NCT",
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
  "description" : "NamingSystem für Identifikatoren des Nationalen Centrums für Tumorerkrankungen (NCT)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://www.medizininformatik-initiative.de/fhir/modul-mtb/sid/nct",
    "preferred" : true
  }]
}

```
