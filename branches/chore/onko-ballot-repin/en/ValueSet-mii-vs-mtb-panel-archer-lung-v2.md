# MII VS MTB Panel Archer - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS MTB Panel Archer**

## ValueSet: MII VS MTB Panel Archer 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-archer-lung-v2 | *Version*:2026.0.1 |
| Active as of 2026-09-14 | *Computable Name*:MII_VS_MTB_Panel_ArcherLungV2 |

 
Genliste des Panels: FusionPlex Archer Lung V2 (17 Gene, Fusionsanalyse). Kodiert mit stabilen HGNC-IDs (System genenames.org/geneId), Displays = aktuelle HGNC-Symbole. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-panel-archer-lung-v2",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-archer-lung-v2",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Panel_ArcherLungV2",
  "title" : "MII VS MTB Panel Archer",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-14T22:18:02+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Genliste des Panels: FusionPlex Archer Lung V2 (17 Gene, Fusionsanalyse). Kodiert mit stabilen HGNC-IDs (System genenames.org/geneId), Displays = aktuelle HGNC-Symbole.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://www.genenames.org/geneId",
      "concept" : [{
        "code" : "HGNC:427",
        "display" : "ALK"
      },
      {
        "code" : "HGNC:1097",
        "display" : "BRAF"
      },
      {
        "code" : "HGNC:3236",
        "display" : "EGFR"
      },
      {
        "code" : "HGNC:3430",
        "display" : "ERBB2"
      },
      {
        "code" : "HGNC:3688",
        "display" : "FGFR1"
      },
      {
        "code" : "HGNC:3689",
        "display" : "FGFR2"
      },
      {
        "code" : "HGNC:3690",
        "display" : "FGFR3"
      },
      {
        "code" : "HGNC:6407",
        "display" : "KRAS"
      },
      {
        "code" : "HGNC:7029",
        "display" : "MET"
      },
      {
        "code" : "HGNC:7997",
        "display" : "NRG1"
      },
      {
        "code" : "HGNC:8031",
        "display" : "NTRK1"
      },
      {
        "code" : "HGNC:8032",
        "display" : "NTRK2"
      },
      {
        "code" : "HGNC:8033",
        "display" : "NTRK3"
      },
      {
        "code" : "HGNC:29919",
        "display" : "NUTM1"
      },
      {
        "code" : "HGNC:8975",
        "display" : "PIK3CA"
      },
      {
        "code" : "HGNC:9967",
        "display" : "RET"
      },
      {
        "code" : "HGNC:10261",
        "display" : "ROS1"
      }]
    }]
  }
}

```
