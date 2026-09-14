# MII VS MTB Panel TCM NGS - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS MTB Panel TCM NGS**

## ValueSet: MII VS MTB Panel TCM NGS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tcm-ngs | *Version*:2026.0.1 |
| Active Stand: 2026-09-14 | *Maschinenlesbarer Name*:MII_VS_MTB_Panel_TcmNgs |

 
Genliste des Panels: TCM NGS Panel (409 Gene). Kodiert mit stabilen HGNC-IDs (System genenames.org/geneId), Displays = aktuelle HGNC-Symbole. 

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
  "id" : "mii-vs-mtb-panel-tcm-ngs",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tcm-ngs",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Panel_TcmNgs",
  "title" : "MII VS MTB Panel TCM NGS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-14T13:42:50+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Genliste des Panels: TCM NGS Panel (409 Gene). Kodiert mit stabilen HGNC-IDs (System genenames.org/geneId), Displays = aktuelle HGNC-Symbole.",
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
        "code" : "HGNC:77",
        "display" : "ABL2"
      },
      {
        "code" : "HGNC:173",
        "display" : "ACVR2A"
      },
      {
        "code" : "HGNC:17178",
        "display" : "ADAMTS20"
      },
      {
        "code" : "HGNC:7135",
        "display" : "AFF1"
      },
      {
        "code" : "HGNC:6473",
        "display" : "AFF3"
      },
      {
        "code" : "HGNC:379",
        "display" : "AKAP9"
      },
      {
        "code" : "HGNC:391",
        "display" : "AKT1"
      },
      {
        "code" : "HGNC:392",
        "display" : "AKT2"
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
        "code" : "HGNC:583",
        "display" : "APC"
      },
      {
        "code" : "HGNC:644",
        "display" : "AR"
      },
      {
        "code" : "HGNC:11110",
        "display" : "ARID1A"
      },
      {
        "code" : "HGNC:18037",
        "display" : "ARID2"
      },
      {
        "code" : "HGNC:700",
        "display" : "ARNT"
      },
      {
        "code" : "HGNC:18318",
        "display" : "ASXL1"
      },
      {
        "code" : "HGNC:783",
        "display" : "ATF1"
      },
      {
        "code" : "HGNC:795",
        "display" : "ATM"
      },
      {
        "code" : "HGNC:882",
        "display" : "ATR"
      },
      {
        "code" : "HGNC:886",
        "display" : "ATRX"
      },
      {
        "code" : "HGNC:11393",
        "display" : "AURKA"
      },
      {
        "code" : "HGNC:11390",
        "display" : "AURKB"
      },
      {
        "code" : "HGNC:11391",
        "display" : "AURKC"
      },
      {
        "code" : "HGNC:905",
        "display" : "AXL"
      },
      {
        "code" : "HGNC:945",
        "display" : "ADGRB3"
      },
      {
        "code" : "HGNC:950",
        "display" : "BAP1"
      },
      {
        "code" : "HGNC:989",
        "display" : "BCL10"
      },
      {
        "code" : "HGNC:13221",
        "display" : "BCL11A"
      },
      {
        "code" : "HGNC:13222",
        "display" : "BCL11B"
      },
      {
        "code" : "HGNC:990",
        "display" : "BCL2"
      },
      {
        "code" : "HGNC:992",
        "display" : "BCL2L1"
      },
      {
        "code" : "HGNC:995",
        "display" : "BCL2L2"
      },
      {
        "code" : "HGNC:998",
        "display" : "BCL3"
      },
      {
        "code" : "HGNC:1001",
        "display" : "BCL6"
      },
      {
        "code" : "HGNC:1008",
        "display" : "BCL9"
      },
      {
        "code" : "HGNC:1014",
        "display" : "BCR"
      },
      {
        "code" : "HGNC:590",
        "display" : "BIRC2"
      },
      {
        "code" : "HGNC:591",
        "display" : "BIRC3"
      },
      {
        "code" : "HGNC:593",
        "display" : "BIRC5"
      },
      {
        "code" : "HGNC:1058",
        "display" : "BLM"
      },
      {
        "code" : "HGNC:14211",
        "display" : "BLNK"
      },
      {
        "code" : "HGNC:1076",
        "display" : "BMPR1A"
      },
      {
        "code" : "HGNC:1097",
        "display" : "BRAF"
      },
      {
        "code" : "HGNC:1104",
        "display" : "BRD3"
      },
      {
        "code" : "HGNC:20473",
        "display" : "BRIP1"
      },
      {
        "code" : "HGNC:1133",
        "display" : "BTK"
      },
      {
        "code" : "HGNC:1149",
        "display" : "BUB1B"
      },
      {
        "code" : "HGNC:16393",
        "display" : "CARD11"
      },
      {
        "code" : "HGNC:24054",
        "display" : "KNL1"
      },
      {
        "code" : "HGNC:1541",
        "display" : "CBL"
      },
      {
        "code" : "HGNC:1582",
        "display" : "CCND1"
      },
      {
        "code" : "HGNC:1583",
        "display" : "CCND2"
      },
      {
        "code" : "HGNC:1589",
        "display" : "CCNE1"
      },
      {
        "code" : "HGNC:1698",
        "display" : "CD79A"
      },
      {
        "code" : "HGNC:1699",
        "display" : "CD79B"
      },
      {
        "code" : "HGNC:16783",
        "display" : "CDC73"
      },
      {
        "code" : "HGNC:1748",
        "display" : "CDH1"
      },
      {
        "code" : "HGNC:1750",
        "display" : "CDH11"
      },
      {
        "code" : "HGNC:1759",
        "display" : "CDH2"
      },
      {
        "code" : "HGNC:1760",
        "display" : "CDH20"
      },
      {
        "code" : "HGNC:1764",
        "display" : "CDH5"
      },
      {
        "code" : "HGNC:24224",
        "display" : "CDK12"
      },
      {
        "code" : "HGNC:1773",
        "display" : "CDK4"
      },
      {
        "code" : "HGNC:1777",
        "display" : "CDK6"
      },
      {
        "code" : "HGNC:1779",
        "display" : "CDK8"
      },
      {
        "code" : "HGNC:1787",
        "display" : "CDKN2A"
      },
      {
        "code" : "HGNC:1788",
        "display" : "CDKN2B"
      },
      {
        "code" : "HGNC:1789",
        "display" : "CDKN2C"
      },
      {
        "code" : "HGNC:1833",
        "display" : "CEBPA"
      },
      {
        "code" : "HGNC:1925",
        "display" : "CHEK1"
      },
      {
        "code" : "HGNC:16627",
        "display" : "CHEK2"
      },
      {
        "code" : "HGNC:14214",
        "display" : "CIC"
      },
      {
        "code" : "HGNC:19083",
        "display" : "CKS1B"
      },
      {
        "code" : "HGNC:18170",
        "display" : "CMPK1"
      },
      {
        "code" : "HGNC:2197",
        "display" : "COL1A1"
      },
      {
        "code" : "HGNC:30185",
        "display" : "CRBN"
      },
      {
        "code" : "HGNC:2345",
        "display" : "CREB1"
      },
      {
        "code" : "HGNC:2348",
        "display" : "CREBBP"
      },
      {
        "code" : "HGNC:2363",
        "display" : "CRKL"
      },
      {
        "code" : "HGNC:16062",
        "display" : "CRTC1"
      },
      {
        "code" : "HGNC:2433",
        "display" : "CSF1R"
      },
      {
        "code" : "HGNC:19291",
        "display" : "CSMD3"
      },
      {
        "code" : "HGNC:2509",
        "display" : "CTNNA1"
      },
      {
        "code" : "HGNC:2514",
        "display" : "CTNNB1"
      },
      {
        "code" : "HGNC:2584",
        "display" : "CYLD"
      },
      {
        "code" : "HGNC:2621",
        "display" : "CYP2C19"
      },
      {
        "code" : "HGNC:2625",
        "display" : "CYP2D6"
      },
      {
        "code" : "HGNC:2681",
        "display" : "DAXX"
      },
      {
        "code" : "HGNC:2701",
        "display" : "DCC"
      },
      {
        "code" : "HGNC:2718",
        "display" : "DDB2"
      },
      {
        "code" : "HGNC:2726",
        "display" : "DDIT3"
      },
      {
        "code" : "HGNC:2731",
        "display" : "DDR2"
      },
      {
        "code" : "HGNC:2768",
        "display" : "DEK"
      },
      {
        "code" : "HGNC:17098",
        "display" : "DICER1"
      },
      {
        "code" : "HGNC:2978",
        "display" : "DNMT3A"
      },
      {
        "code" : "HGNC:3012",
        "display" : "DPYD"
      },
      {
        "code" : "HGNC:1090",
        "display" : "DST"
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
        "code" : "HGNC:3373",
        "display" : "EP300"
      },
      {
        "code" : "HGNC:11958",
        "display" : "EP400"
      },
      {
        "code" : "HGNC:3387",
        "display" : "EPHA3"
      },
      {
        "code" : "HGNC:3390",
        "display" : "EPHA7"
      },
      {
        "code" : "HGNC:3392",
        "display" : "EPHB1"
      },
      {
        "code" : "HGNC:3395",
        "display" : "EPHB4"
      },
      {
        "code" : "HGNC:3396",
        "display" : "EPHB6"
      },
      {
        "code" : "HGNC:3430",
        "display" : "ERBB2"
      },
      {
        "code" : "HGNC:3431",
        "display" : "ERBB3"
      },
      {
        "code" : "HGNC:3432",
        "display" : "ERBB4"
      },
      {
        "code" : "HGNC:3433",
        "display" : "ERCC1"
      },
      {
        "code" : "HGNC:3434",
        "display" : "ERCC2"
      },
      {
        "code" : "HGNC:3435",
        "display" : "ERCC3"
      },
      {
        "code" : "HGNC:3436",
        "display" : "ERCC4"
      },
      {
        "code" : "HGNC:3437",
        "display" : "ERCC5"
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
        "code" : "HGNC:3512",
        "display" : "EXT1"
      },
      {
        "code" : "HGNC:3513",
        "display" : "EXT2"
      },
      {
        "code" : "HGNC:3527",
        "display" : "EZH2"
      },
      {
        "code" : "HGNC:26837",
        "display" : "AMER1"
      },
      {
        "code" : "HGNC:3582",
        "display" : "FANCA"
      },
      {
        "code" : "HGNC:3584",
        "display" : "FANCC"
      },
      {
        "code" : "HGNC:3585",
        "display" : "FANCD2"
      },
      {
        "code" : "HGNC:3587",
        "display" : "FANCF"
      },
      {
        "code" : "HGNC:3588",
        "display" : "FANCG"
      },
      {
        "code" : "HGNC:11920",
        "display" : "FAS"
      },
      {
        "code" : "HGNC:16712",
        "display" : "FBXW7"
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
        "code" : "HGNC:3700",
        "display" : "FH"
      },
      {
        "code" : "HGNC:27310",
        "display" : "FLCN"
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
        "code" : "HGNC:3767",
        "display" : "FLT4"
      },
      {
        "code" : "HGNC:3778",
        "display" : "FN1"
      },
      {
        "code" : "HGNC:1092",
        "display" : "FOXL2"
      },
      {
        "code" : "HGNC:3819",
        "display" : "FOXO1"
      },
      {
        "code" : "HGNC:3821",
        "display" : "FOXO3"
      },
      {
        "code" : "HGNC:3823",
        "display" : "FOXP1"
      },
      {
        "code" : "HGNC:20842",
        "display" : "FOXP4"
      },
      {
        "code" : "HGNC:24824",
        "display" : "FZR1"
      },
      {
        "code" : "HGNC:4057",
        "display" : "G6PD"
      },
      {
        "code" : "HGNC:4170",
        "display" : "GATA1"
      },
      {
        "code" : "HGNC:4171",
        "display" : "GATA2"
      },
      {
        "code" : "HGNC:4172",
        "display" : "GATA3"
      },
      {
        "code" : "HGNC:4232",
        "display" : "GDNF"
      },
      {
        "code" : "HGNC:4379",
        "display" : "GNA11"
      },
      {
        "code" : "HGNC:4390",
        "display" : "GNAQ"
      },
      {
        "code" : "HGNC:4392",
        "display" : "GNAS"
      },
      {
        "code" : "HGNC:17849",
        "display" : "ADGRA2"
      },
      {
        "code" : "HGNC:4600",
        "display" : "GRM8"
      },
      {
        "code" : "HGNC:4684",
        "display" : "GUCY1A2"
      },
      {
        "code" : "HGNC:4532",
        "display" : "HCAR1"
      },
      {
        "code" : "HGNC:4910",
        "display" : "HIF1A"
      },
      {
        "code" : "HGNC:4977",
        "display" : "HLF"
      },
      {
        "code" : "HGNC:11621",
        "display" : "HNF1A"
      },
      {
        "code" : "HGNC:23576",
        "display" : "HOOK3"
      },
      {
        "code" : "HGNC:5173",
        "display" : "HRAS"
      },
      {
        "code" : "HGNC:5253",
        "display" : "HSP90AA1"
      },
      {
        "code" : "HGNC:5258",
        "display" : "HSP90AB1"
      },
      {
        "code" : "HGNC:21219",
        "display" : "CILK1"
      },
      {
        "code" : "HGNC:5382",
        "display" : "IDH1"
      },
      {
        "code" : "HGNC:5383",
        "display" : "IDH2"
      },
      {
        "code" : "HGNC:5465",
        "display" : "IGF1R"
      },
      {
        "code" : "HGNC:5466",
        "display" : "IGF2"
      },
      {
        "code" : "HGNC:5467",
        "display" : "IGF2R"
      },
      {
        "code" : "HGNC:5960",
        "display" : "IKBKB"
      },
      {
        "code" : "HGNC:14552",
        "display" : "IKBKE"
      },
      {
        "code" : "HGNC:13176",
        "display" : "IKZF1"
      },
      {
        "code" : "HGNC:6001",
        "display" : "IL2"
      },
      {
        "code" : "HGNC:6006",
        "display" : "IL21R"
      },
      {
        "code" : "HGNC:6021",
        "display" : "IL6ST"
      },
      {
        "code" : "HGNC:6024",
        "display" : "IL7R"
      },
      {
        "code" : "HGNC:19423",
        "display" : "ING4"
      },
      {
        "code" : "HGNC:6119",
        "display" : "IRF4"
      },
      {
        "code" : "HGNC:6126",
        "display" : "IRS2"
      },
      {
        "code" : "HGNC:6135",
        "display" : "ITGA10"
      },
      {
        "code" : "HGNC:6145",
        "display" : "ITGA9"
      },
      {
        "code" : "HGNC:6155",
        "display" : "ITGB2"
      },
      {
        "code" : "HGNC:6156",
        "display" : "ITGB3"
      },
      {
        "code" : "HGNC:6190",
        "display" : "JAK1"
      },
      {
        "code" : "HGNC:6192",
        "display" : "JAK2"
      },
      {
        "code" : "HGNC:6193",
        "display" : "JAK3"
      },
      {
        "code" : "HGNC:6204",
        "display" : "JUN"
      },
      {
        "code" : "HGNC:13013",
        "display" : "KAT6A"
      },
      {
        "code" : "HGNC:17582",
        "display" : "KAT6B"
      },
      {
        "code" : "HGNC:11114",
        "display" : "KDM5C"
      },
      {
        "code" : "HGNC:12637",
        "display" : "KDM6A"
      },
      {
        "code" : "HGNC:6307",
        "display" : "KDR"
      },
      {
        "code" : "HGNC:23177",
        "display" : "KEAP1"
      },
      {
        "code" : "HGNC:6342",
        "display" : "KIT"
      },
      {
        "code" : "HGNC:2235",
        "display" : "KLF6"
      },
      {
        "code" : "HGNC:6407",
        "display" : "KRAS"
      },
      {
        "code" : "HGNC:6499",
        "display" : "LAMP1"
      },
      {
        "code" : "HGNC:6524",
        "display" : "LCK"
      },
      {
        "code" : "HGNC:6597",
        "display" : "LIFR"
      },
      {
        "code" : "HGNC:20974",
        "display" : "ADGRL3"
      },
      {
        "code" : "HGNC:17284",
        "display" : "POT1"
      },
      {
        "code" : "HGNC:6679",
        "display" : "LPP"
      },
      {
        "code" : "HGNC:6693",
        "display" : "LRP1B"
      },
      {
        "code" : "HGNC:6720",
        "display" : "LTF"
      },
      {
        "code" : "HGNC:6721",
        "display" : "LTK"
      },
      {
        "code" : "HGNC:6776",
        "display" : "MAF"
      },
      {
        "code" : "HGNC:6408",
        "display" : "MAFB"
      },
      {
        "code" : "HGNC:6796",
        "display" : "MAGEA1"
      },
      {
        "code" : "HGNC:946",
        "display" : "MAGI1"
      },
      {
        "code" : "HGNC:6819",
        "display" : "MALT1"
      },
      {
        "code" : "HGNC:16259",
        "display" : "MAML2"
      },
      {
        "code" : "HGNC:6840",
        "display" : "MAP2K1"
      },
      {
        "code" : "HGNC:6842",
        "display" : "MAP2K2"
      },
      {
        "code" : "HGNC:6844",
        "display" : "MAP2K4"
      },
      {
        "code" : "HGNC:6859",
        "display" : "MAP3K7"
      },
      {
        "code" : "HGNC:6871",
        "display" : "MAPK1"
      },
      {
        "code" : "HGNC:6881",
        "display" : "MAPK8"
      },
      {
        "code" : "HGNC:6896",
        "display" : "MARK1"
      },
      {
        "code" : "HGNC:13538",
        "display" : "MARK4"
      },
      {
        "code" : "HGNC:6916",
        "display" : "MBD1"
      },
      {
        "code" : "HGNC:6943",
        "display" : "MCL1"
      },
      {
        "code" : "HGNC:6973",
        "display" : "MDM2"
      },
      {
        "code" : "HGNC:6974",
        "display" : "MDM4"
      },
      {
        "code" : "HGNC:7010",
        "display" : "MEN1"
      },
      {
        "code" : "HGNC:7029",
        "display" : "MET"
      },
      {
        "code" : "HGNC:7105",
        "display" : "MITF"
      },
      {
        "code" : "HGNC:7127",
        "display" : "MLH1"
      },
      {
        "code" : "HGNC:7132",
        "display" : "KMT2A"
      },
      {
        "code" : "HGNC:7133",
        "display" : "KMT2D"
      },
      {
        "code" : "HGNC:13726",
        "display" : "KMT2C"
      },
      {
        "code" : "HGNC:16063",
        "display" : "MLLT10"
      },
      {
        "code" : "HGNC:7166",
        "display" : "MMP2"
      },
      {
        "code" : "HGNC:7180",
        "display" : "MN1"
      },
      {
        "code" : "HGNC:7217",
        "display" : "MPL"
      },
      {
        "code" : "HGNC:7230",
        "display" : "MRE11"
      },
      {
        "code" : "HGNC:7325",
        "display" : "MSH2"
      },
      {
        "code" : "HGNC:7329",
        "display" : "MSH6"
      },
      {
        "code" : "HGNC:3942",
        "display" : "MTOR"
      },
      {
        "code" : "HGNC:7468",
        "display" : "MTR"
      },
      {
        "code" : "HGNC:7473",
        "display" : "MTRR"
      },
      {
        "code" : "HGNC:7508",
        "display" : "MUC1"
      },
      {
        "code" : "HGNC:7527",
        "display" : "MUTYH"
      },
      {
        "code" : "HGNC:7545",
        "display" : "MYB"
      },
      {
        "code" : "HGNC:7553",
        "display" : "MYC"
      },
      {
        "code" : "HGNC:7555",
        "display" : "MYCL"
      },
      {
        "code" : "HGNC:7559",
        "display" : "MYCN"
      },
      {
        "code" : "HGNC:7562",
        "display" : "MYD88"
      },
      {
        "code" : "HGNC:7569",
        "display" : "MYH11"
      },
      {
        "code" : "HGNC:7579",
        "display" : "MYH9"
      },
      {
        "code" : "HGNC:7652",
        "display" : "NBN"
      },
      {
        "code" : "HGNC:7668",
        "display" : "NCOA1"
      },
      {
        "code" : "HGNC:7669",
        "display" : "NCOA2"
      },
      {
        "code" : "HGNC:7671",
        "display" : "NCOA4"
      },
      {
        "code" : "HGNC:7765",
        "display" : "NF1"
      },
      {
        "code" : "HGNC:7773",
        "display" : "NF2"
      },
      {
        "code" : "HGNC:7782",
        "display" : "NFE2L2"
      },
      {
        "code" : "HGNC:7794",
        "display" : "NFKB1"
      },
      {
        "code" : "HGNC:7795",
        "display" : "NFKB2"
      },
      {
        "code" : "HGNC:14906",
        "display" : "NIN"
      },
      {
        "code" : "HGNC:11825",
        "display" : "NKX2-1"
      },
      {
        "code" : "HGNC:14374",
        "display" : "NLRP1"
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
        "code" : "HGNC:7884",
        "display" : "NOTCH4"
      },
      {
        "code" : "HGNC:7910",
        "display" : "NPM1"
      },
      {
        "code" : "HGNC:7989",
        "display" : "NRAS"
      },
      {
        "code" : "HGNC:14234",
        "display" : "NSD1"
      },
      {
        "code" : "HGNC:8031",
        "display" : "NTRK1"
      },
      {
        "code" : "HGNC:8033",
        "display" : "NTRK3"
      },
      {
        "code" : "HGNC:8059",
        "display" : "NUMA1"
      },
      {
        "code" : "HGNC:8064",
        "display" : "NUP214"
      },
      {
        "code" : "HGNC:8068",
        "display" : "NUP98"
      },
      {
        "code" : "HGNC:8592",
        "display" : "PAK3"
      },
      {
        "code" : "HGNC:26144",
        "display" : "PALB2"
      },
      {
        "code" : "HGNC:270",
        "display" : "PARP1"
      },
      {
        "code" : "HGNC:8617",
        "display" : "PAX3"
      },
      {
        "code" : "HGNC:8619",
        "display" : "PAX5"
      },
      {
        "code" : "HGNC:8621",
        "display" : "PAX7"
      },
      {
        "code" : "HGNC:8622",
        "display" : "PAX8"
      },
      {
        "code" : "HGNC:30064",
        "display" : "PBRM1"
      },
      {
        "code" : "HGNC:8632",
        "display" : "PBX1"
      },
      {
        "code" : "HGNC:15580",
        "display" : "PDE4DIP"
      },
      {
        "code" : "HGNC:8800",
        "display" : "PDGFB"
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
        "code" : "HGNC:8845",
        "display" : "PER1"
      },
      {
        "code" : "HGNC:23719",
        "display" : "PGAP3"
      },
      {
        "code" : "HGNC:9143",
        "display" : "PHOX2B"
      },
      {
        "code" : "HGNC:8972",
        "display" : "PIK3C2B"
      },
      {
        "code" : "HGNC:8975",
        "display" : "PIK3CA"
      },
      {
        "code" : "HGNC:8976",
        "display" : "PIK3CB"
      },
      {
        "code" : "HGNC:8977",
        "display" : "PIK3CD"
      },
      {
        "code" : "HGNC:8978",
        "display" : "PIK3CG"
      },
      {
        "code" : "HGNC:8979",
        "display" : "PIK3R1"
      },
      {
        "code" : "HGNC:8980",
        "display" : "PIK3R2"
      },
      {
        "code" : "HGNC:8986",
        "display" : "PIM1"
      },
      {
        "code" : "HGNC:9016",
        "display" : "PKHD1"
      },
      {
        "code" : "HGNC:9045",
        "display" : "PLAG1"
      },
      {
        "code" : "HGNC:9065",
        "display" : "PLCG1"
      },
      {
        "code" : "HGNC:29105",
        "display" : "PLEKHG5"
      },
      {
        "code" : "HGNC:9113",
        "display" : "PML"
      },
      {
        "code" : "HGNC:9121",
        "display" : "PMS1"
      },
      {
        "code" : "HGNC:9122",
        "display" : "PMS2"
      },
      {
        "code" : "HGNC:9221",
        "display" : "POU5F1"
      },
      {
        "code" : "HGNC:9236",
        "display" : "PPARG"
      },
      {
        "code" : "HGNC:9302",
        "display" : "PPP2R1A"
      },
      {
        "code" : "HGNC:9346",
        "display" : "PRDM1"
      },
      {
        "code" : "HGNC:9388",
        "display" : "PRKAR1A"
      },
      {
        "code" : "HGNC:9413",
        "display" : "PRKDC"
      },
      {
        "code" : "HGNC:9527",
        "display" : "PSIP1"
      },
      {
        "code" : "HGNC:9585",
        "display" : "PTCH1"
      },
      {
        "code" : "HGNC:9588",
        "display" : "PTEN"
      },
      {
        "code" : "HGNC:9605",
        "display" : "PTGS2"
      },
      {
        "code" : "HGNC:9644",
        "display" : "PTPN11"
      },
      {
        "code" : "HGNC:9668",
        "display" : "PTPRD"
      },
      {
        "code" : "HGNC:9682",
        "display" : "PTPRT"
      },
      {
        "code" : "HGNC:9816",
        "display" : "RAD50"
      },
      {
        "code" : "HGNC:9829",
        "display" : "RAF1"
      },
      {
        "code" : "HGNC:9842",
        "display" : "RALGDS"
      },
      {
        "code" : "HGNC:9864",
        "display" : "RARA"
      },
      {
        "code" : "HGNC:9884",
        "display" : "RB1"
      },
      {
        "code" : "HGNC:9949",
        "display" : "RECQL4"
      },
      {
        "code" : "HGNC:9954",
        "display" : "REL"
      },
      {
        "code" : "HGNC:9967",
        "display" : "RET"
      },
      {
        "code" : "HGNC:686",
        "display" : "RHOH"
      },
      {
        "code" : "HGNC:10050",
        "display" : "RNASEL"
      },
      {
        "code" : "HGNC:10061",
        "display" : "RNF2"
      },
      {
        "code" : "HGNC:14539",
        "display" : "RNF213"
      },
      {
        "code" : "HGNC:10261",
        "display" : "ROS1"
      },
      {
        "code" : "HGNC:10431",
        "display" : "RPS6KA2"
      },
      {
        "code" : "HGNC:10451",
        "display" : "RRM1"
      },
      {
        "code" : "HGNC:10471",
        "display" : "RUNX1"
      },
      {
        "code" : "HGNC:1535",
        "display" : "RUNX1T1"
      },
      {
        "code" : "HGNC:1348",
        "display" : "SAMD9"
      },
      {
        "code" : "HGNC:19440",
        "display" : "SBDS"
      },
      {
        "code" : "HGNC:10680",
        "display" : "SDHA"
      },
      {
        "code" : "HGNC:10681",
        "display" : "SDHB"
      },
      {
        "code" : "HGNC:10682",
        "display" : "SDHC"
      },
      {
        "code" : "HGNC:10683",
        "display" : "SDHD"
      },
      {
        "code" : "HGNC:7323",
        "display" : "SEPTIN9"
      },
      {
        "code" : "HGNC:18420",
        "display" : "SETD2"
      },
      {
        "code" : "HGNC:10768",
        "display" : "SF3B1"
      },
      {
        "code" : "HGNC:10810",
        "display" : "SGK1"
      },
      {
        "code" : "HGNC:10820",
        "display" : "SH2D1A"
      },
      {
        "code" : "HGNC:6768",
        "display" : "SMAD2"
      },
      {
        "code" : "HGNC:6770",
        "display" : "SMAD4"
      },
      {
        "code" : "HGNC:11100",
        "display" : "SMARCA4"
      },
      {
        "code" : "HGNC:11103",
        "display" : "SMARCB1"
      },
      {
        "code" : "HGNC:11119",
        "display" : "SMO"
      },
      {
        "code" : "HGNC:17148",
        "display" : "SMUG1"
      },
      {
        "code" : "HGNC:19383",
        "display" : "SOCS1"
      },
      {
        "code" : "HGNC:11191",
        "display" : "SOX11"
      },
      {
        "code" : "HGNC:11195",
        "display" : "SOX2"
      },
      {
        "code" : "HGNC:11283",
        "display" : "SRC"
      },
      {
        "code" : "HGNC:11335",
        "display" : "SSX1"
      },
      {
        "code" : "HGNC:11389",
        "display" : "STK11"
      },
      {
        "code" : "HGNC:17209",
        "display" : "STK36"
      },
      {
        "code" : "HGNC:16466",
        "display" : "SUFU"
      },
      {
        "code" : "HGNC:11491",
        "display" : "SYK"
      },
      {
        "code" : "HGNC:17089",
        "display" : "SYNE1"
      },
      {
        "code" : "HGNC:11535",
        "display" : "TAF1"
      },
      {
        "code" : "HGNC:18056",
        "display" : "TAF1L"
      },
      {
        "code" : "HGNC:11556",
        "display" : "TAL1"
      },
      {
        "code" : "HGNC:11600",
        "display" : "TBX22"
      },
      {
        "code" : "HGNC:11623",
        "display" : "TCF12"
      },
      {
        "code" : "HGNC:11633",
        "display" : "TCF3"
      },
      {
        "code" : "HGNC:11640",
        "display" : "TCF7L1"
      },
      {
        "code" : "HGNC:11641",
        "display" : "TCF7L2"
      },
      {
        "code" : "HGNC:11648",
        "display" : "TCL1A"
      },
      {
        "code" : "HGNC:29484",
        "display" : "TET1"
      },
      {
        "code" : "HGNC:25941",
        "display" : "TET2"
      },
      {
        "code" : "HGNC:11752",
        "display" : "TFE3"
      },
      {
        "code" : "HGNC:11773",
        "display" : "TGFBR2"
      },
      {
        "code" : "HGNC:30790",
        "display" : "TGM7"
      },
      {
        "code" : "HGNC:11785",
        "display" : "THBS1"
      },
      {
        "code" : "HGNC:11822",
        "display" : "TIMP3"
      },
      {
        "code" : "HGNC:11850",
        "display" : "TLR4"
      },
      {
        "code" : "HGNC:5056",
        "display" : "TLX1"
      },
      {
        "code" : "HGNC:11896",
        "display" : "TNFAIP3"
      },
      {
        "code" : "HGNC:11912",
        "display" : "TNFRSF14"
      },
      {
        "code" : "HGNC:19297",
        "display" : "TNK2"
      },
      {
        "code" : "HGNC:11986",
        "display" : "TOP1"
      },
      {
        "code" : "HGNC:11998",
        "display" : "TP53"
      },
      {
        "code" : "HGNC:12017",
        "display" : "TPR"
      },
      {
        "code" : "HGNC:11812",
        "display" : "TRIM24"
      },
      {
        "code" : "HGNC:16290",
        "display" : "TRIM33"
      },
      {
        "code" : "HGNC:12305",
        "display" : "TRIP11"
      },
      {
        "code" : "HGNC:12347",
        "display" : "TRRAP"
      },
      {
        "code" : "HGNC:12362",
        "display" : "TSC1"
      },
      {
        "code" : "HGNC:12363",
        "display" : "TSC2"
      },
      {
        "code" : "HGNC:12373",
        "display" : "TSHR"
      },
      {
        "code" : "HGNC:16806",
        "display" : "UBR5"
      },
      {
        "code" : "HGNC:12530",
        "display" : "UGT1A1"
      },
      {
        "code" : "HGNC:12632",
        "display" : "USP9X"
      },
      {
        "code" : "HGNC:12687",
        "display" : "VHL"
      },
      {
        "code" : "HGNC:12731",
        "display" : "WAS"
      },
      {
        "code" : "HGNC:12766",
        "display" : "NSD2"
      },
      {
        "code" : "HGNC:12791",
        "display" : "WRN"
      },
      {
        "code" : "HGNC:12796",
        "display" : "WT1"
      },
      {
        "code" : "HGNC:12814",
        "display" : "XPA"
      },
      {
        "code" : "HGNC:12816",
        "display" : "XPC"
      },
      {
        "code" : "HGNC:12825",
        "display" : "XPO1"
      },
      {
        "code" : "HGNC:12829",
        "display" : "XRCC2"
      },
      {
        "code" : "HGNC:11955",
        "display" : "ZNF384"
      },
      {
        "code" : "HGNC:24605",
        "display" : "ZNF521"
      }]
    }]
  }
}

```
