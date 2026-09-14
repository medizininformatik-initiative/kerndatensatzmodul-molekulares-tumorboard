# MII VS MTB Panel TSO 500 Fusions - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS MTB Panel TSO 500 Fusions**

## ValueSet: MII VS MTB Panel TSO 500 Fusions 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tso-500-fusion | *Version*:2026.0.1 |
| Active as of 2026-09-14 | *Computable Name*:MII_VS_MTB_Panel_Tso500Fusion |

 
Genliste des Panels: TruSight Oncology 500 — Fusions-Genliste (55 Gene). Kodiert als HGNC-Gensymbole; TODO:REVIEW HGNC-ID-Mapping. 

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
  "id" : "mii-vs-mtb-panel-tso-500-fusion",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tso-500-fusion",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Panel_Tso500Fusion",
  "title" : "MII VS MTB Panel TSO 500 Fusions",
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
  "description" : "Genliste des Panels: TruSight Oncology 500 — Fusions-Genliste (55 Gene). Kodiert als HGNC-Gensymbole; TODO:REVIEW HGNC-ID-Mapping.",
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
        "code" : "ABL1",
        "display" : "ABL1"
      },
      {
        "code" : "AKT3",
        "display" : "AKT3"
      },
      {
        "code" : "ALK",
        "display" : "ALK"
      },
      {
        "code" : "AR",
        "display" : "AR"
      },
      {
        "code" : "AXL",
        "display" : "AXL"
      },
      {
        "code" : "BCL2",
        "display" : "BCL2"
      },
      {
        "code" : "BRAF",
        "display" : "BRAF"
      },
      {
        "code" : "BRCA1",
        "display" : "BRCA1"
      },
      {
        "code" : "BRCA2",
        "display" : "BRCA2"
      },
      {
        "code" : "CDK4",
        "display" : "CDK4"
      },
      {
        "code" : "CSF1R",
        "display" : "CSF1R"
      },
      {
        "code" : "EGFR",
        "display" : "EGFR"
      },
      {
        "code" : "EML4",
        "display" : "EML4"
      },
      {
        "code" : "ERBB2",
        "display" : "ERBB2"
      },
      {
        "code" : "ERG",
        "display" : "ERG"
      },
      {
        "code" : "ESR1",
        "display" : "ESR1"
      },
      {
        "code" : "ETS1",
        "display" : "ETS1"
      },
      {
        "code" : "ETV1",
        "display" : "ETV1"
      },
      {
        "code" : "ETV4",
        "display" : "ETV4"
      },
      {
        "code" : "ETV5",
        "display" : "ETV5"
      },
      {
        "code" : "EWSR1",
        "display" : "EWSR1"
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
        "code" : "FGFR4",
        "display" : "FGFR4"
      },
      {
        "code" : "FLI1",
        "display" : "FLI1"
      },
      {
        "code" : "FLT1",
        "display" : "FLT1"
      },
      {
        "code" : "FLT3",
        "display" : "FLT3"
      },
      {
        "code" : "JAK2",
        "display" : "JAK2"
      },
      {
        "code" : "KDR",
        "display" : "KDR"
      },
      {
        "code" : "KIF5B",
        "display" : "KIF5B"
      },
      {
        "code" : "KIT",
        "display" : "KIT"
      },
      {
        "code" : "MET",
        "display" : "MET"
      },
      {
        "code" : "MLL",
        "display" : "MLL"
      },
      {
        "code" : "MLLT3",
        "display" : "MLLT3"
      },
      {
        "code" : "MSH2",
        "display" : "MSH2"
      },
      {
        "code" : "MYC",
        "display" : "MYC"
      },
      {
        "code" : "NOTCH1",
        "display" : "NOTCH1"
      },
      {
        "code" : "NOTCH2",
        "display" : "NOTCH2"
      },
      {
        "code" : "NOTCH3",
        "display" : "NOTCH3"
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
        "code" : "PAX3",
        "display" : "PAX3"
      },
      {
        "code" : "PAX7",
        "display" : "PAX7"
      },
      {
        "code" : "PDGFRA",
        "display" : "PDGFRA"
      },
      {
        "code" : "PDGFRB",
        "display" : "PDGFRB"
      },
      {
        "code" : "PIK3CA",
        "display" : "PIK3CA"
      },
      {
        "code" : "PPARG",
        "display" : "PPARG"
      },
      {
        "code" : "RAF1",
        "display" : "RAF1"
      },
      {
        "code" : "RET",
        "display" : "RET"
      },
      {
        "code" : "ROS1",
        "display" : "ROS1"
      },
      {
        "code" : "RPS6KB1",
        "display" : "RPS6KB1"
      },
      {
        "code" : "TMPRSS2",
        "display" : "TMPRSS2"
      }]
    }]
  }
}

```
