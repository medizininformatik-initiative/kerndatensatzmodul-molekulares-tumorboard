# MII VS MTB Panel OFA - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS MTB Panel OFA**

## ValueSet: MII VS MTB Panel OFA 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-ofa | *Version*:2026.0.1 |
| Active as of 2026-09-14 | *Computable Name*:MII_VS_MTB_Panel_Ofa |

 
Genliste des Panels: Oncomine Focus Assay (52 Gene). Kodiert als HGNC-Gensymbole; TODO:REVIEW HGNC-ID-Mapping. 

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
  "id" : "mii-vs-mtb-panel-ofa",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-ofa",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Panel_Ofa",
  "title" : "MII VS MTB Panel OFA",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-14T12:20:33+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Genliste des Panels: Oncomine Focus Assay (52 Gene). Kodiert als HGNC-Gensymbole; TODO:REVIEW HGNC-ID-Mapping.",
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
        "code" : "AKT1",
        "display" : "AKT1"
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
        "code" : "BRAF",
        "display" : "BRAF"
      },
      {
        "code" : "CCND1",
        "display" : "CCND1"
      },
      {
        "code" : "CDK4",
        "display" : "CDK4"
      },
      {
        "code" : "CDK6",
        "display" : "CDK6"
      },
      {
        "code" : "CTNNB1",
        "display" : "CTNNB1"
      },
      {
        "code" : "DDR2",
        "display" : "DDR2"
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
        "code" : "ERBB3",
        "display" : "ERBB3"
      },
      {
        "code" : "ERBB4",
        "display" : "ERBB4"
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
        "code" : "GNA11",
        "display" : "GNA11"
      },
      {
        "code" : "GNAQ",
        "display" : "GNAQ"
      },
      {
        "code" : "HRAS",
        "display" : "HRAS"
      },
      {
        "code" : "IDH1",
        "display" : "IDH1"
      },
      {
        "code" : "IDH2",
        "display" : "IDH2"
      },
      {
        "code" : "JAK1",
        "display" : "JAK1"
      },
      {
        "code" : "JAK2",
        "display" : "JAK2"
      },
      {
        "code" : "JAK3",
        "display" : "JAK3"
      },
      {
        "code" : "KIT",
        "display" : "KIT"
      },
      {
        "code" : "KRAS",
        "display" : "KRAS"
      },
      {
        "code" : "MAP2K1",
        "display" : "MAP2K1"
      },
      {
        "code" : "MAP2K2",
        "display" : "MAP2K2"
      },
      {
        "code" : "MET",
        "display" : "MET"
      },
      {
        "code" : "MTOR",
        "display" : "MTOR"
      },
      {
        "code" : "MYC",
        "display" : "MYC"
      },
      {
        "code" : "MYCN",
        "display" : "MYCN"
      },
      {
        "code" : "NRAS",
        "display" : "NRAS"
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
        "code" : "PDGFRA",
        "display" : "PDGFRA"
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
        "code" : "SMO",
        "display" : "SMO"
      }]
    }]
  }
}

```
