# MII VS WHO Grad Tumor ZNS - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS WHO Grad Tumor ZNS**

## ValueSet: MII VS WHO Grad Tumor ZNS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-who-grad-tumor-zns | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_VS_MTB_WHO_Grad_Tumor_ZNS |

 
ValueSet zum Grad eines Tumors nach WHO-Klassifikation der Tumoren des zentralen Nervensystems 

 **References** 

* [MII PR MTB WHO Grad Tumor ZNS](StructureDefinition-mii-pr-mtb-who-grad-tumor-zns.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-who-grad-tumor-zns",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-who-grad-tumor-zns",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_WHO_Grad_Tumor_ZNS",
  "title" : "MII VS WHO Grad Tumor ZNS",
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
  "description" : "ValueSet zum Grad eines Tumors nach WHO-Klassifikation der Tumoren des zentralen Nervensystems",
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
        "code" : "396922003",
        "display" : "World Health Organization grade I central nervous system tumor (finding)"
      },
      {
        "code" : "396923008",
        "display" : "World Health Organization grade II central nervous system tumor (finding)"
      },
      {
        "code" : "396924002",
        "display" : "World Health Organization grade III central nervous system tumor (finding)"
      },
      {
        "code" : "396925001",
        "display" : "World Health Organization grade IV central nervous system tumor (finding)"
      }]
    }]
  }
}

```
