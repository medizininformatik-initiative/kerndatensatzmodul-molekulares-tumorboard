# MII VS MTB Panel TCM NGS - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS MTB Panel TCM NGS**

## ValueSet: MII VS MTB Panel TCM NGS 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tcm-ngs | *Version*:2026.0.1 |
| Active as of 2026-09-14 | *Computable Name*:MII_VS_MTB_Panel_TcmNgs |

 
Genliste des Panels: TCM NGS Panel (409 Gene). Kodiert als HGNC-Gensymbole; TODO:REVIEW HGNC-ID-Mapping. 

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
  "id" : "mii-vs-mtb-panel-tcm-ngs",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tcm-ngs",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Panel_TcmNgs",
  "title" : "MII VS MTB Panel TCM NGS",
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
  "description" : "Genliste des Panels: TCM NGS Panel (409 Gene). Kodiert als HGNC-Gensymbole; TODO:REVIEW HGNC-ID-Mapping.",
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
        "code" : "ABL2",
        "display" : "ABL2"
      },
      {
        "code" : "ACVR2A",
        "display" : "ACVR2A"
      },
      {
        "code" : "ADAMTS20",
        "display" : "ADAMTS20"
      },
      {
        "code" : "AFF1",
        "display" : "AFF1"
      },
      {
        "code" : "AFF3",
        "display" : "AFF3"
      },
      {
        "code" : "AKAP9",
        "display" : "AKAP9"
      },
      {
        "code" : "AKT1",
        "display" : "AKT1"
      },
      {
        "code" : "AKT2",
        "display" : "AKT2"
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
        "code" : "APC",
        "display" : "APC"
      },
      {
        "code" : "AR",
        "display" : "AR"
      },
      {
        "code" : "ARID1A",
        "display" : "ARID1A"
      },
      {
        "code" : "ARID2",
        "display" : "ARID2"
      },
      {
        "code" : "ARNT",
        "display" : "ARNT"
      },
      {
        "code" : "ASXL1",
        "display" : "ASXL1"
      },
      {
        "code" : "ATF1",
        "display" : "ATF1"
      },
      {
        "code" : "ATM",
        "display" : "ATM"
      },
      {
        "code" : "ATR",
        "display" : "ATR"
      },
      {
        "code" : "ATRX",
        "display" : "ATRX"
      },
      {
        "code" : "AURKA",
        "display" : "AURKA"
      },
      {
        "code" : "AURKB",
        "display" : "AURKB"
      },
      {
        "code" : "AURKC",
        "display" : "AURKC"
      },
      {
        "code" : "AXL",
        "display" : "AXL"
      },
      {
        "code" : "ADGRB3",
        "display" : "ADGRB3"
      },
      {
        "code" : "BAP1",
        "display" : "BAP1"
      },
      {
        "code" : "BCL10",
        "display" : "BCL10"
      },
      {
        "code" : "BCL11A",
        "display" : "BCL11A"
      },
      {
        "code" : "BCL11B",
        "display" : "BCL11B"
      },
      {
        "code" : "BCL2",
        "display" : "BCL2"
      },
      {
        "code" : "BCL2L1",
        "display" : "BCL2L1"
      },
      {
        "code" : "BCL2L2",
        "display" : "BCL2L2"
      },
      {
        "code" : "BCL3",
        "display" : "BCL3"
      },
      {
        "code" : "BCL6",
        "display" : "BCL6"
      },
      {
        "code" : "BCL9",
        "display" : "BCL9"
      },
      {
        "code" : "BCR",
        "display" : "BCR"
      },
      {
        "code" : "BIRC2",
        "display" : "BIRC2"
      },
      {
        "code" : "BIRC3",
        "display" : "BIRC3"
      },
      {
        "code" : "BIRC5",
        "display" : "BIRC5"
      },
      {
        "code" : "BLM",
        "display" : "BLM"
      },
      {
        "code" : "BLNK",
        "display" : "BLNK"
      },
      {
        "code" : "BMPR1A",
        "display" : "BMPR1A"
      },
      {
        "code" : "BRAF",
        "display" : "BRAF"
      },
      {
        "code" : "BRD3",
        "display" : "BRD3"
      },
      {
        "code" : "BRIP1",
        "display" : "BRIP1"
      },
      {
        "code" : "BTK",
        "display" : "BTK"
      },
      {
        "code" : "BUB1B",
        "display" : "BUB1B"
      },
      {
        "code" : "CARD11",
        "display" : "CARD11"
      },
      {
        "code" : "KNL1",
        "display" : "KNL1"
      },
      {
        "code" : "CBL",
        "display" : "CBL"
      },
      {
        "code" : "CCND1",
        "display" : "CCND1"
      },
      {
        "code" : "CCND2",
        "display" : "CCND2"
      },
      {
        "code" : "CCNE1",
        "display" : "CCNE1"
      },
      {
        "code" : "CD79A",
        "display" : "CD79A"
      },
      {
        "code" : "CD79B",
        "display" : "CD79B"
      },
      {
        "code" : "CDC73",
        "display" : "CDC73"
      },
      {
        "code" : "CDH1",
        "display" : "CDH1"
      },
      {
        "code" : "CDH11",
        "display" : "CDH11"
      },
      {
        "code" : "CDH2",
        "display" : "CDH2"
      },
      {
        "code" : "CDH20",
        "display" : "CDH20"
      },
      {
        "code" : "CDH5",
        "display" : "CDH5"
      },
      {
        "code" : "CDK12",
        "display" : "CDK12"
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
        "code" : "CDK8",
        "display" : "CDK8"
      },
      {
        "code" : "CDKN2A",
        "display" : "CDKN2A"
      },
      {
        "code" : "CDKN2B",
        "display" : "CDKN2B"
      },
      {
        "code" : "CDKN2C",
        "display" : "CDKN2C"
      },
      {
        "code" : "CEBPA",
        "display" : "CEBPA"
      },
      {
        "code" : "CHEK1",
        "display" : "CHEK1"
      },
      {
        "code" : "CHEK2",
        "display" : "CHEK2"
      },
      {
        "code" : "CIC",
        "display" : "CIC"
      },
      {
        "code" : "CKS1B",
        "display" : "CKS1B"
      },
      {
        "code" : "CMPK1",
        "display" : "CMPK1"
      },
      {
        "code" : "COL1A1",
        "display" : "COL1A1"
      },
      {
        "code" : "CRBN",
        "display" : "CRBN"
      },
      {
        "code" : "CREB1",
        "display" : "CREB1"
      },
      {
        "code" : "CREBBP",
        "display" : "CREBBP"
      },
      {
        "code" : "CRKL",
        "display" : "CRKL"
      },
      {
        "code" : "CRTC1",
        "display" : "CRTC1"
      },
      {
        "code" : "CSF1R",
        "display" : "CSF1R"
      },
      {
        "code" : "CSMD3",
        "display" : "CSMD3"
      },
      {
        "code" : "CTNNA1",
        "display" : "CTNNA1"
      },
      {
        "code" : "CTNNB1",
        "display" : "CTNNB1"
      },
      {
        "code" : "CYLD",
        "display" : "CYLD"
      },
      {
        "code" : "CYP2C19",
        "display" : "CYP2C19"
      },
      {
        "code" : "CYP2D6",
        "display" : "CYP2D6"
      },
      {
        "code" : "DAXX",
        "display" : "DAXX"
      },
      {
        "code" : "DCC",
        "display" : "DCC"
      },
      {
        "code" : "DDB2",
        "display" : "DDB2"
      },
      {
        "code" : "DDIT3",
        "display" : "DDIT3"
      },
      {
        "code" : "DDR2",
        "display" : "DDR2"
      },
      {
        "code" : "DEK",
        "display" : "DEK"
      },
      {
        "code" : "DICER1",
        "display" : "DICER1"
      },
      {
        "code" : "DNMT3A",
        "display" : "DNMT3A"
      },
      {
        "code" : "DPYD",
        "display" : "DPYD"
      },
      {
        "code" : "DST",
        "display" : "DST"
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
        "code" : "EP300",
        "display" : "EP300"
      },
      {
        "code" : "EP400",
        "display" : "EP400"
      },
      {
        "code" : "EPHA3",
        "display" : "EPHA3"
      },
      {
        "code" : "EPHA7",
        "display" : "EPHA7"
      },
      {
        "code" : "EPHB1",
        "display" : "EPHB1"
      },
      {
        "code" : "EPHB4",
        "display" : "EPHB4"
      },
      {
        "code" : "EPHB6",
        "display" : "EPHB6"
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
        "code" : "ERCC1",
        "display" : "ERCC1"
      },
      {
        "code" : "ERCC2",
        "display" : "ERCC2"
      },
      {
        "code" : "ERCC3",
        "display" : "ERCC3"
      },
      {
        "code" : "ERCC4",
        "display" : "ERCC4"
      },
      {
        "code" : "ERCC5",
        "display" : "ERCC5"
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
        "code" : "EXT1",
        "display" : "EXT1"
      },
      {
        "code" : "EXT2",
        "display" : "EXT2"
      },
      {
        "code" : "EZH2",
        "display" : "EZH2"
      },
      {
        "code" : "AMER1",
        "display" : "AMER1"
      },
      {
        "code" : "FANCA",
        "display" : "FANCA"
      },
      {
        "code" : "FANCC",
        "display" : "FANCC"
      },
      {
        "code" : "FANCD2",
        "display" : "FANCD2"
      },
      {
        "code" : "FANCF",
        "display" : "FANCF"
      },
      {
        "code" : "FANCG",
        "display" : "FANCG"
      },
      {
        "code" : "FAS",
        "display" : "FAS"
      },
      {
        "code" : "FBXW7",
        "display" : "FBXW7"
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
        "code" : "FH",
        "display" : "FH"
      },
      {
        "code" : "FLCN",
        "display" : "FLCN"
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
        "code" : "FLT4",
        "display" : "FLT4"
      },
      {
        "code" : "FN1",
        "display" : "FN1"
      },
      {
        "code" : "FOXL2",
        "display" : "FOXL2"
      },
      {
        "code" : "FOXO1",
        "display" : "FOXO1"
      },
      {
        "code" : "FOXO3",
        "display" : "FOXO3"
      },
      {
        "code" : "FOXP1",
        "display" : "FOXP1"
      },
      {
        "code" : "FOXP4",
        "display" : "FOXP4"
      },
      {
        "code" : "FZR1",
        "display" : "FZR1"
      },
      {
        "code" : "G6PD",
        "display" : "G6PD"
      },
      {
        "code" : "GATA1",
        "display" : "GATA1"
      },
      {
        "code" : "GATA2",
        "display" : "GATA2"
      },
      {
        "code" : "GATA3",
        "display" : "GATA3"
      },
      {
        "code" : "GDNF",
        "display" : "GDNF"
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
        "code" : "ADGRA2",
        "display" : "ADGRA2"
      },
      {
        "code" : "GRM8",
        "display" : "GRM8"
      },
      {
        "code" : "GUCY1A2",
        "display" : "GUCY1A2"
      },
      {
        "code" : "HCAR1",
        "display" : "HCAR1"
      },
      {
        "code" : "HIF1A",
        "display" : "HIF1A"
      },
      {
        "code" : "HLF",
        "display" : "HLF"
      },
      {
        "code" : "HNF1A",
        "display" : "HNF1A"
      },
      {
        "code" : "HOOK3",
        "display" : "HOOK3"
      },
      {
        "code" : "HRAS",
        "display" : "HRAS"
      },
      {
        "code" : "HSP90AA1",
        "display" : "HSP90AA1"
      },
      {
        "code" : "HSP90AB1",
        "display" : "HSP90AB1"
      },
      {
        "code" : "CILK1",
        "display" : "CILK1"
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
        "code" : "IGF1R",
        "display" : "IGF1R"
      },
      {
        "code" : "IGF2",
        "display" : "IGF2"
      },
      {
        "code" : "IGF2R",
        "display" : "IGF2R"
      },
      {
        "code" : "IKBKB",
        "display" : "IKBKB"
      },
      {
        "code" : "IKBKE",
        "display" : "IKBKE"
      },
      {
        "code" : "IKZF1",
        "display" : "IKZF1"
      },
      {
        "code" : "IL2",
        "display" : "IL2"
      },
      {
        "code" : "IL21R",
        "display" : "IL21R"
      },
      {
        "code" : "IL6ST",
        "display" : "IL6ST"
      },
      {
        "code" : "IL7R",
        "display" : "IL7R"
      },
      {
        "code" : "ING4",
        "display" : "ING4"
      },
      {
        "code" : "IRF4",
        "display" : "IRF4"
      },
      {
        "code" : "IRS2",
        "display" : "IRS2"
      },
      {
        "code" : "ITGA10",
        "display" : "ITGA10"
      },
      {
        "code" : "ITGA9",
        "display" : "ITGA9"
      },
      {
        "code" : "ITGB2",
        "display" : "ITGB2"
      },
      {
        "code" : "ITGB3",
        "display" : "ITGB3"
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
        "code" : "JUN",
        "display" : "JUN"
      },
      {
        "code" : "KAT6A",
        "display" : "KAT6A"
      },
      {
        "code" : "KAT6B",
        "display" : "KAT6B"
      },
      {
        "code" : "KDM5C",
        "display" : "KDM5C"
      },
      {
        "code" : "KDM6A",
        "display" : "KDM6A"
      },
      {
        "code" : "KDR",
        "display" : "KDR"
      },
      {
        "code" : "KEAP1",
        "display" : "KEAP1"
      },
      {
        "code" : "KIT",
        "display" : "KIT"
      },
      {
        "code" : "KLF6",
        "display" : "KLF6"
      },
      {
        "code" : "KRAS",
        "display" : "KRAS"
      },
      {
        "code" : "LAMP1",
        "display" : "LAMP1"
      },
      {
        "code" : "LCK",
        "display" : "LCK"
      },
      {
        "code" : "LIFR",
        "display" : "LIFR"
      },
      {
        "code" : "ADGRL3",
        "display" : "ADGRL3"
      },
      {
        "code" : "POT1",
        "display" : "POT1"
      },
      {
        "code" : "LPP",
        "display" : "LPP"
      },
      {
        "code" : "LRP1B",
        "display" : "LRP1B"
      },
      {
        "code" : "LTF",
        "display" : "LTF"
      },
      {
        "code" : "LTK",
        "display" : "LTK"
      },
      {
        "code" : "MAF",
        "display" : "MAF"
      },
      {
        "code" : "MAFB",
        "display" : "MAFB"
      },
      {
        "code" : "MAGEA1",
        "display" : "MAGEA1"
      },
      {
        "code" : "MAGI1",
        "display" : "MAGI1"
      },
      {
        "code" : "MALT1",
        "display" : "MALT1"
      },
      {
        "code" : "MAML2",
        "display" : "MAML2"
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
        "code" : "MAP2K4",
        "display" : "MAP2K4"
      },
      {
        "code" : "MAP3K7",
        "display" : "MAP3K7"
      },
      {
        "code" : "MAPK1",
        "display" : "MAPK1"
      },
      {
        "code" : "MAPK8",
        "display" : "MAPK8"
      },
      {
        "code" : "MARK1",
        "display" : "MARK1"
      },
      {
        "code" : "MARK4",
        "display" : "MARK4"
      },
      {
        "code" : "MBD1",
        "display" : "MBD1"
      },
      {
        "code" : "MCL1",
        "display" : "MCL1"
      },
      {
        "code" : "MDM2",
        "display" : "MDM2"
      },
      {
        "code" : "MDM4",
        "display" : "MDM4"
      },
      {
        "code" : "MEN1",
        "display" : "MEN1"
      },
      {
        "code" : "MET",
        "display" : "MET"
      },
      {
        "code" : "MITF",
        "display" : "MITF"
      },
      {
        "code" : "MLH1",
        "display" : "MLH1"
      },
      {
        "code" : "KMT2A",
        "display" : "KMT2A"
      },
      {
        "code" : "KMT2D",
        "display" : "KMT2D"
      },
      {
        "code" : "KMT2C",
        "display" : "KMT2C"
      },
      {
        "code" : "MLLT10",
        "display" : "MLLT10"
      },
      {
        "code" : "MMP2",
        "display" : "MMP2"
      },
      {
        "code" : "MN1",
        "display" : "MN1"
      },
      {
        "code" : "MPL",
        "display" : "MPL"
      },
      {
        "code" : "MRE11",
        "display" : "MRE11"
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
        "code" : "MTOR",
        "display" : "MTOR"
      },
      {
        "code" : "MTR",
        "display" : "MTR"
      },
      {
        "code" : "MTRR",
        "display" : "MTRR"
      },
      {
        "code" : "MUC1",
        "display" : "MUC1"
      },
      {
        "code" : "MUTYH",
        "display" : "MUTYH"
      },
      {
        "code" : "MYB",
        "display" : "MYB"
      },
      {
        "code" : "MYC",
        "display" : "MYC"
      },
      {
        "code" : "MYCL",
        "display" : "MYCL"
      },
      {
        "code" : "MYCN",
        "display" : "MYCN"
      },
      {
        "code" : "MYD88",
        "display" : "MYD88"
      },
      {
        "code" : "MYH11",
        "display" : "MYH11"
      },
      {
        "code" : "MYH9",
        "display" : "MYH9"
      },
      {
        "code" : "NBN",
        "display" : "NBN"
      },
      {
        "code" : "NCOA1",
        "display" : "NCOA1"
      },
      {
        "code" : "NCOA2",
        "display" : "NCOA2"
      },
      {
        "code" : "NCOA4",
        "display" : "NCOA4"
      },
      {
        "code" : "NF1",
        "display" : "NF1"
      },
      {
        "code" : "NF2",
        "display" : "NF2"
      },
      {
        "code" : "NFE2L2",
        "display" : "NFE2L2"
      },
      {
        "code" : "NFKB1",
        "display" : "NFKB1"
      },
      {
        "code" : "NFKB2",
        "display" : "NFKB2"
      },
      {
        "code" : "NIN",
        "display" : "NIN"
      },
      {
        "code" : "NKX2-1",
        "display" : "NKX2-1"
      },
      {
        "code" : "NLRP1",
        "display" : "NLRP1"
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
        "code" : "NOTCH4",
        "display" : "NOTCH4"
      },
      {
        "code" : "NPM1",
        "display" : "NPM1"
      },
      {
        "code" : "NRAS",
        "display" : "NRAS"
      },
      {
        "code" : "NSD1",
        "display" : "NSD1"
      },
      {
        "code" : "NTRK1",
        "display" : "NTRK1"
      },
      {
        "code" : "NTRK3",
        "display" : "NTRK3"
      },
      {
        "code" : "NUMA1",
        "display" : "NUMA1"
      },
      {
        "code" : "NUP214",
        "display" : "NUP214"
      },
      {
        "code" : "NUP98",
        "display" : "NUP98"
      },
      {
        "code" : "PAK3",
        "display" : "PAK3"
      },
      {
        "code" : "PALB2",
        "display" : "PALB2"
      },
      {
        "code" : "PARP1",
        "display" : "PARP1"
      },
      {
        "code" : "PAX3",
        "display" : "PAX3"
      },
      {
        "code" : "PAX5",
        "display" : "PAX5"
      },
      {
        "code" : "PAX7",
        "display" : "PAX7"
      },
      {
        "code" : "PAX8",
        "display" : "PAX8"
      },
      {
        "code" : "PBRM1",
        "display" : "PBRM1"
      },
      {
        "code" : "PBX1",
        "display" : "PBX1"
      },
      {
        "code" : "PDE4DIP",
        "display" : "PDE4DIP"
      },
      {
        "code" : "PDGFB",
        "display" : "PDGFB"
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
        "code" : "PER1",
        "display" : "PER1"
      },
      {
        "code" : "PGAP3",
        "display" : "PGAP3"
      },
      {
        "code" : "PHOX2B",
        "display" : "PHOX2B"
      },
      {
        "code" : "PIK3C2B",
        "display" : "PIK3C2B"
      },
      {
        "code" : "PIK3CA",
        "display" : "PIK3CA"
      },
      {
        "code" : "PIK3CB",
        "display" : "PIK3CB"
      },
      {
        "code" : "PIK3CD",
        "display" : "PIK3CD"
      },
      {
        "code" : "PIK3CG",
        "display" : "PIK3CG"
      },
      {
        "code" : "PIK3R1",
        "display" : "PIK3R1"
      },
      {
        "code" : "PIK3R2",
        "display" : "PIK3R2"
      },
      {
        "code" : "PIM1",
        "display" : "PIM1"
      },
      {
        "code" : "PKHD1",
        "display" : "PKHD1"
      },
      {
        "code" : "PLAG1",
        "display" : "PLAG1"
      },
      {
        "code" : "PLCG1",
        "display" : "PLCG1"
      },
      {
        "code" : "PLEKHG5",
        "display" : "PLEKHG5"
      },
      {
        "code" : "PML",
        "display" : "PML"
      },
      {
        "code" : "PMS1",
        "display" : "PMS1"
      },
      {
        "code" : "PMS2",
        "display" : "PMS2"
      },
      {
        "code" : "POU5F1",
        "display" : "POU5F1"
      },
      {
        "code" : "PPARG",
        "display" : "PPARG"
      },
      {
        "code" : "PPP2R1A",
        "display" : "PPP2R1A"
      },
      {
        "code" : "PRDM1",
        "display" : "PRDM1"
      },
      {
        "code" : "PRKAR1A",
        "display" : "PRKAR1A"
      },
      {
        "code" : "PRKDC",
        "display" : "PRKDC"
      },
      {
        "code" : "PSIP1",
        "display" : "PSIP1"
      },
      {
        "code" : "PTCH1",
        "display" : "PTCH1"
      },
      {
        "code" : "PTEN",
        "display" : "PTEN"
      },
      {
        "code" : "PTGS2",
        "display" : "PTGS2"
      },
      {
        "code" : "PTPN11",
        "display" : "PTPN11"
      },
      {
        "code" : "PTPRD",
        "display" : "PTPRD"
      },
      {
        "code" : "PTPRT",
        "display" : "PTPRT"
      },
      {
        "code" : "RAD50",
        "display" : "RAD50"
      },
      {
        "code" : "RAF1",
        "display" : "RAF1"
      },
      {
        "code" : "RALGDS",
        "display" : "RALGDS"
      },
      {
        "code" : "RARA",
        "display" : "RARA"
      },
      {
        "code" : "RB1",
        "display" : "RB1"
      },
      {
        "code" : "RECQL4",
        "display" : "RECQL4"
      },
      {
        "code" : "REL",
        "display" : "REL"
      },
      {
        "code" : "RET",
        "display" : "RET"
      },
      {
        "code" : "RHOH",
        "display" : "RHOH"
      },
      {
        "code" : "RNASEL",
        "display" : "RNASEL"
      },
      {
        "code" : "RNF2",
        "display" : "RNF2"
      },
      {
        "code" : "RNF213",
        "display" : "RNF213"
      },
      {
        "code" : "ROS1",
        "display" : "ROS1"
      },
      {
        "code" : "RPS6KA2",
        "display" : "RPS6KA2"
      },
      {
        "code" : "RRM1",
        "display" : "RRM1"
      },
      {
        "code" : "RUNX1",
        "display" : "RUNX1"
      },
      {
        "code" : "RUNX1T1",
        "display" : "RUNX1T1"
      },
      {
        "code" : "SAMD9",
        "display" : "SAMD9"
      },
      {
        "code" : "SBDS",
        "display" : "SBDS"
      },
      {
        "code" : "SDHA",
        "display" : "SDHA"
      },
      {
        "code" : "SDHB",
        "display" : "SDHB"
      },
      {
        "code" : "SDHC",
        "display" : "SDHC"
      },
      {
        "code" : "SDHD",
        "display" : "SDHD"
      },
      {
        "code" : "SEPTIN9",
        "display" : "SEPTIN9"
      },
      {
        "code" : "SETD2",
        "display" : "SETD2"
      },
      {
        "code" : "SF3B1",
        "display" : "SF3B1"
      },
      {
        "code" : "SGK1",
        "display" : "SGK1"
      },
      {
        "code" : "SH2D1A",
        "display" : "SH2D1A"
      },
      {
        "code" : "SMAD2",
        "display" : "SMAD2"
      },
      {
        "code" : "SMAD4",
        "display" : "SMAD4"
      },
      {
        "code" : "SMARCA4",
        "display" : "SMARCA4"
      },
      {
        "code" : "SMARCB1",
        "display" : "SMARCB1"
      },
      {
        "code" : "SMO",
        "display" : "SMO"
      },
      {
        "code" : "SMUG1",
        "display" : "SMUG1"
      },
      {
        "code" : "SOCS1",
        "display" : "SOCS1"
      },
      {
        "code" : "SOX11",
        "display" : "SOX11"
      },
      {
        "code" : "SOX2",
        "display" : "SOX2"
      },
      {
        "code" : "SRC",
        "display" : "SRC"
      },
      {
        "code" : "SSX1",
        "display" : "SSX1"
      },
      {
        "code" : "STK11",
        "display" : "STK11"
      },
      {
        "code" : "STK36",
        "display" : "STK36"
      },
      {
        "code" : "SUFU",
        "display" : "SUFU"
      },
      {
        "code" : "SYK",
        "display" : "SYK"
      },
      {
        "code" : "SYNE1",
        "display" : "SYNE1"
      },
      {
        "code" : "TAF1",
        "display" : "TAF1"
      },
      {
        "code" : "TAF1L",
        "display" : "TAF1L"
      },
      {
        "code" : "TAL1",
        "display" : "TAL1"
      },
      {
        "code" : "TBX22",
        "display" : "TBX22"
      },
      {
        "code" : "TCF12",
        "display" : "TCF12"
      },
      {
        "code" : "TCF3",
        "display" : "TCF3"
      },
      {
        "code" : "TCF7L1",
        "display" : "TCF7L1"
      },
      {
        "code" : "TCF7L2",
        "display" : "TCF7L2"
      },
      {
        "code" : "TCL1A",
        "display" : "TCL1A"
      },
      {
        "code" : "TET1",
        "display" : "TET1"
      },
      {
        "code" : "TET2",
        "display" : "TET2"
      },
      {
        "code" : "TFE3",
        "display" : "TFE3"
      },
      {
        "code" : "TGFBR2",
        "display" : "TGFBR2"
      },
      {
        "code" : "TGM7",
        "display" : "TGM7"
      },
      {
        "code" : "THBS1",
        "display" : "THBS1"
      },
      {
        "code" : "TIMP3",
        "display" : "TIMP3"
      },
      {
        "code" : "TLR4",
        "display" : "TLR4"
      },
      {
        "code" : "TLX1",
        "display" : "TLX1"
      },
      {
        "code" : "TNFAIP3",
        "display" : "TNFAIP3"
      },
      {
        "code" : "TNFRSF14",
        "display" : "TNFRSF14"
      },
      {
        "code" : "TNK2",
        "display" : "TNK2"
      },
      {
        "code" : "TOP1",
        "display" : "TOP1"
      },
      {
        "code" : "TP53",
        "display" : "TP53"
      },
      {
        "code" : "TPR",
        "display" : "TPR"
      },
      {
        "code" : "TRIM24",
        "display" : "TRIM24"
      },
      {
        "code" : "TRIM33",
        "display" : "TRIM33"
      },
      {
        "code" : "TRIP11",
        "display" : "TRIP11"
      },
      {
        "code" : "TRRAP",
        "display" : "TRRAP"
      },
      {
        "code" : "TSC1",
        "display" : "TSC1"
      },
      {
        "code" : "TSC2",
        "display" : "TSC2"
      },
      {
        "code" : "TSHR",
        "display" : "TSHR"
      },
      {
        "code" : "UBR5",
        "display" : "UBR5"
      },
      {
        "code" : "UGT1A1",
        "display" : "UGT1A1"
      },
      {
        "code" : "USP9X",
        "display" : "USP9X"
      },
      {
        "code" : "VHL",
        "display" : "VHL"
      },
      {
        "code" : "WAS",
        "display" : "WAS"
      },
      {
        "code" : "NSD2",
        "display" : "NSD2"
      },
      {
        "code" : "WRN",
        "display" : "WRN"
      },
      {
        "code" : "WT1",
        "display" : "WT1"
      },
      {
        "code" : "XPA",
        "display" : "XPA"
      },
      {
        "code" : "XPC",
        "display" : "XPC"
      },
      {
        "code" : "XPO1",
        "display" : "XPO1"
      },
      {
        "code" : "XRCC2",
        "display" : "XRCC2"
      },
      {
        "code" : "ZNF384",
        "display" : "ZNF384"
      },
      {
        "code" : "ZNF521",
        "display" : "ZNF521"
      }]
    }]
  }
}

```
