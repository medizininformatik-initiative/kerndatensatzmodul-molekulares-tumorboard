# MII VS MTB Panel DHS-3501Z - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS MTB Panel DHS-3501Z**

## ValueSet: MII VS MTB Panel DHS-3501Z 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-dhs-3501z | *Version*:2027.0.0-ballot.1 |
| Active as of 2026-09-15 | *Computable Name*:MII_VS_MTB_Panel_Dhs3501z |

 
Genliste des Panels: Qiagen DHS-3501Z (275 Gene). Kodiert mit stabilen HGNC-IDs (System genenames.org/geneId), Displays = aktuelle HGNC-Symbole. 

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
  "id" : "mii-vs-mtb-panel-dhs-3501z",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-dhs-3501z",
  "version" : "2027.0.0-ballot.1",
  "name" : "MII_VS_MTB_Panel_Dhs3501z",
  "title" : "MII VS MTB Panel DHS-3501Z",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-15T16:20:22+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Genliste des Panels: Qiagen DHS-3501Z (275 Gene). Kodiert mit stabilen HGNC-IDs (System genenames.org/geneId), Displays = aktuelle HGNC-Symbole.",
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
        "code" : "HGNC:583",
        "display" : "APC"
      },
      {
        "code" : "HGNC:1748",
        "display" : "CDH1"
      },
      {
        "code" : "HGNC:2439",
        "display" : "CSF3R"
      },
      {
        "code" : "HGNC:2514",
        "display" : "CTNNB1"
      },
      {
        "code" : "HGNC:2731",
        "display" : "DDR2"
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
        "code" : "HGNC:4170",
        "display" : "GATA1"
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
        "code" : "HGNC:7765",
        "display" : "NF1"
      },
      {
        "code" : "HGNC:7773",
        "display" : "NF2"
      },
      {
        "code" : "HGNC:7881",
        "display" : "NOTCH1"
      },
      {
        "code" : "HGNC:8803",
        "display" : "PDGFRA"
      },
      {
        "code" : "HGNC:9588",
        "display" : "PTEN"
      },
      {
        "code" : "HGNC:9644",
        "display" : "PTPN11"
      },
      {
        "code" : "HGNC:9801",
        "display" : "RAC1"
      },
      {
        "code" : "HGNC:9967",
        "display" : "RET"
      },
      {
        "code" : "HGNC:667",
        "display" : "RHOA"
      },
      {
        "code" : "HGNC:11283",
        "display" : "SRC"
      },
      {
        "code" : "HGNC:12362",
        "display" : "TSC1"
      },
      {
        "code" : "HGNC:3689",
        "display" : "FGFR2"
      },
      {
        "code" : "HGNC:3767",
        "display" : "FLT4"
      },
      {
        "code" : "HGNC:4171",
        "display" : "GATA2"
      },
      {
        "code" : "HGNC:2001",
        "display" : "GREM1"
      },
      {
        "code" : "HGNC:5112",
        "display" : "HOXB13"
      },
      {
        "code" : "HGNC:8975",
        "display" : "PIK3CA"
      },
      {
        "code" : "HGNC:9065",
        "display" : "PLCG1"
      },
      {
        "code" : "HGNC:10471",
        "display" : "RUNX1"
      },
      {
        "code" : "HGNC:11896",
        "display" : "TNFAIP3"
      },
      {
        "code" : "HGNC:12687",
        "display" : "VHL"
      },
      {
        "code" : "HGNC:646",
        "display" : "ARAF"
      },
      {
        "code" : "HGNC:903",
        "display" : "AXIN1"
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
        "code" : "HGNC:1001",
        "display" : "BCL6"
      },
      {
        "code" : "HGNC:591",
        "display" : "BIRC3"
      },
      {
        "code" : "HGNC:1097",
        "display" : "BRAF"
      },
      {
        "code" : "HGNC:1541",
        "display" : "CBL"
      },
      {
        "code" : "HGNC:2509",
        "display" : "CTNNA1"
      },
      {
        "code" : "HGNC:2584",
        "display" : "CYLD"
      },
      {
        "code" : "HGNC:2681",
        "display" : "DAXX"
      },
      {
        "code" : "HGNC:11920",
        "display" : "FAS"
      },
      {
        "code" : "HGNC:3765",
        "display" : "FLT3"
      },
      {
        "code" : "HGNC:1092",
        "display" : "FOXL2"
      },
      {
        "code" : "HGNC:4893",
        "display" : "HGF"
      },
      {
        "code" : "HGNC:5173",
        "display" : "HRAS"
      },
      {
        "code" : "HGNC:5362",
        "display" : "ID3"
      },
      {
        "code" : "HGNC:6844",
        "display" : "MAP2K4"
      },
      {
        "code" : "HGNC:6943",
        "display" : "MCL1"
      },
      {
        "code" : "HGNC:6974",
        "display" : "MDM4"
      },
      {
        "code" : "HGNC:7559",
        "display" : "MYCN"
      },
      {
        "code" : "HGNC:7910",
        "display" : "NPM1"
      },
      {
        "code" : "HGNC:8986",
        "display" : "PIM1"
      },
      {
        "code" : "HGNC:9413",
        "display" : "PRKDC"
      },
      {
        "code" : "HGNC:9811",
        "display" : "RAD21"
      },
      {
        "code" : "HGNC:9816",
        "display" : "RAD50"
      },
      {
        "code" : "HGNC:9817",
        "display" : "RAD51"
      },
      {
        "code" : "HGNC:9829",
        "display" : "RAF1"
      },
      {
        "code" : "HGNC:9884",
        "display" : "RB1"
      },
      {
        "code" : "HGNC:11204",
        "display" : "SOX9"
      },
      {
        "code" : "HGNC:11389",
        "display" : "STK11"
      },
      {
        "code" : "HGNC:12033",
        "display" : "TRAF3"
      },
      {
        "code" : "HGNC:12796",
        "display" : "WT1"
      },
      {
        "code" : "HGNC:391",
        "display" : "AKT1"
      },
      {
        "code" : "HGNC:882",
        "display" : "ATR"
      },
      {
        "code" : "HGNC:1014",
        "display" : "BCR"
      },
      {
        "code" : "HGNC:1058",
        "display" : "BLM"
      },
      {
        "code" : "HGNC:1582",
        "display" : "CCND1"
      },
      {
        "code" : "HGNC:1585",
        "display" : "CCND3"
      },
      {
        "code" : "HGNC:1589",
        "display" : "CCNE1"
      },
      {
        "code" : "HGNC:16783",
        "display" : "CDC73"
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
        "code" : "HGNC:1925",
        "display" : "CHEK1"
      },
      {
        "code" : "HGNC:16627",
        "display" : "CHEK2"
      },
      {
        "code" : "HGNC:2348",
        "display" : "CREBBP"
      },
      {
        "code" : "HGNC:2557",
        "display" : "CUX1"
      },
      {
        "code" : "HGNC:16712",
        "display" : "FBXW7"
      },
      {
        "code" : "HGNC:6066",
        "display" : "INHBA"
      },
      {
        "code" : "HGNC:7230",
        "display" : "MRE11"
      },
      {
        "code" : "HGNC:7553",
        "display" : "MYC"
      },
      {
        "code" : "HGNC:10011",
        "display" : "RHEB"
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
        "code" : "HGNC:11111",
        "display" : "SMC1A"
      },
      {
        "code" : "HGNC:2468",
        "display" : "SMC3"
      },
      {
        "code" : "HGNC:11195",
        "display" : "SOX2"
      },
      {
        "code" : "HGNC:11355",
        "display" : "STAG2"
      },
      {
        "code" : "HGNC:11556",
        "display" : "TAL1"
      },
      {
        "code" : "HGNC:11633",
        "display" : "TCF3"
      },
      {
        "code" : "HGNC:11998",
        "display" : "TP53"
      },
      {
        "code" : "HGNC:12825",
        "display" : "XPO1"
      },
      {
        "code" : "HGNC:25829",
        "display" : "ABRAXAS1"
      },
      {
        "code" : "HGNC:795",
        "display" : "ATM"
      },
      {
        "code" : "HGNC:886",
        "display" : "ATRX"
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
        "code" : "HGNC:20473",
        "display" : "BRIP1"
      },
      {
        "code" : "HGNC:3373",
        "display" : "EP300"
      },
      {
        "code" : "HGNC:3511",
        "display" : "EXO1"
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
        "code" : "HGNC:3586",
        "display" : "FANCE"
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
        "code" : "HGNC:26881",
        "display" : "GEN1"
      },
      {
        "code" : "HGNC:6973",
        "display" : "MDM2"
      },
      {
        "code" : "HGNC:7010",
        "display" : "MEN1"
      },
      {
        "code" : "HGNC:7127",
        "display" : "MLH1"
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
        "code" : "HGNC:7527",
        "display" : "MUTYH"
      },
      {
        "code" : "HGNC:26144",
        "display" : "PALB2"
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
        "code" : "HGNC:9175",
        "display" : "POLD1"
      },
      {
        "code" : "HGNC:9177",
        "display" : "POLE"
      },
      {
        "code" : "HGNC:12829",
        "display" : "XRCC2"
      },
      {
        "code" : "HGNC:12830",
        "display" : "XRCC3"
      },
      {
        "code" : "HGNC:11110",
        "display" : "ARID1A"
      },
      {
        "code" : "HGNC:18040",
        "display" : "ARID1B"
      },
      {
        "code" : "HGNC:18037",
        "display" : "ARID2"
      },
      {
        "code" : "HGNC:18318",
        "display" : "ASXL1"
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
        "code" : "HGNC:20893",
        "display" : "BCOR"
      },
      {
        "code" : "HGNC:25657",
        "display" : "BCORL1"
      },
      {
        "code" : "HGNC:13723",
        "display" : "CTCF"
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
        "code" : "HGNC:24948",
        "display" : "DOT1L"
      },
      {
        "code" : "HGNC:3188",
        "display" : "EED"
      },
      {
        "code" : "HGNC:3527",
        "display" : "EZH2"
      },
      {
        "code" : "HGNC:4764",
        "display" : "H3-3A"
      },
      {
        "code" : "HGNC:4776",
        "display" : "H3C2"
      },
      {
        "code" : "HGNC:13176",
        "display" : "IKZF1"
      },
      {
        "code" : "HGNC:13013",
        "display" : "KAT6A"
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
        "code" : "HGNC:7132",
        "display" : "KMT2A"
      },
      {
        "code" : "HGNC:15840",
        "display" : "KMT2B"
      },
      {
        "code" : "HGNC:13726",
        "display" : "KMT2C"
      },
      {
        "code" : "HGNC:7133",
        "display" : "KMT2D"
      },
      {
        "code" : "HGNC:14234",
        "display" : "NSD1"
      },
      {
        "code" : "HGNC:12766",
        "display" : "NSD2"
      },
      {
        "code" : "HGNC:30064",
        "display" : "PBRM1"
      },
      {
        "code" : "HGNC:18145",
        "display" : "PHF6"
      },
      {
        "code" : "HGNC:9346",
        "display" : "PRDM1"
      },
      {
        "code" : "HGNC:15573",
        "display" : "SETBP1"
      },
      {
        "code" : "HGNC:18420",
        "display" : "SETD2"
      },
      {
        "code" : "HGNC:11254",
        "display" : "SPOP"
      },
      {
        "code" : "HGNC:17101",
        "display" : "SUZ12"
      },
      {
        "code" : "HGNC:25941",
        "display" : "TET2"
      },
      {
        "code" : "HGNC:1232",
        "display" : "EGLN1"
      },
      {
        "code" : "HGNC:3374",
        "display" : "EPAS1"
      },
      {
        "code" : "HGNC:6770",
        "display" : "SMAD4"
      },
      {
        "code" : "HGNC:427",
        "display" : "ALK"
      },
      {
        "code" : "HGNC:914",
        "display" : "B2M"
      },
      {
        "code" : "HGNC:1133",
        "display" : "BTK"
      },
      {
        "code" : "HGNC:16393",
        "display" : "CARD11"
      },
      {
        "code" : "HGNC:1542",
        "display" : "CBLB"
      },
      {
        "code" : "HGNC:17635",
        "display" : "CD274"
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
        "code" : "HGNC:14281",
        "display" : "CRLF2"
      },
      {
        "code" : "HGNC:2561",
        "display" : "CXCR4"
      },
      {
        "code" : "HGNC:13178",
        "display" : "IKZF3"
      },
      {
        "code" : "HGNC:6024",
        "display" : "IL7R"
      },
      {
        "code" : "HGNC:6119",
        "display" : "IRF4"
      },
      {
        "code" : "HGNC:6190",
        "display" : "JAK1"
      },
      {
        "code" : "HGNC:6193",
        "display" : "JAK3"
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
        "code" : "HGNC:6848",
        "display" : "MAP3K1"
      },
      {
        "code" : "HGNC:7562",
        "display" : "MYD88"
      },
      {
        "code" : "HGNC:7797",
        "display" : "NFKBIA"
      },
      {
        "code" : "HGNC:8619",
        "display" : "PAX5"
      },
      {
        "code" : "HGNC:8979",
        "display" : "PIK3R1"
      },
      {
        "code" : "HGNC:24712",
        "display" : "TENT5C"
      },
      {
        "code" : "HGNC:11912",
        "display" : "TNFRSF14"
      },
      {
        "code" : "HGNC:1833",
        "display" : "CEBPA"
      },
      {
        "code" : "HGNC:2433",
        "display" : "CSF1R"
      },
      {
        "code" : "HGNC:3700",
        "display" : "FH"
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
        "code" : "HGNC:3942",
        "display" : "MTOR"
      },
      {
        "code" : "HGNC:10681",
        "display" : "SDHB"
      },
      {
        "code" : "HGNC:644",
        "display" : "AR"
      },
      {
        "code" : "HGNC:3690",
        "display" : "FGFR3"
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
        "code" : "HGNC:6342",
        "display" : "KIT"
      },
      {
        "code" : "HGNC:6407",
        "display" : "KRAS"
      },
      {
        "code" : "HGNC:11957",
        "display" : "MED12"
      },
      {
        "code" : "HGNC:7029",
        "display" : "MET"
      },
      {
        "code" : "HGNC:7217",
        "display" : "MPL"
      },
      {
        "code" : "HGNC:7782",
        "display" : "NFE2L2"
      },
      {
        "code" : "HGNC:7989",
        "display" : "NRAS"
      },
      {
        "code" : "HGNC:9302",
        "display" : "PPP2R1A"
      },
      {
        "code" : "HGNC:10768",
        "display" : "SF3B1"
      },
      {
        "code" : "HGNC:11119",
        "display" : "SMO"
      },
      {
        "code" : "HGNC:10783",
        "display" : "SRSF2"
      },
      {
        "code" : "HGNC:12373",
        "display" : "TSHR"
      },
      {
        "code" : "HGNC:12453",
        "display" : "U2AF1"
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
        "code" : "HGNC:8980",
        "display" : "PIK3R2"
      },
      {
        "code" : "HGNC:3682",
        "display" : "FGF4"
      },
      {
        "code" : "HGNC:3684",
        "display" : "FGF6"
      },
      {
        "code" : "HGNC:3688",
        "display" : "FGFR1"
      },
      {
        "code" : "HGNC:3691",
        "display" : "FGFR4"
      },
      {
        "code" : "HGNC:9585",
        "display" : "PTCH1"
      },
      {
        "code" : "HGNC:16466",
        "display" : "SUFU"
      },
      {
        "code" : "HGNC:3467",
        "display" : "ESR1"
      },
      {
        "code" : "HGNC:19383",
        "display" : "SOCS1"
      },
      {
        "code" : "HGNC:11364",
        "display" : "STAT3"
      },
      {
        "code" : "HGNC:15961",
        "display" : "CBLC"
      },
      {
        "code" : "HGNC:6853",
        "display" : "MAP3K14"
      },
      {
        "code" : "HGNC:6871",
        "display" : "MAPK1"
      },
      {
        "code" : "HGNC:9277",
        "display" : "PPM1D"
      },
      {
        "code" : "HGNC:10023",
        "display" : "RIT1"
      },
      {
        "code" : "HGNC:7883",
        "display" : "NOTCH3"
      },
      {
        "code" : "HGNC:7882",
        "display" : "NOTCH2"
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
        "code" : "HGNC:5465",
        "display" : "IGF1R"
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
        "code" : "HGNC:8804",
        "display" : "PDGFRB"
      },
      {
        "code" : "HGNC:10261",
        "display" : "ROS1"
      },
      {
        "code" : "HGNC:11773",
        "display" : "TGFBR2"
      },
      {
        "code" : "HGNC:172",
        "display" : "ACVR1B"
      },
      {
        "code" : "HGNC:6768",
        "display" : "SMAD2"
      },
      {
        "code" : "HGNC:26837",
        "display" : "AMER1"
      },
      {
        "code" : "HGNC:904",
        "display" : "AXIN2"
      },
      {
        "code" : "HGNC:11621",
        "display" : "HNF1A"
      },
      {
        "code" : "HGNC:18505",
        "display" : "RNF43"
      },
      {
        "code" : "HGNC:12363",
        "display" : "TSC2"
      },
      {
        "code" : "HGNC:3387",
        "display" : "EPHA3"
      },
      {
        "code" : "HGNC:3389",
        "display" : "EPHA5"
      },
      {
        "code" : "HGNC:9388",
        "display" : "PRKAR1A"
      },
      {
        "code" : "HGNC:14214",
        "display" : "CIC"
      },
      {
        "code" : "HGNC:3446",
        "display" : "ERG"
      },
      {
        "code" : "HGNC:3495",
        "display" : "ETV6"
      },
      {
        "code" : "HGNC:4004",
        "display" : "FUBP1"
      },
      {
        "code" : "HGNC:4172",
        "display" : "GATA3"
      },
      {
        "code" : "HGNC:23177",
        "display" : "KEAP1"
      },
      {
        "code" : "HGNC:6995",
        "display" : "MEF2B"
      },
      {
        "code" : "HGNC:7105",
        "display" : "MITF"
      },
      {
        "code" : "HGNC:7555",
        "display" : "MYCL"
      },
      {
        "code" : "HGNC:11825",
        "display" : "NKX2-1"
      },
      {
        "code" : "HGNC:13009",
        "display" : "ZNF217"
      },
      {
        "code" : "HGNC:950",
        "display" : "BAP1"
      },
      {
        "code" : "HGNC:1455",
        "display" : "CALR"
      },
      {
        "code" : "HGNC:5253",
        "display" : "HSP90AA1"
      },
      {
        "code" : "HGNC:23156",
        "display" : "U2AF2"
      },
      {
        "code" : "HGNC:23019",
        "display" : "ZRSR2"
      },
      {
        "code" : "HGNC:2974",
        "display" : "DNM2"
      },
      {
        "code" : "HGNC:27310",
        "display" : "FLCN"
      },
      {
        "code" : "HGNC:19877",
        "display" : "GALNT12"
      },
      {
        "code" : "HGNC:4585",
        "display" : "GRIN2A"
      },
      {
        "code" : "HGNC:6693",
        "display" : "LRP1B"
      },
      {
        "code" : "HGNC:8592",
        "display" : "PAK3"
      },
      {
        "code" : "HGNC:9475",
        "display" : "PRSS1"
      },
      {
        "code" : "HGNC:11730",
        "display" : "TERT"
      }]
    }]
  }
}

```
