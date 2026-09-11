# MII VS Tumorausbreitung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Tumorausbreitung**

## ValueSet: MII VS Tumorausbreitung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-tumorausbreitung | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_VS_MTB_Tumorausbreitung |

 
ValueSet zur Angabe der Tumorausbreitung 

 **References** 

* [MII PR MTB Tumorausbreitung](StructureDefinition-mii-pr-mtb-tumorausbreitung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-tumorausbreitung",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-tumorausbreitung",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Tumorausbreitung",
  "title" : "MII VS Tumorausbreitung",
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
  "description" : "ValueSet zur Angabe der Tumorausbreitung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "58899004",
        "display" : "No evidence of tumor"
      },
      {
        "code" : "255127006",
        "display" : "Local tumor spread"
      },
      {
        "code" : "128462008",
        "display" : "Metastases"
      },
      {
        "code" : "261665006",
        "display" : "Unknown"
      }]
    }]
  }
}

```
