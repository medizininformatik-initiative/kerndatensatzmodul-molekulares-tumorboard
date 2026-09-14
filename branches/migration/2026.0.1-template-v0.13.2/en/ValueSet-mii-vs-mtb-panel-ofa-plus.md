# MII VS MTB Panel OFA plus - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS MTB Panel OFA plus**

## ValueSet: MII VS MTB Panel OFA plus 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-ofa-plus | *Version*:2026.0.1 |
| Active as of 2026-09-14 | *Computable Name*:MII_VS_MTB_Panel_OfaPlus |

 
Genliste des Panels: Oncomine Focus Assay Plus (517 Gene). Kodiert mit stabilen HGNC-IDs (System genenames.org/geneId), Displays = aktuelle HGNC-Symbole. 

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
  "id" : "mii-vs-mtb-panel-ofa-plus",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-ofa-plus",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Panel_OfaPlus",
  "title" : "MII VS MTB Panel OFA plus",
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
  "description" : "Genliste des Panels: Oncomine Focus Assay Plus (517 Gene). Kodiert mit stabilen HGNC-IDs (System genenames.org/geneId), Displays = aktuelle HGNC-Symbole.",
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
        "code" : "HGNC:24086",
        "display" : "A1CF"
      },
      {
        "code" : "HGNC:40",
        "display" : "ABCB1"
      },
      {
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
        "code" : "HGNC:30931",
        "display" : "ACSM2B"
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
        "code" : "HGNC:196",
        "display" : "ADAM18"
      },
      {
        "code" : "HGNC:14605",
        "display" : "ADAMTS12"
      },
      {
        "code" : "HGNC:218",
        "display" : "ADAMTS2"
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
        "code" : "HGNC:26837",
        "display" : "AMER1"
      },
      {
        "code" : "HGNC:23837",
        "display" : "ANO4"
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
        "code" : "HGNC:646",
        "display" : "ARAF"
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
        "code" : "HGNC:25583",
        "display" : "ODAD2"
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
        "code" : "HGNC:799",
        "display" : "ATP1A1"
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
        "code" : "HGNC:990",
        "display" : "BCL2"
      },
      {
        "code" : "HGNC:13787",
        "display" : "BCL2L12"
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
        "code" : "HGNC:1014",
        "display" : "BCR"
      },
      {
        "code" : "HGNC:1058",
        "display" : "BLM"
      },
      {
        "code" : "HGNC:1072",
        "display" : "BMP5"
      },
      {
        "code" : "HGNC:1078",
        "display" : "BMPR2"
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
        "code" : "HGNC:22393",
        "display" : "BRINP3"
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
        "code" : "HGNC:1339",
        "display" : "C6"
      },
      {
        "code" : "HGNC:1352",
        "display" : "C8A"
      },
      {
        "code" : "HGNC:1353",
        "display" : "C8B"
      },
      {
        "code" : "HGNC:1391",
        "display" : "CACNA1D"
      },
      {
        "code" : "HGNC:1455",
        "display" : "CALR"
      },
      {
        "code" : "HGNC:1473",
        "display" : "CANX"
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
        "code" : "HGNC:1514",
        "display" : "CASR"
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
        "code" : "HGNC:1631",
        "display" : "CD163"
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
        "code" : "HGNC:1749",
        "display" : "CDH10"
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
        "code" : "HGNC:1784",
        "display" : "CDKN1A"
      },
      {
        "code" : "HGNC:1785",
        "display" : "CDKN1B"
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
        "code" : "HGNC:2176",
        "display" : "CNTN6"
      },
      {
        "code" : "HGNC:18747",
        "display" : "CNTNAP4"
      },
      {
        "code" : "HGNC:18748",
        "display" : "CNTNAP5"
      },
      {
        "code" : "HGNC:2186",
        "display" : "COL11A1"
      },
      {
        "code" : "HGNC:2348",
        "display" : "CREBBP"
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
        "code" : "HGNC:13723",
        "display" : "CTCF"
      },
      {
        "code" : "HGNC:2505",
        "display" : "CTLA4"
      },
      {
        "code" : "HGNC:2514",
        "display" : "CTNNB1"
      },
      {
        "code" : "HGNC:2516",
        "display" : "CTNND2"
      },
      {
        "code" : "HGNC:2551",
        "display" : "CUL1"
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
        "code" : "HGNC:2555",
        "display" : "CUL4B"
      },
      {
        "code" : "HGNC:2584",
        "display" : "CYLD"
      },
      {
        "code" : "HGNC:2623",
        "display" : "CYP2C9"
      },
      {
        "code" : "HGNC:2625",
        "display" : "CYP2D6"
      },
      {
        "code" : "HGNC:18274",
        "display" : "CYSLTR2"
      },
      {
        "code" : "HGNC:2681",
        "display" : "DAXX"
      },
      {
        "code" : "HGNC:26657",
        "display" : "DCAF4L2"
      },
      {
        "code" : "HGNC:20625",
        "display" : "DCDC1"
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
        "code" : "HGNC:2847",
        "display" : "DGCR8"
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
        "code" : "HGNC:2989",
        "display" : "DOCK3"
      },
      {
        "code" : "HGNC:3012",
        "display" : "DPYD"
      },
      {
        "code" : "HGNC:17904",
        "display" : "DROSHA"
      },
      {
        "code" : "HGNC:3035",
        "display" : "DSC1"
      },
      {
        "code" : "HGNC:3037",
        "display" : "DSC3"
      },
      {
        "code" : "HGNC:3113",
        "display" : "E2F1"
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
        "code" : "HGNC:3318",
        "display" : "ELF3"
      },
      {
        "code" : "HGNC:18071",
        "display" : "EMSY"
      },
      {
        "code" : "HGNC:3350",
        "display" : "ENO1"
      },
      {
        "code" : "HGNC:3373",
        "display" : "EP300"
      },
      {
        "code" : "HGNC:3374",
        "display" : "EPAS1"
      },
      {
        "code" : "HGNC:11529",
        "display" : "EPCAM"
      },
      {
        "code" : "HGNC:3386",
        "display" : "EPHA2"
      },
      {
        "code" : "HGNC:18173",
        "display" : "ERAP1"
      },
      {
        "code" : "HGNC:29499",
        "display" : "ERAP2"
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
        "code" : "HGNC:3434",
        "display" : "ERCC2"
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
        "code" : "HGNC:3527",
        "display" : "EZH2"
      },
      {
        "code" : "HGNC:28029",
        "display" : "FAM135B"
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
        "code" : "HGNC:16712",
        "display" : "FBXW7"
      },
      {
        "code" : "HGNC:3675",
        "display" : "FGF19"
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
        "code" : "HGNC:3685",
        "display" : "FGF7"
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
        "code" : "HGNC:4004",
        "display" : "FUBP1"
      },
      {
        "code" : "HGNC:4037",
        "display" : "FYN"
      },
      {
        "code" : "HGNC:16347",
        "display" : "GALNT17"
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
        "code" : "HGNC:4317",
        "display" : "GLI1"
      },
      {
        "code" : "HGNC:4319",
        "display" : "GLI3"
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
        "code" : "HGNC:23689",
        "display" : "GPR158"
      },
      {
        "code" : "HGNC:4550",
        "display" : "GPS2"
      },
      {
        "code" : "HGNC:4576",
        "display" : "GRID2"
      },
      {
        "code" : "HGNC:4718",
        "display" : "H1-4"
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
        "code" : "HGNC:4776",
        "display" : "H3C2"
      },
      {
        "code" : "HGNC:4845",
        "display" : "HCN1"
      },
      {
        "code" : "HGNC:4853",
        "display" : "HDAC2"
      },
      {
        "code" : "HGNC:14065",
        "display" : "HDAC9"
      },
      {
        "code" : "HGNC:4910",
        "display" : "HIF1A"
      },
      {
        "code" : "HGNC:4931",
        "display" : "HLA-A"
      },
      {
        "code" : "HGNC:4932",
        "display" : "HLA-B"
      },
      {
        "code" : "HGNC:4933",
        "display" : "HLA-C"
      },
      {
        "code" : "HGNC:11621",
        "display" : "HNF1A"
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
        "code" : "HGNC:5960",
        "display" : "IKBKB"
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
        "code" : "HGNC:6075",
        "display" : "INPP4B"
      },
      {
        "code" : "HGNC:6119",
        "display" : "IRF4"
      },
      {
        "code" : "HGNC:6128",
        "display" : "IRS4"
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
        "code" : "HGNC:6238",
        "display" : "KCND2"
      },
      {
        "code" : "HGNC:18863",
        "display" : "KCNH7"
      },
      {
        "code" : "HGNC:6266",
        "display" : "KCNJ5"
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
        "code" : "HGNC:6338",
        "display" : "KIR3DL1"
      },
      {
        "code" : "HGNC:6342",
        "display" : "KIT"
      },
      {
        "code" : "HGNC:6348",
        "display" : "KLF4"
      },
      {
        "code" : "HGNC:6349",
        "display" : "KLF5"
      },
      {
        "code" : "HGNC:22931",
        "display" : "KLHL13"
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
        "code" : "HGNC:30767",
        "display" : "KNSTRN"
      },
      {
        "code" : "HGNC:6407",
        "display" : "KRAS"
      },
      {
        "code" : "HGNC:18945",
        "display" : "KRTAP21-1"
      },
      {
        "code" : "HGNC:18932",
        "display" : "KRTAP6-2"
      },
      {
        "code" : "HGNC:28987",
        "display" : "LARP4B"
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
        "code" : "HGNC:18531",
        "display" : "LRRC7"
      },
      {
        "code" : "HGNC:6815",
        "display" : "MAGOH"
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
        "code" : "HGNC:6847",
        "display" : "MAP2K7"
      },
      {
        "code" : "HGNC:6848",
        "display" : "MAP3K1"
      },
      {
        "code" : "HGNC:6856",
        "display" : "MAP3K4"
      },
      {
        "code" : "HGNC:6860",
        "display" : "MAP3K8"
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
        "code" : "HGNC:6895",
        "display" : "MARCO"
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
        "code" : "HGNC:7127",
        "display" : "MLH1"
      },
      {
        "code" : "HGNC:7128",
        "display" : "MLH3"
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
        "code" : "HGNC:7413",
        "display" : "MTAP"
      },
      {
        "code" : "HGNC:3942",
        "display" : "MTOR"
      },
      {
        "code" : "HGNC:20595",
        "display" : "MTUS2"
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
        "code" : "HGNC:7547",
        "display" : "MYBL1"
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
        "code" : "HGNC:7611",
        "display" : "MYOD1"
      },
      {
        "code" : "HGNC:7652",
        "display" : "NBN"
      },
      {
        "code" : "HGNC:7672",
        "display" : "NCOR1"
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
        "code" : "HGNC:29933",
        "display" : "NLRC5"
      },
      {
        "code" : "HGNC:7870",
        "display" : "NOL4"
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
        "code" : "HGNC:7989",
        "display" : "NRAS"
      },
      {
        "code" : "HGNC:7997",
        "display" : "NRG1"
      },
      {
        "code" : "HGNC:8008",
        "display" : "NRXN1"
      },
      {
        "code" : "HGNC:12766",
        "display" : "NSD2"
      },
      {
        "code" : "HGNC:8022",
        "display" : "NT5C2"
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
        "code" : "HGNC:29291",
        "display" : "NYAP2"
      },
      {
        "code" : "HGNC:14845",
        "display" : "OR10G8"
      },
      {
        "code" : "HGNC:27019",
        "display" : "OR2G6"
      },
      {
        "code" : "HGNC:19578",
        "display" : "OR2L13"
      },
      {
        "code" : "HGNC:8266",
        "display" : "OR2L2"
      },
      {
        "code" : "HGNC:15014",
        "display" : "OR2L8"
      },
      {
        "code" : "HGNC:8269",
        "display" : "OR2M3"
      },
      {
        "code" : "HGNC:14727",
        "display" : "OR2T3"
      },
      {
        "code" : "HGNC:31255",
        "display" : "OR2T33"
      },
      {
        "code" : "HGNC:15016",
        "display" : "OR2T4"
      },
      {
        "code" : "HGNC:15021",
        "display" : "OR2W3"
      },
      {
        "code" : "HGNC:15152",
        "display" : "OR4A15"
      },
      {
        "code" : "HGNC:15171",
        "display" : "OR4C15"
      },
      {
        "code" : "HGNC:14743",
        "display" : "OR4C6"
      },
      {
        "code" : "HGNC:14735",
        "display" : "OR4M1"
      },
      {
        "code" : "HGNC:15373",
        "display" : "OR4M2"
      },
      {
        "code" : "HGNC:15285",
        "display" : "OR5D18"
      },
      {
        "code" : "HGNC:8343",
        "display" : "OR5F1"
      },
      {
        "code" : "HGNC:8350",
        "display" : "OR5L1"
      },
      {
        "code" : "HGNC:8351",
        "display" : "OR5L2"
      },
      {
        "code" : "HGNC:15027",
        "display" : "OR6F1"
      },
      {
        "code" : "HGNC:15308",
        "display" : "OR8H2"
      },
      {
        "code" : "HGNC:15310",
        "display" : "OR8I2"
      },
      {
        "code" : "HGNC:19611",
        "display" : "OR8U1"
      },
      {
        "code" : "HGNC:8490",
        "display" : "ORC4"
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
        "code" : "HGNC:271",
        "display" : "PARP4"
      },
      {
        "code" : "HGNC:8619",
        "display" : "PAX5"
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
        "code" : "HGNC:14267",
        "display" : "PCDH17"
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
        "code" : "HGNC:8774",
        "display" : "PDE1A"
      },
      {
        "code" : "HGNC:8776",
        "display" : "PDE1C"
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
        "code" : "HGNC:4606",
        "display" : "PDIA3"
      },
      {
        "code" : "HGNC:8891",
        "display" : "PGD"
      },
      {
        "code" : "HGNC:18145",
        "display" : "PHF6"
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
        "code" : "HGNC:9065",
        "display" : "PLCG1"
      },
      {
        "code" : "HGNC:21013",
        "display" : "PLXDC2"
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
        "code" : "HGNC:25369",
        "display" : "POM121L12"
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
        "code" : "HGNC:9246",
        "display" : "PPFIA2"
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
        "code" : "HGNC:9323",
        "display" : "PPP6C"
      },
      {
        "code" : "HGNC:9346",
        "display" : "PRDM1"
      },
      {
        "code" : "HGNC:13994",
        "display" : "PRDM9"
      },
      {
        "code" : "HGNC:9380",
        "display" : "PRKACA"
      },
      {
        "code" : "HGNC:9381",
        "display" : "PRKACB"
      },
      {
        "code" : "HGNC:9388",
        "display" : "PRKAR1A"
      },
      {
        "code" : "HGNC:9538",
        "display" : "PSMB10"
      },
      {
        "code" : "HGNC:9545",
        "display" : "PSMB8"
      },
      {
        "code" : "HGNC:9546",
        "display" : "PSMB9"
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
        "code" : "HGNC:9682",
        "display" : "PTPRT"
      },
      {
        "code" : "HGNC:26359",
        "display" : "PXDNL"
      },
      {
        "code" : "HGNC:9801",
        "display" : "RAC1"
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
        "code" : "HGNC:9864",
        "display" : "RARA"
      },
      {
        "code" : "HGNC:9871",
        "display" : "RASA1"
      },
      {
        "code" : "HGNC:9872",
        "display" : "RASA2"
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
        "code" : "HGNC:9921",
        "display" : "RBP3"
      },
      {
        "code" : "HGNC:9949",
        "display" : "RECQL4"
      },
      {
        "code" : "HGNC:9951",
        "display" : "REG1A"
      },
      {
        "code" : "HGNC:9952",
        "display" : "REG1B"
      },
      {
        "code" : "HGNC:8601",
        "display" : "REG3A"
      },
      {
        "code" : "HGNC:29595",
        "display" : "REG3G"
      },
      {
        "code" : "HGNC:9955",
        "display" : "RELA"
      },
      {
        "code" : "HGNC:9967",
        "display" : "RET"
      },
      {
        "code" : "HGNC:10003",
        "display" : "RGS7"
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
        "code" : "HGNC:18518",
        "display" : "RNASEH2A"
      },
      {
        "code" : "HGNC:25671",
        "display" : "RNASEH2B"
      },
      {
        "code" : "HGNC:24116",
        "display" : "RNASEH2C"
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
        "code" : "HGNC:10289",
        "display" : "RPA1"
      },
      {
        "code" : "HGNC:10298",
        "display" : "RPL10"
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
        "code" : "HGNC:10436",
        "display" : "RPS6KB1"
      },
      {
        "code" : "HGNC:26809",
        "display" : "RPTN"
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
        "code" : "HGNC:20866",
        "display" : "RSPO3"
      },
      {
        "code" : "HGNC:30286",
        "display" : "RUNDC3B"
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
        "code" : "HGNC:26299",
        "display" : "SH3RF2"
      },
      {
        "code" : "HGNC:10887",
        "display" : "SIX1"
      },
      {
        "code" : "HGNC:10888",
        "display" : "SIX2"
      },
      {
        "code" : "HGNC:10921",
        "display" : "SLC15A2"
      },
      {
        "code" : "HGNC:11068",
        "display" : "SLC8A1"
      },
      {
        "code" : "HGNC:10961",
        "display" : "SLCO1B3"
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
        "code" : "HGNC:11111",
        "display" : "SMC1A"
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
        "code" : "HGNC:16466",
        "display" : "SUFU"
      },
      {
        "code" : "HGNC:19266",
        "display" : "SYT10"
      },
      {
        "code" : "HGNC:23142",
        "display" : "SYT16"
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
        "code" : "HGNC:11566",
        "display" : "TAPBP"
      },
      {
        "code" : "HGNC:11602",
        "display" : "TBX3"
      },
      {
        "code" : "HGNC:11641",
        "display" : "TCF7L2"
      },
      {
        "code" : "HGNC:11730",
        "display" : "TERT"
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
        "code" : "HGNC:11772",
        "display" : "TGFBR1"
      },
      {
        "code" : "HGNC:11773",
        "display" : "TGFBR2"
      },
      {
        "code" : "HGNC:29411",
        "display" : "TMEM132D"
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
        "code" : "HGNC:15979",
        "display" : "TP63"
      },
      {
        "code" : "HGNC:12014",
        "display" : "TPMT"
      },
      {
        "code" : "HGNC:12016",
        "display" : "TPP2"
      },
      {
        "code" : "HGNC:12023",
        "display" : "TPTE"
      },
      {
        "code" : "HGNC:30748",
        "display" : "TRHDE"
      },
      {
        "code" : "HGNC:19021",
        "display" : "TRIM48"
      },
      {
        "code" : "HGNC:19023",
        "display" : "TRIM51"
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
        "code" : "HGNC:12453",
        "display" : "U2AF1"
      },
      {
        "code" : "HGNC:12530",
        "display" : "UGT1A1"
      },
      {
        "code" : "HGNC:12631",
        "display" : "USP8"
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
        "code" : "HGNC:12796",
        "display" : "WT1"
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
        "code" : "HGNC:12830",
        "display" : "XRCC3"
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
        "code" : "HGNC:13503",
        "display" : "ZBTB20"
      },
      {
        "code" : "HGNC:777",
        "display" : "ZFHX3"
      },
      {
        "code" : "HGNC:16366",
        "display" : "ZIM3"
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
        "code" : "HGNC:20817",
        "display" : "ZNF429"
      },
      {
        "code" : "HGNC:23258",
        "display" : "ZNF479"
      },
      {
        "code" : "HGNC:29025",
        "display" : "ZNF536"
      },
      {
        "code" : "HGNC:23019",
        "display" : "ZRSR2"
      }]
    }]
  }
}

```
