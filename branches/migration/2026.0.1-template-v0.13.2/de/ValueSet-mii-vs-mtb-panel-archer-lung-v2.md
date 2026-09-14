# MII VS MTB Panel Archer - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS MTB Panel Archer**

## ValueSet: MII VS MTB Panel Archer 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-archer-lung-v2 | *Version*:2026.0.1 |
| Active Stand: 2026-09-14 | *Maschinenlesbarer Name*:MII_VS_MTB_Panel_ArcherLungV2 |

 
Genliste des Panels: FusionPlex Archer Lung V2 (17 Gene, Fusionsanalyse). Kodiert als HGNC-Gensymbole; TODO:REVIEW HGNC-ID-Mapping. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-09-14T11:48:09+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Genliste des Panels: FusionPlex Archer Lung V2 (17 Gene, Fusionsanalyse). Kodiert als HGNC-Gensymbole; TODO:REVIEW HGNC-ID-Mapping.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://www.genenames.org",
      "concept" : [{
        "code" : "ALK",
        "display" : "ALK"
      },
      {
        "code" : "BRAF",
        "display" : "BRAF"
      },
      {
        "code" : "EGFR",
        "display" : "EGFR"
      },
      {
        "code" : "ERBB2",
        "display" : "ERBB2"
      },
      {
        "code" : "FGFR1",
        "display" : "FGFR1"
      },
      {
        "code" : "FGFR2",
        "display" : "FGFR2"
      },
      {
        "code" : "FGFR3",
        "display" : "FGFR3"
      },
      {
        "code" : "KRAS",
        "display" : "KRAS"
      },
      {
        "code" : "MET",
        "display" : "MET"
      },
      {
        "code" : "NRG1",
        "display" : "NRG1"
      },
      {
        "code" : "NTRK1",
        "display" : "NTRK1"
      },
      {
        "code" : "NTRK2",
        "display" : "NTRK2"
      },
      {
        "code" : "NTRK3",
        "display" : "NTRK3"
      },
      {
        "code" : "NUTM1",
        "display" : "NUTM1"
      },
      {
        "code" : "PIK3CA",
        "display" : "PIK3CA"
      },
      {
        "code" : "RET",
        "display" : "RET"
      },
      {
        "code" : "ROS1",
        "display" : "ROS1"
      }]
    }]
  }
}

```
