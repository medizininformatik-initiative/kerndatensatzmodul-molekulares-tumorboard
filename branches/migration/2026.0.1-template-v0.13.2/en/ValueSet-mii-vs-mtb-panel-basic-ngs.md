# MII VS MTB Panel Basic-NGS - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS MTB Panel Basic-NGS**

## ValueSet: MII VS MTB Panel Basic-NGS 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-basic-ngs | *Version*:2026.0.1 |
| Active as of 2026-09-14 | *Computable Name*:MII_VS_MTB_Panel_BasicNgs |

 
Genliste des Panels: Basic-NGS Panel (36 Gene). Kodiert als HGNC-Gensymbole; TODO:REVIEW HGNC-ID-Mapping. 

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
  "id" : "mii-vs-mtb-panel-basic-ngs",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-basic-ngs",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Panel_BasicNgs",
  "title" : "MII VS MTB Panel Basic-NGS",
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
  "description" : "Genliste des Panels: Basic-NGS Panel (36 Gene). Kodiert als HGNC-Gensymbole; TODO:REVIEW HGNC-ID-Mapping.",
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
        "code" : "AKT1",
        "display" : "AKT1"
      },
      {
        "code" : "APC",
        "display" : "APC"
      },
      {
        "code" : "BAP1",
        "display" : "BAP1"
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
        "code" : "CTNNB1",
        "display" : "CTNNB1"
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
        "code" : "ESR1",
        "display" : "ESR1"
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
        "code" : "GNA11",
        "display" : "GNA11"
      },
      {
        "code" : "GNAQ",
        "display" : "GNAQ"
      },
      {
        "code" : "GNAS",
        "display" : "GNAS"
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
        "code" : "KIT",
        "display" : "KIT"
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
        "code" : "MLH1",
        "display" : "MLH1"
      },
      {
        "code" : "MSH2",
        "display" : "MSH2"
      },
      {
        "code" : "MSH6",
        "display" : "MSH6"
      },
      {
        "code" : "NRAS",
        "display" : "NRAS"
      },
      {
        "code" : "PALB2",
        "display" : "PALB2"
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
        "code" : "PMS2",
        "display" : "PMS2"
      },
      {
        "code" : "POLE",
        "display" : "POLE"
      },
      {
        "code" : "PTEN",
        "display" : "PTEN"
      },
      {
        "code" : "RB1",
        "display" : "RB1"
      },
      {
        "code" : "RET",
        "display" : "RET"
      },
      {
        "code" : "SMARCA4",
        "display" : "SMARCA4"
      },
      {
        "code" : "TERT",
        "display" : "TERT"
      },
      {
        "code" : "TP53",
        "display" : "TP53"
      }]
    }]
  }
}

```
