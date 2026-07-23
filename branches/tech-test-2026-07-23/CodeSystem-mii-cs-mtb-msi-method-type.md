# MII CS MSI Method Type - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS MSI Method Type**

## CodeSystem: MII CS MSI Method Type 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-msi-method-type | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_MTB_MSI_Method_Type |

 
Codesystem, welches die verwendete MSI-Bestimmungsmethode gemäß dnpm-Kodierung auflistet. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_MTB_MSI_Method_Type](ValueSet-mii-vs-mtb-msi-method-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-msi-method-type",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-msi-method-type",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_MSI_Method_Type",
  "title" : "MII CS MSI Method Type",
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
  "description" : "Codesystem, welches die verwendete MSI-Bestimmungsmethode gemäß dnpm-Kodierung auflistet.",
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
    "code" : "IHC",
    "display" : "IHC"
  },
  {
    "code" : "PCR",
    "display" : "PCR"
  },
  {
    "code" : "bioinformatic",
    "display" : "Sequenzierung"
  }]
}

```
