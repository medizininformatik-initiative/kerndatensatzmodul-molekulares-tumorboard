# MII VS MTB Panel CGP - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS MTB Panel CGP**

## ValueSet: MII VS MTB Panel CGP 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-cgp | *Version*:2027.0.0-ballot.1 |
| Active as of 2026-09-15 | *Computable Name*:MII_VS_MTB_Panel_Cgp |

 
Genliste des Panels: SureSelect Cancer CGP Assay (602 Gene). Kodiert mit stabilen HGNC-IDs (System genenames.org/geneId), Displays = aktuelle HGNC-Symbole. 

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
  "id" : "mii-vs-mtb-panel-cgp",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-cgp",
  "version" : "2027.0.0-ballot.1",
  "name" : "MII_VS_MTB_Panel_Cgp",
  "title" : "MII VS MTB Panel CGP",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-15T13:47:30+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Genliste des Panels: SureSelect Cancer CGP Assay (602 Gene). Kodiert mit stabilen HGNC-IDs (System genenames.org/geneId), Displays = aktuelle HGNC-Symbole.",
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
        "code" : "HGNC:25829",
        "display" : "ABRAXAS1"
      },
      {
        "code" : "HGNC:171",
        "display" : "ACVR1"
      },
      {
        "code" : "HGNC:172",
        "display" : "ACVR1B"
      },
      {
        "code" : "HGNC:173",
        "display" : "ACVR2A"
      },
      {
        "code" : "HGNC:17849",
        "display" : "ADGRA2"
      },
      {
        "code" : "HGNC:20250",
        "display" : "AJUBA"
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
        "code" : "HGNC:430",
        "display" : "ALOX12B"
      },
      {
        "code" : "HGNC:26837",
        "display" : "AMER1"
      },
      {
        "code" : "HGNC:21316",
        "display" : "ANKRD11"
      },
      {
        "code" : "HGNC:29186",
        "display" : "ANKRD26"
      },
      {
        "code" : "HGNC:583",
        "display" : "APC"
      },
      {
        "code" : "HGNC:339",
        "display" : "APLNR"
      },
      {
        "code" : "HGNC:644",
        "display" : "AR"
      },
      {
        "code" : "HGNC:646",
        "display" : "ARAF"
      },
      {
        "code" : "HGNC:662",
        "display" : "ARFRP1"
      },
      {
        "code" : "HGNC:17073",
        "display" : "ARHGAP26"
      },
      {
        "code" : "HGNC:4591",
        "display" : "ARHGAP35"
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
        "code" : "HGNC:17362",
        "display" : "ARID5B"
      },
      {
        "code" : "HGNC:18318",
        "display" : "ASXL1"
      },
      {
        "code" : "HGNC:23805",
        "display" : "ASXL2"
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
        "code" : "HGNC:903",
        "display" : "AXIN1"
      },
      {
        "code" : "HGNC:904",
        "display" : "AXIN2"
      },
      {
        "code" : "HGNC:905",
        "display" : "AXL"
      },
      {
        "code" : "HGNC:914",
        "display" : "B2M"
      },
      {
        "code" : "HGNC:950",
        "display" : "BAP1"
      },
      {
        "code" : "HGNC:952",
        "display" : "BARD1"
      },
      {
        "code" : "HGNC:17868",
        "display" : "BBC3"
      },
      {
        "code" : "HGNC:989",
        "display" : "BCL10"
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
        "code" : "HGNC:994",
        "display" : "BCL2L11"
      },
      {
        "code" : "HGNC:995",
        "display" : "BCL2L2"
      },
      {
        "code" : "HGNC:1001",
        "display" : "BCL6"
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
        "code" : "HGNC:1014",
        "display" : "BCR"
      },
      {
        "code" : "HGNC:591",
        "display" : "BIRC3"
      },
      {
        "code" : "HGNC:1058",
        "display" : "BLM"
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
        "code" : "HGNC:1100",
        "display" : "BRCA1"
      },
      {
        "code" : "HGNC:1101",
        "display" : "BRCA2"
      },
      {
        "code" : "HGNC:13575",
        "display" : "BRD4"
      },
      {
        "code" : "HGNC:20473",
        "display" : "BRIP1"
      },
      {
        "code" : "HGNC:1130",
        "display" : "BTG1"
      },
      {
        "code" : "HGNC:1131",
        "display" : "BTG2"
      },
      {
        "code" : "HGNC:1133",
        "display" : "BTK"
      },
      {
        "code" : "HGNC:1455",
        "display" : "CALR"
      },
      {
        "code" : "HGNC:16393",
        "display" : "CARD11"
      },
      {
        "code" : "HGNC:1509",
        "display" : "CASP8"
      },
      {
        "code" : "HGNC:1539",
        "display" : "CBFB"
      },
      {
        "code" : "HGNC:1541",
        "display" : "CBL"
      },
      {
        "code" : "HGNC:1542",
        "display" : "CBLB"
      },
      {
        "code" : "HGNC:12771",
        "display" : "CCN6"
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
        "code" : "HGNC:1585",
        "display" : "CCND3"
      },
      {
        "code" : "HGNC:1589",
        "display" : "CCNE1"
      },
      {
        "code" : "HGNC:1643",
        "display" : "CD22"
      },
      {
        "code" : "HGNC:17635",
        "display" : "CD274"
      },
      {
        "code" : "HGNC:19137",
        "display" : "CD276"
      },
      {
        "code" : "HGNC:1688",
        "display" : "CD58"
      },
      {
        "code" : "HGNC:11937",
        "display" : "CD70"
      },
      {
        "code" : "HGNC:1697",
        "display" : "CD74"
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
        "code" : "HGNC:1784",
        "display" : "CDKN1A"
      },
      {
        "code" : "HGNC:1785",
        "display" : "CDKN1B"
      },
      {
        "code" : "HGNC:1786",
        "display" : "CDKN1C"
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
        "code" : "HGNC:1851",
        "display" : "CENPA"
      },
      {
        "code" : "HGNC:1917",
        "display" : "CHD2"
      },
      {
        "code" : "HGNC:1919",
        "display" : "CHD4"
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
        "code" : "HGNC:7067",
        "display" : "CIITA"
      },
      {
        "code" : "HGNC:19083",
        "display" : "CKS1B"
      },
      {
        "code" : "HGNC:17440",
        "display" : "COP1"
      },
      {
        "code" : "HGNC:30185",
        "display" : "CRBN"
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
        "code" : "HGNC:14281",
        "display" : "CRLF2"
      },
      {
        "code" : "HGNC:2433",
        "display" : "CSF1R"
      },
      {
        "code" : "HGNC:2439",
        "display" : "CSF3R"
      },
      {
        "code" : "HGNC:13723",
        "display" : "CTCF"
      },
      {
        "code" : "HGNC:2505",
        "display" : "CTLA4"
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
        "code" : "HGNC:2553",
        "display" : "CUL3"
      },
      {
        "code" : "HGNC:2554",
        "display" : "CUL4A"
      },
      {
        "code" : "HGNC:2557",
        "display" : "CUX1"
      },
      {
        "code" : "HGNC:2561",
        "display" : "CXCR4"
      },
      {
        "code" : "HGNC:2584",
        "display" : "CYLD"
      },
      {
        "code" : "HGNC:2593",
        "display" : "CYP17A1"
      },
      {
        "code" : "HGNC:2681",
        "display" : "DAXX"
      },
      {
        "code" : "HGNC:18184",
        "display" : "DCUN1D1"
      },
      {
        "code" : "HGNC:2730",
        "display" : "DDR1"
      },
      {
        "code" : "HGNC:2731",
        "display" : "DDR2"
      },
      {
        "code" : "HGNC:2745",
        "display" : "DDX3X"
      },
      {
        "code" : "HGNC:18674",
        "display" : "DDX41"
      },
      {
        "code" : "HGNC:2746",
        "display" : "DDX5"
      },
      {
        "code" : "HGNC:17098",
        "display" : "DICER1"
      },
      {
        "code" : "HGNC:20604",
        "display" : "DIS3"
      },
      {
        "code" : "HGNC:5270",
        "display" : "DNAJB1"
      },
      {
        "code" : "HGNC:2976",
        "display" : "DNMT1"
      },
      {
        "code" : "HGNC:2978",
        "display" : "DNMT3A"
      },
      {
        "code" : "HGNC:2979",
        "display" : "DNMT3B"
      },
      {
        "code" : "HGNC:24948",
        "display" : "DOT1L"
      },
      {
        "code" : "HGNC:3115",
        "display" : "E2F3"
      },
      {
        "code" : "HGNC:3188",
        "display" : "EED"
      },
      {
        "code" : "HGNC:20594",
        "display" : "EGFL7"
      },
      {
        "code" : "HGNC:3236",
        "display" : "EGFR"
      },
      {
        "code" : "HGNC:3250",
        "display" : "EIF1AX"
      },
      {
        "code" : "HGNC:3284",
        "display" : "EIF4A2"
      },
      {
        "code" : "HGNC:3287",
        "display" : "EIF4E"
      },
      {
        "code" : "HGNC:3318",
        "display" : "ELF3"
      },
      {
        "code" : "HGNC:11617",
        "display" : "ELOC"
      },
      {
        "code" : "HGNC:1316",
        "display" : "EML4"
      },
      {
        "code" : "HGNC:18071",
        "display" : "EMSY"
      },
      {
        "code" : "HGNC:3373",
        "display" : "EP300"
      },
      {
        "code" : "HGNC:11529",
        "display" : "EPCAM"
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
        "code" : "HGNC:18185",
        "display" : "ERRFI1"
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
        "code" : "HGNC:3495",
        "display" : "ETV6"
      },
      {
        "code" : "HGNC:3508",
        "display" : "EWSR1"
      },
      {
        "code" : "HGNC:3527",
        "display" : "EZH2"
      },
      {
        "code" : "HGNC:12691",
        "display" : "EZR"
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
        "code" : "HGNC:25568",
        "display" : "FANCI"
      },
      {
        "code" : "HGNC:20748",
        "display" : "FANCL"
      },
      {
        "code" : "HGNC:23168",
        "display" : "FANCM"
      },
      {
        "code" : "HGNC:11920",
        "display" : "FAS"
      },
      {
        "code" : "HGNC:3595",
        "display" : "FAT1"
      },
      {
        "code" : "HGNC:13590",
        "display" : "FBXO11"
      },
      {
        "code" : "HGNC:16712",
        "display" : "FBXW7"
      },
      {
        "code" : "HGNC:3665",
        "display" : "FGF1"
      },
      {
        "code" : "HGNC:3666",
        "display" : "FGF10"
      },
      {
        "code" : "HGNC:3668",
        "display" : "FGF12"
      },
      {
        "code" : "HGNC:3671",
        "display" : "FGF14"
      },
      {
        "code" : "HGNC:3675",
        "display" : "FGF19"
      },
      {
        "code" : "HGNC:3676",
        "display" : "FGF2"
      },
      {
        "code" : "HGNC:3680",
        "display" : "FGF23"
      },
      {
        "code" : "HGNC:3681",
        "display" : "FGF3"
      },
      {
        "code" : "HGNC:3682",
        "display" : "FGF4"
      },
      {
        "code" : "HGNC:3683",
        "display" : "FGF5"
      },
      {
        "code" : "HGNC:3684",
        "display" : "FGF6"
      },
      {
        "code" : "HGNC:3685",
        "display" : "FGF7"
      },
      {
        "code" : "HGNC:3686",
        "display" : "FGF8"
      },
      {
        "code" : "HGNC:3687",
        "display" : "FGF9"
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
        "code" : "HGNC:5021",
        "display" : "FOXA1"
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
        "code" : "HGNC:3823",
        "display" : "FOXP1"
      },
      {
        "code" : "HGNC:16971",
        "display" : "FRS2"
      },
      {
        "code" : "HGNC:4004",
        "display" : "FUBP1"
      },
      {
        "code" : "HGNC:4037",
        "display" : "FYN"
      },
      {
        "code" : "HGNC:4080",
        "display" : "GABRA6"
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
        "code" : "HGNC:4173",
        "display" : "GATA4"
      },
      {
        "code" : "HGNC:4174",
        "display" : "GATA6"
      },
      {
        "code" : "HGNC:28453",
        "display" : "GID4"
      },
      {
        "code" : "HGNC:4317",
        "display" : "GLI1"
      },
      {
        "code" : "HGNC:4379",
        "display" : "GNA11"
      },
      {
        "code" : "HGNC:4381",
        "display" : "GNA13"
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
        "code" : "HGNC:4451",
        "display" : "GPC3"
      },
      {
        "code" : "HGNC:4550",
        "display" : "GPS2"
      },
      {
        "code" : "HGNC:2001",
        "display" : "GREM1"
      },
      {
        "code" : "HGNC:4585",
        "display" : "GRIN2A"
      },
      {
        "code" : "HGNC:4595",
        "display" : "GRM3"
      },
      {
        "code" : "HGNC:4617",
        "display" : "GSK3B"
      },
      {
        "code" : "HGNC:4716",
        "display" : "H1-2"
      },
      {
        "code" : "HGNC:4747",
        "display" : "H2BC5"
      },
      {
        "code" : "HGNC:4764",
        "display" : "H3-3A"
      },
      {
        "code" : "HGNC:4765",
        "display" : "H3-3B"
      },
      {
        "code" : "HGNC:4778",
        "display" : "H3-4"
      },
      {
        "code" : "HGNC:33164",
        "display" : "H3-5"
      },
      {
        "code" : "HGNC:4766",
        "display" : "H3C1"
      },
      {
        "code" : "HGNC:4775",
        "display" : "H3C10"
      },
      {
        "code" : "HGNC:4771",
        "display" : "H3C11"
      },
      {
        "code" : "HGNC:4774",
        "display" : "H3C12"
      },
      {
        "code" : "HGNC:25311",
        "display" : "H3C13"
      },
      {
        "code" : "HGNC:20503",
        "display" : "H3C14"
      },
      {
        "code" : "HGNC:20505",
        "display" : "H3C15"
      },
      {
        "code" : "HGNC:4776",
        "display" : "H3C2"
      },
      {
        "code" : "HGNC:4768",
        "display" : "H3C3"
      },
      {
        "code" : "HGNC:4767",
        "display" : "H3C4"
      },
      {
        "code" : "HGNC:4769",
        "display" : "H3C6"
      },
      {
        "code" : "HGNC:4773",
        "display" : "H3C7"
      },
      {
        "code" : "HGNC:4772",
        "display" : "H3C8"
      },
      {
        "code" : "HGNC:4852",
        "display" : "HDAC1"
      },
      {
        "code" : "HGNC:4893",
        "display" : "HGF"
      },
      {
        "code" : "HGNC:4910",
        "display" : "HIF1A"
      },
      {
        "code" : "HGNC:11621",
        "display" : "HNF1A"
      },
      {
        "code" : "HGNC:5112",
        "display" : "HOXB13"
      },
      {
        "code" : "HGNC:5173",
        "display" : "HRAS"
      },
      {
        "code" : "HGNC:5217",
        "display" : "HSD3B1"
      },
      {
        "code" : "HGNC:5253",
        "display" : "HSP90AA1"
      },
      {
        "code" : "HGNC:17087",
        "display" : "ICOSLG"
      },
      {
        "code" : "HGNC:5362",
        "display" : "ID3"
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
        "code" : "HGNC:5439",
        "display" : "IFNGR1"
      },
      {
        "code" : "HGNC:5464",
        "display" : "IGF1"
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
        "code" : "HGNC:14552",
        "display" : "IKBKE"
      },
      {
        "code" : "HGNC:13176",
        "display" : "IKZF1"
      },
      {
        "code" : "HGNC:13178",
        "display" : "IKZF3"
      },
      {
        "code" : "HGNC:5962",
        "display" : "IL10"
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
        "code" : "HGNC:6062",
        "display" : "ING1"
      },
      {
        "code" : "HGNC:6065",
        "display" : "INHA"
      },
      {
        "code" : "HGNC:6066",
        "display" : "INHBA"
      },
      {
        "code" : "HGNC:6074",
        "display" : "INPP4A"
      },
      {
        "code" : "HGNC:6075",
        "display" : "INPP4B"
      },
      {
        "code" : "HGNC:6091",
        "display" : "INSR"
      },
      {
        "code" : "HGNC:6116",
        "display" : "IRF1"
      },
      {
        "code" : "HGNC:6117",
        "display" : "IRF2"
      },
      {
        "code" : "HGNC:6119",
        "display" : "IRF4"
      },
      {
        "code" : "HGNC:6125",
        "display" : "IRS1"
      },
      {
        "code" : "HGNC:6126",
        "display" : "IRS2"
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
        "code" : "HGNC:9886",
        "display" : "KDM5A"
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
        "code" : "HGNC:6308",
        "display" : "KEL"
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
        "code" : "HGNC:6347",
        "display" : "KLF2"
      },
      {
        "code" : "HGNC:6348",
        "display" : "KLF4"
      },
      {
        "code" : "HGNC:18653",
        "display" : "KLHL6"
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
        "code" : "HGNC:6407",
        "display" : "KRAS"
      },
      {
        "code" : "HGNC:6514",
        "display" : "LATS1"
      },
      {
        "code" : "HGNC:6515",
        "display" : "LATS2"
      },
      {
        "code" : "HGNC:6641",
        "display" : "LMO1"
      },
      {
        "code" : "HGNC:6693",
        "display" : "LRP1B"
      },
      {
        "code" : "HGNC:6721",
        "display" : "LTK"
      },
      {
        "code" : "HGNC:6735",
        "display" : "LYN"
      },
      {
        "code" : "HGNC:6742",
        "display" : "LZTR1"
      },
      {
        "code" : "HGNC:6776",
        "display" : "MAF"
      },
      {
        "code" : "HGNC:18957",
        "display" : "MAGI2"
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
        "code" : "HGNC:6848",
        "display" : "MAP3K1"
      },
      {
        "code" : "HGNC:6852",
        "display" : "MAP3K13"
      },
      {
        "code" : "HGNC:6853",
        "display" : "MAP3K14"
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
        "code" : "HGNC:6877",
        "display" : "MAPK3"
      },
      {
        "code" : "HGNC:6913",
        "display" : "MAX"
      },
      {
        "code" : "HGNC:6943",
        "display" : "MCL1"
      },
      {
        "code" : "HGNC:21163",
        "display" : "MDC1"
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
        "code" : "HGNC:3498",
        "display" : "MECOM"
      },
      {
        "code" : "HGNC:11957",
        "display" : "MED12"
      },
      {
        "code" : "HGNC:6995",
        "display" : "MEF2B"
      },
      {
        "code" : "HGNC:7010",
        "display" : "MEN1"
      },
      {
        "code" : "HGNC:7027",
        "display" : "MERTK"
      },
      {
        "code" : "HGNC:7029",
        "display" : "MET"
      },
      {
        "code" : "HGNC:14010",
        "display" : "MGA"
      },
      {
        "code" : "HGNC:7105",
        "display" : "MITF"
      },
      {
        "code" : "HGNC:7110",
        "display" : "MKNK1"
      },
      {
        "code" : "HGNC:7127",
        "display" : "MLH1"
      },
      {
        "code" : "HGNC:7136",
        "display" : "MLLT3"
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
        "code" : "HGNC:7326",
        "display" : "MSH3"
      },
      {
        "code" : "HGNC:7329",
        "display" : "MSH6"
      },
      {
        "code" : "HGNC:7380",
        "display" : "MST1"
      },
      {
        "code" : "HGNC:7381",
        "display" : "MST1R"
      },
      {
        "code" : "HGNC:7413",
        "display" : "MTAP"
      },
      {
        "code" : "HGNC:3942",
        "display" : "MTOR"
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
        "code" : "HGNC:7579",
        "display" : "MYH9"
      },
      {
        "code" : "HGNC:7611",
        "display" : "MYOD1"
      },
      {
        "code" : "HGNC:7627",
        "display" : "NAB2"
      },
      {
        "code" : "HGNC:7652",
        "display" : "NBN"
      },
      {
        "code" : "HGNC:7669",
        "display" : "NCOA2"
      },
      {
        "code" : "HGNC:7670",
        "display" : "NCOA3"
      },
      {
        "code" : "HGNC:7672",
        "display" : "NCOR1"
      },
      {
        "code" : "HGNC:7673",
        "display" : "NCOR2"
      },
      {
        "code" : "HGNC:17302",
        "display" : "NEGR1"
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
        "code" : "HGNC:7795",
        "display" : "NFKB2"
      },
      {
        "code" : "HGNC:7797",
        "display" : "NFKBIA"
      },
      {
        "code" : "HGNC:11825",
        "display" : "NKX2-1"
      },
      {
        "code" : "HGNC:7838",
        "display" : "NKX3-1"
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
        "code" : "HGNC:7997",
        "display" : "NRG1"
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
        "code" : "HGNC:12767",
        "display" : "NSD3"
      },
      {
        "code" : "HGNC:8022",
        "display" : "NT5C2"
      },
      {
        "code" : "HGNC:8028",
        "display" : "NTHL1"
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
        "code" : "HGNC:28958",
        "display" : "NUP93"
      },
      {
        "code" : "HGNC:29919",
        "display" : "NUTM1"
      },
      {
        "code" : "HGNC:15524",
        "display" : "P2RY8"
      },
      {
        "code" : "HGNC:8590",
        "display" : "PAK1"
      },
      {
        "code" : "HGNC:8592",
        "display" : "PAK3"
      },
      {
        "code" : "HGNC:15916",
        "display" : "PAK5"
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
        "code" : "HGNC:272",
        "display" : "PARP2"
      },
      {
        "code" : "HGNC:273",
        "display" : "PARP3"
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
        "code" : "HGNC:8647",
        "display" : "PCBP1"
      },
      {
        "code" : "HGNC:8760",
        "display" : "PDCD1"
      },
      {
        "code" : "HGNC:18731",
        "display" : "PDCD1LG2"
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
        "code" : "HGNC:8809",
        "display" : "PDK1"
      },
      {
        "code" : "HGNC:8816",
        "display" : "PDPK1"
      },
      {
        "code" : "HGNC:8910",
        "display" : "PGR"
      },
      {
        "code" : "HGNC:18145",
        "display" : "PHF6"
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
        "code" : "HGNC:8973",
        "display" : "PIK3C2G"
      },
      {
        "code" : "HGNC:8974",
        "display" : "PIK3C3"
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
        "code" : "HGNC:8981",
        "display" : "PIK3R3"
      },
      {
        "code" : "HGNC:8986",
        "display" : "PIM1"
      },
      {
        "code" : "HGNC:9065",
        "display" : "PLCG1"
      },
      {
        "code" : "HGNC:9066",
        "display" : "PLCG2"
      },
      {
        "code" : "HGNC:19699",
        "display" : "PLK2"
      },
      {
        "code" : "HGNC:9108",
        "display" : "PMAIP1"
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
        "code" : "HGNC:17278",
        "display" : "PNRC1"
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
        "code" : "HGNC:9186",
        "display" : "POLQ"
      },
      {
        "code" : "HGNC:17284",
        "display" : "POT1"
      },
      {
        "code" : "HGNC:9236",
        "display" : "PPARG"
      },
      {
        "code" : "HGNC:9277",
        "display" : "PPM1D"
      },
      {
        "code" : "HGNC:9302",
        "display" : "PPP2R1A"
      },
      {
        "code" : "HGNC:9304",
        "display" : "PPP2R2A"
      },
      {
        "code" : "HGNC:18296",
        "display" : "PPP4R2"
      },
      {
        "code" : "HGNC:9323",
        "display" : "PPP6C"
      },
      {
        "code" : "HGNC:9346",
        "display" : "PRDM1"
      },
      {
        "code" : "HGNC:22950",
        "display" : "PREX2"
      },
      {
        "code" : "HGNC:9388",
        "display" : "PRKAR1A"
      },
      {
        "code" : "HGNC:9404",
        "display" : "PRKCI"
      },
      {
        "code" : "HGNC:9413",
        "display" : "PRKDC"
      },
      {
        "code" : "HGNC:8607",
        "display" : "PRKN"
      },
      {
        "code" : "HGNC:9475",
        "display" : "PRSS1"
      },
      {
        "code" : "HGNC:9491",
        "display" : "PRSS8"
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
        "code" : "HGNC:9644",
        "display" : "PTPN11"
      },
      {
        "code" : "HGNC:9668",
        "display" : "PTPRD"
      },
      {
        "code" : "HGNC:9678",
        "display" : "PTPRO"
      },
      {
        "code" : "HGNC:9681",
        "display" : "PTPRS"
      },
      {
        "code" : "HGNC:9682",
        "display" : "PTPRT"
      },
      {
        "code" : "HGNC:21100",
        "display" : "QKI"
      },
      {
        "code" : "HGNC:9774",
        "display" : "RAB35"
      },
      {
        "code" : "HGNC:9801",
        "display" : "RAC1"
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
        "code" : "HGNC:9822",
        "display" : "RAD51B"
      },
      {
        "code" : "HGNC:9820",
        "display" : "RAD51C"
      },
      {
        "code" : "HGNC:9823",
        "display" : "RAD51D"
      },
      {
        "code" : "HGNC:9824",
        "display" : "RAD52"
      },
      {
        "code" : "HGNC:9826",
        "display" : "RAD54L"
      },
      {
        "code" : "HGNC:9829",
        "display" : "RAF1"
      },
      {
        "code" : "HGNC:9848",
        "display" : "RANBP2"
      },
      {
        "code" : "HGNC:9864",
        "display" : "RARA"
      },
      {
        "code" : "HGNC:9871",
        "display" : "RASA1"
      },
      {
        "code" : "HGNC:9884",
        "display" : "RB1"
      },
      {
        "code" : "HGNC:9896",
        "display" : "RBM10"
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
        "code" : "HGNC:9966",
        "display" : "REST"
      },
      {
        "code" : "HGNC:9967",
        "display" : "RET"
      },
      {
        "code" : "HGNC:10011",
        "display" : "RHEB"
      },
      {
        "code" : "HGNC:667",
        "display" : "RHOA"
      },
      {
        "code" : "HGNC:28611",
        "display" : "RICTOR"
      },
      {
        "code" : "HGNC:10023",
        "display" : "RIT1"
      },
      {
        "code" : "HGNC:18505",
        "display" : "RNF43"
      },
      {
        "code" : "HGNC:10261",
        "display" : "ROS1"
      },
      {
        "code" : "HGNC:10315",
        "display" : "RPL22"
      },
      {
        "code" : "HGNC:10360",
        "display" : "RPL5"
      },
      {
        "code" : "HGNC:10433",
        "display" : "RPS6KA4"
      },
      {
        "code" : "HGNC:10437",
        "display" : "RPS6KB2"
      },
      {
        "code" : "HGNC:30287",
        "display" : "RPTOR"
      },
      {
        "code" : "HGNC:28583",
        "display" : "RSPO2"
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
        "code" : "HGNC:10477",
        "display" : "RXRA"
      },
      {
        "code" : "HGNC:10480",
        "display" : "RYBP"
      },
      {
        "code" : "HGNC:10661",
        "display" : "SDC4"
      },
      {
        "code" : "HGNC:10680",
        "display" : "SDHA"
      },
      {
        "code" : "HGNC:26034",
        "display" : "SDHAF2"
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
        "code" : "HGNC:10569",
        "display" : "SERPINB3"
      },
      {
        "code" : "HGNC:10570",
        "display" : "SERPINB4"
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
        "code" : "HGNC:10768",
        "display" : "SF3B1"
      },
      {
        "code" : "HGNC:10810",
        "display" : "SGK1"
      },
      {
        "code" : "HGNC:29605",
        "display" : "SH2B3"
      },
      {
        "code" : "HGNC:10820",
        "display" : "SH2D1A"
      },
      {
        "code" : "HGNC:25543",
        "display" : "SHQ1"
      },
      {
        "code" : "HGNC:11020",
        "display" : "SLC34A2"
      },
      {
        "code" : "HGNC:11086",
        "display" : "SLIT2"
      },
      {
        "code" : "HGNC:23845",
        "display" : "SLX4"
      },
      {
        "code" : "HGNC:6768",
        "display" : "SMAD2"
      },
      {
        "code" : "HGNC:6769",
        "display" : "SMAD3"
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
        "code" : "HGNC:11106",
        "display" : "SMARCD1"
      },
      {
        "code" : "HGNC:11109",
        "display" : "SMARCE1"
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
        "code" : "HGNC:30045",
        "display" : "SMG1"
      },
      {
        "code" : "HGNC:11119",
        "display" : "SMO"
      },
      {
        "code" : "HGNC:11139",
        "display" : "SNCAIP"
      },
      {
        "code" : "HGNC:19383",
        "display" : "SOCS1"
      },
      {
        "code" : "HGNC:11187",
        "display" : "SOS1"
      },
      {
        "code" : "HGNC:11190",
        "display" : "SOX10"
      },
      {
        "code" : "HGNC:18122",
        "display" : "SOX17"
      },
      {
        "code" : "HGNC:11195",
        "display" : "SOX2"
      },
      {
        "code" : "HGNC:11204",
        "display" : "SOX9"
      },
      {
        "code" : "HGNC:17575",
        "display" : "SPEN"
      },
      {
        "code" : "HGNC:11254",
        "display" : "SPOP"
      },
      {
        "code" : "HGNC:11283",
        "display" : "SRC"
      },
      {
        "code" : "HGNC:10783",
        "display" : "SRSF2"
      },
      {
        "code" : "HGNC:11354",
        "display" : "STAG1"
      },
      {
        "code" : "HGNC:11355",
        "display" : "STAG2"
      },
      {
        "code" : "HGNC:11362",
        "display" : "STAT1"
      },
      {
        "code" : "HGNC:11364",
        "display" : "STAT3"
      },
      {
        "code" : "HGNC:11365",
        "display" : "STAT4"
      },
      {
        "code" : "HGNC:11366",
        "display" : "STAT5A"
      },
      {
        "code" : "HGNC:11367",
        "display" : "STAT5B"
      },
      {
        "code" : "HGNC:11368",
        "display" : "STAT6"
      },
      {
        "code" : "HGNC:11389",
        "display" : "STK11"
      },
      {
        "code" : "HGNC:21373",
        "display" : "STK40"
      },
      {
        "code" : "HGNC:16466",
        "display" : "SUFU"
      },
      {
        "code" : "HGNC:17101",
        "display" : "SUZ12"
      },
      {
        "code" : "HGNC:11491",
        "display" : "SYK"
      },
      {
        "code" : "HGNC:11535",
        "display" : "TAF1"
      },
      {
        "code" : "HGNC:43",
        "display" : "TAP1"
      },
      {
        "code" : "HGNC:44",
        "display" : "TAP2"
      },
      {
        "code" : "HGNC:29529",
        "display" : "TBL1XR1"
      },
      {
        "code" : "HGNC:11602",
        "display" : "TBX3"
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
        "code" : "HGNC:11641",
        "display" : "TCF7L2"
      },
      {
        "code" : "HGNC:11724",
        "display" : "TEK"
      },
      {
        "code" : "HGNC:24712",
        "display" : "TENT5C"
      },
      {
        "code" : "HGNC:11730",
        "display" : "TERT"
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
        "code" : "HGNC:11753",
        "display" : "TFEB"
      },
      {
        "code" : "HGNC:11763",
        "display" : "TFRC"
      },
      {
        "code" : "HGNC:11772",
        "display" : "TGFBR1"
      },
      {
        "code" : "HGNC:11773",
        "display" : "TGFBR2"
      },
      {
        "code" : "HGNC:23696",
        "display" : "TIPARP"
      },
      {
        "code" : "HGNC:26038",
        "display" : "TMEM127"
      },
      {
        "code" : "HGNC:11876",
        "display" : "TMPRSS2"
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
        "code" : "HGNC:11986",
        "display" : "TOP1"
      },
      {
        "code" : "HGNC:11989",
        "display" : "TOP2A"
      },
      {
        "code" : "HGNC:11998",
        "display" : "TP53"
      },
      {
        "code" : "HGNC:11999",
        "display" : "TP53BP1"
      },
      {
        "code" : "HGNC:15979",
        "display" : "TP63"
      },
      {
        "code" : "HGNC:12032",
        "display" : "TRAF2"
      },
      {
        "code" : "HGNC:12033",
        "display" : "TRAF3"
      },
      {
        "code" : "HGNC:20456",
        "display" : "TRAF7"
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
        "code" : "HGNC:12446",
        "display" : "TYRO3"
      },
      {
        "code" : "HGNC:12453",
        "display" : "U2AF1"
      },
      {
        "code" : "HGNC:12680",
        "display" : "VEGFA"
      },
      {
        "code" : "HGNC:12687",
        "display" : "VHL"
      },
      {
        "code" : "HGNC:28873",
        "display" : "VTCN1"
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
        "code" : "HGNC:12801",
        "display" : "XBP1"
      },
      {
        "code" : "HGNC:592",
        "display" : "XIAP"
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
        "code" : "HGNC:16262",
        "display" : "YAP1"
      },
      {
        "code" : "HGNC:12841",
        "display" : "YES1"
      },
      {
        "code" : "HGNC:18078",
        "display" : "ZBTB7A"
      },
      {
        "code" : "HGNC:777",
        "display" : "ZFHX3"
      },
      {
        "code" : "HGNC:1107",
        "display" : "ZFP36L1"
      },
      {
        "code" : "HGNC:12989",
        "display" : "ZMYM2"
      },
      {
        "code" : "HGNC:13054",
        "display" : "ZMYM3"
      },
      {
        "code" : "HGNC:13009",
        "display" : "ZNF217"
      },
      {
        "code" : "HGNC:25883",
        "display" : "ZNF703"
      },
      {
        "code" : "HGNC:25843",
        "display" : "ZNF750"
      },
      {
        "code" : "HGNC:23019",
        "display" : "ZRSR2"
      }]
    }]
  }
}

```
