# MII VS MTB Panel TSO 500 Fusions - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS MTB Panel TSO 500 Fusions**

## ValueSet: MII VS MTB Panel TSO 500 Fusions 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tso-500-fusion | *Version*:2026.0.1 |
| Active Stand: 2026-09-14 | *Maschinenlesbarer Name*:MII_VS_MTB_Panel_Tso500Fusion |

 
Genliste des Panels: TruSight Oncology 500 — Fusions-Genliste (55 Gene). Kodiert mit stabilen HGNC-IDs (System genenames.org/geneId), Displays = aktuelle HGNC-Symbole. 

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
  "id" : "mii-vs-mtb-panel-tso-500-fusion",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tso-500-fusion",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Panel_Tso500Fusion",
  "title" : "MII VS MTB Panel TSO 500 Fusions",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-14T21:08:50+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Genliste des Panels: TruSight Oncology 500 — Fusions-Genliste (55 Gene). Kodiert mit stabilen HGNC-IDs (System genenames.org/geneId), Displays = aktuelle HGNC-Symbole.",
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
        "code" : "HGNC:76",
        "display" : "ABL1"
      },
      {
        "code" : "HGNC:393",
        "display" : "AKT3"
      },
      {
        "code" : "HGNC:427",
        "display" : "ALK"
      },
      {
        "code" : "HGNC:644",
        "display" : "AR"
      },
      {
        "code" : "HGNC:905",
        "display" : "AXL"
      },
      {
        "code" : "HGNC:990",
        "display" : "BCL2"
      },
      {
        "code" : "HGNC:1097",
        "display" : "BRAF"
      },
      {
        "code" : "HGNC:1100",
        "display" : "BRCA1"
      },
      {
        "code" : "HGNC:1101",
        "display" : "BRCA2"
      },
      {
        "code" : "HGNC:1773",
        "display" : "CDK4"
      },
      {
        "code" : "HGNC:2433",
        "display" : "CSF1R"
      },
      {
        "code" : "HGNC:3236",
        "display" : "EGFR"
      },
      {
        "code" : "HGNC:1316",
        "display" : "EML4"
      },
      {
        "code" : "HGNC:3430",
        "display" : "ERBB2"
      },
      {
        "code" : "HGNC:3446",
        "display" : "ERG"
      },
      {
        "code" : "HGNC:3467",
        "display" : "ESR1"
      },
      {
        "code" : "HGNC:3488",
        "display" : "ETS1"
      },
      {
        "code" : "HGNC:3490",
        "display" : "ETV1"
      },
      {
        "code" : "HGNC:3493",
        "display" : "ETV4"
      },
      {
        "code" : "HGNC:3494",
        "display" : "ETV5"
      },
      {
        "code" : "HGNC:3508",
        "display" : "EWSR1"
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
        "code" : "HGNC:3691",
        "display" : "FGFR4"
      },
      {
        "code" : "HGNC:3749",
        "display" : "FLI1"
      },
      {
        "code" : "HGNC:3763",
        "display" : "FLT1"
      },
      {
        "code" : "HGNC:3765",
        "display" : "FLT3"
      },
      {
        "code" : "HGNC:6192",
        "display" : "JAK2"
      },
      {
        "code" : "HGNC:6307",
        "display" : "KDR"
      },
      {
        "code" : "HGNC:6324",
        "display" : "KIF5B"
      },
      {
        "code" : "HGNC:6342",
        "display" : "KIT"
      },
      {
        "code" : "HGNC:7029",
        "display" : "MET"
      },
      {
        "code" : "HGNC:7132",
        "display" : "KMT2A"
      },
      {
        "code" : "HGNC:7136",
        "display" : "MLLT3"
      },
      {
        "code" : "HGNC:7325",
        "display" : "MSH2"
      },
      {
        "code" : "HGNC:7553",
        "display" : "MYC"
      },
      {
        "code" : "HGNC:7881",
        "display" : "NOTCH1"
      },
      {
        "code" : "HGNC:7882",
        "display" : "NOTCH2"
      },
      {
        "code" : "HGNC:7883",
        "display" : "NOTCH3"
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
        "code" : "HGNC:8617",
        "display" : "PAX3"
      },
      {
        "code" : "HGNC:8621",
        "display" : "PAX7"
      },
      {
        "code" : "HGNC:8803",
        "display" : "PDGFRA"
      },
      {
        "code" : "HGNC:8804",
        "display" : "PDGFRB"
      },
      {
        "code" : "HGNC:8975",
        "display" : "PIK3CA"
      },
      {
        "code" : "HGNC:9236",
        "display" : "PPARG"
      },
      {
        "code" : "HGNC:9829",
        "display" : "RAF1"
      },
      {
        "code" : "HGNC:9967",
        "display" : "RET"
      },
      {
        "code" : "HGNC:10261",
        "display" : "ROS1"
      },
      {
        "code" : "HGNC:10436",
        "display" : "RPS6KB1"
      },
      {
        "code" : "HGNC:11876",
        "display" : "TMPRSS2"
      }]
    }]
  }
}

```
