# MII VS MTB Panel OFA plus - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS MTB Panel OFA plus**

## ValueSet: MII VS MTB Panel OFA plus 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-ofa-plus | *Version*:2026.0.1 |
| Active Stand: 2026-09-14 | *Maschinenlesbarer Name*:MII_VS_MTB_Panel_OfaPlus |

 
Genliste des Panels: Oncomine Focus Assay Plus (517 Gene). Kodiert als HGNC-Gensymbole; TODO:REVIEW HGNC-ID-Mapping. 

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
  "id" : "mii-vs-mtb-panel-ofa-plus",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-ofa-plus",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Panel_OfaPlus",
  "title" : "MII VS MTB Panel OFA plus",
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
  "description" : "Genliste des Panels: Oncomine Focus Assay Plus (517 Gene). Kodiert als HGNC-Gensymbole; TODO:REVIEW HGNC-ID-Mapping.",
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
        "code" : "A1CF",
        "display" : "A1CF"
      },
      {
        "code" : "ABCB1",
        "display" : "ABCB1"
      },
      {
        "code" : "ABL1",
        "display" : "ABL1"
      },
      {
        "code" : "ABL2",
        "display" : "ABL2"
      },
      {
        "code" : "ABRAXAS1",
        "display" : "ABRAXAS1"
      },
      {
        "code" : "ACSM2B",
        "display" : "ACSM2B"
      },
      {
        "code" : "ACVR1",
        "display" : "ACVR1"
      },
      {
        "code" : "ACVR1B",
        "display" : "ACVR1B"
      },
      {
        "code" : "ACVR2A",
        "display" : "ACVR2A"
      },
      {
        "code" : "ADAM18",
        "display" : "ADAM18"
      },
      {
        "code" : "ADAMTS12",
        "display" : "ADAMTS12"
      },
      {
        "code" : "ADAMTS2",
        "display" : "ADAMTS2"
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
        "code" : "AMER1",
        "display" : "AMER1"
      },
      {
        "code" : "ANO4",
        "display" : "ANO4"
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
        "code" : "ARAF",
        "display" : "ARAF"
      },
      {
        "code" : "ARHGAP35",
        "display" : "ARHGAP35"
      },
      {
        "code" : "ARID1A",
        "display" : "ARID1A"
      },
      {
        "code" : "ARID1B",
        "display" : "ARID1B"
      },
      {
        "code" : "ARID2",
        "display" : "ARID2"
      },
      {
        "code" : "ARID5B",
        "display" : "ARID5B"
      },
      {
        "code" : "ODAD2",
        "display" : "ODAD2"
      },
      {
        "code" : "ASXL1",
        "display" : "ASXL1"
      },
      {
        "code" : "ASXL2",
        "display" : "ASXL2"
      },
      {
        "code" : "ATM",
        "display" : "ATM"
      },
      {
        "code" : "ATP1A1",
        "display" : "ATP1A1"
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
        "code" : "AXIN1",
        "display" : "AXIN1"
      },
      {
        "code" : "AXIN2",
        "display" : "AXIN2"
      },
      {
        "code" : "AXL",
        "display" : "AXL"
      },
      {
        "code" : "B2M",
        "display" : "B2M"
      },
      {
        "code" : "BAP1",
        "display" : "BAP1"
      },
      {
        "code" : "BARD1",
        "display" : "BARD1"
      },
      {
        "code" : "BCL2",
        "display" : "BCL2"
      },
      {
        "code" : "BCL2L12",
        "display" : "BCL2L12"
      },
      {
        "code" : "BCL6",
        "display" : "BCL6"
      },
      {
        "code" : "BCOR",
        "display" : "BCOR"
      },
      {
        "code" : "BCR",
        "display" : "BCR"
      },
      {
        "code" : "BLM",
        "display" : "BLM"
      },
      {
        "code" : "BMP5",
        "display" : "BMP5"
      },
      {
        "code" : "BMPR2",
        "display" : "BMPR2"
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
        "code" : "BRINP3",
        "display" : "BRINP3"
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
        "code" : "C6",
        "display" : "C6"
      },
      {
        "code" : "C8A",
        "display" : "C8A"
      },
      {
        "code" : "C8B",
        "display" : "C8B"
      },
      {
        "code" : "CACNA1D",
        "display" : "CACNA1D"
      },
      {
        "code" : "CALR",
        "display" : "CALR"
      },
      {
        "code" : "CANX",
        "display" : "CANX"
      },
      {
        "code" : "CARD11",
        "display" : "CARD11"
      },
      {
        "code" : "CASP8",
        "display" : "CASP8"
      },
      {
        "code" : "CASR",
        "display" : "CASR"
      },
      {
        "code" : "CBFB",
        "display" : "CBFB"
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
        "code" : "CCND3",
        "display" : "CCND3"
      },
      {
        "code" : "CCNE1",
        "display" : "CCNE1"
      },
      {
        "code" : "CD163",
        "display" : "CD163"
      },
      {
        "code" : "CD274",
        "display" : "CD274"
      },
      {
        "code" : "CD276",
        "display" : "CD276"
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
        "code" : "CDH10",
        "display" : "CDH10"
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
        "code" : "CDKN1A",
        "display" : "CDKN1A"
      },
      {
        "code" : "CDKN1B",
        "display" : "CDKN1B"
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
        "code" : "CHD4",
        "display" : "CHD4"
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
        "code" : "CIITA",
        "display" : "CIITA"
      },
      {
        "code" : "CNTN6",
        "display" : "CNTN6"
      },
      {
        "code" : "CNTNAP4",
        "display" : "CNTNAP4"
      },
      {
        "code" : "CNTNAP5",
        "display" : "CNTNAP5"
      },
      {
        "code" : "COL11A1",
        "display" : "COL11A1"
      },
      {
        "code" : "CREBBP",
        "display" : "CREBBP"
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
        "code" : "CTCF",
        "display" : "CTCF"
      },
      {
        "code" : "CTLA4",
        "display" : "CTLA4"
      },
      {
        "code" : "CTNNB1",
        "display" : "CTNNB1"
      },
      {
        "code" : "CTNND2",
        "display" : "CTNND2"
      },
      {
        "code" : "CUL1",
        "display" : "CUL1"
      },
      {
        "code" : "CUL3",
        "display" : "CUL3"
      },
      {
        "code" : "CUL4A",
        "display" : "CUL4A"
      },
      {
        "code" : "CUL4B",
        "display" : "CUL4B"
      },
      {
        "code" : "CYLD",
        "display" : "CYLD"
      },
      {
        "code" : "CYP2C9",
        "display" : "CYP2C9"
      },
      {
        "code" : "CYP2D6",
        "display" : "CYP2D6"
      },
      {
        "code" : "CYSLTR2",
        "display" : "CYSLTR2"
      },
      {
        "code" : "DAXX",
        "display" : "DAXX"
      },
      {
        "code" : "DCAF4L2",
        "display" : "DCAF4L2"
      },
      {
        "code" : "DCDC1",
        "display" : "DCDC1"
      },
      {
        "code" : "DDR1",
        "display" : "DDR1"
      },
      {
        "code" : "DDR2",
        "display" : "DDR2"
      },
      {
        "code" : "DDX3X",
        "display" : "DDX3X"
      },
      {
        "code" : "DGCR8",
        "display" : "DGCR8"
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
        "code" : "DOCK3",
        "display" : "DOCK3"
      },
      {
        "code" : "DPYD",
        "display" : "DPYD"
      },
      {
        "code" : "DROSHA",
        "display" : "DROSHA"
      },
      {
        "code" : "DSC1",
        "display" : "DSC1"
      },
      {
        "code" : "DSC3",
        "display" : "DSC3"
      },
      {
        "code" : "E2F1",
        "display" : "E2F1"
      },
      {
        "code" : "EGFR",
        "display" : "EGFR"
      },
      {
        "code" : "EIF1AX",
        "display" : "EIF1AX"
      },
      {
        "code" : "ELF3",
        "display" : "ELF3"
      },
      {
        "code" : "EMSY",
        "display" : "EMSY"
      },
      {
        "code" : "ENO1",
        "display" : "ENO1"
      },
      {
        "code" : "EP300",
        "display" : "EP300"
      },
      {
        "code" : "EPAS1",
        "display" : "EPAS1"
      },
      {
        "code" : "EPCAM",
        "display" : "EPCAM"
      },
      {
        "code" : "EPHA2",
        "display" : "EPHA2"
      },
      {
        "code" : "ERAP1",
        "display" : "ERAP1"
      },
      {
        "code" : "ERAP2",
        "display" : "ERAP2"
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
        "code" : "ERCC2",
        "display" : "ERCC2"
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
        "code" : "ERRFI1",
        "display" : "ERRFI1"
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
        "code" : "ETV6",
        "display" : "ETV6"
      },
      {
        "code" : "EZH2",
        "display" : "EZH2"
      },
      {
        "code" : "FAM135B",
        "display" : "FAM135B"
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
        "code" : "FANCE",
        "display" : "FANCE"
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
        "code" : "FANCI",
        "display" : "FANCI"
      },
      {
        "code" : "FANCL",
        "display" : "FANCL"
      },
      {
        "code" : "FANCM",
        "display" : "FANCM"
      },
      {
        "code" : "FAS",
        "display" : "FAS"
      },
      {
        "code" : "FAT1",
        "display" : "FAT1"
      },
      {
        "code" : "FBXW7",
        "display" : "FBXW7"
      },
      {
        "code" : "FGF19",
        "display" : "FGF19"
      },
      {
        "code" : "FGF23",
        "display" : "FGF23"
      },
      {
        "code" : "FGF3",
        "display" : "FGF3"
      },
      {
        "code" : "FGF4",
        "display" : "FGF4"
      },
      {
        "code" : "FGF7",
        "display" : "FGF7"
      },
      {
        "code" : "FGF9",
        "display" : "FGF9"
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
        "code" : "FLT3",
        "display" : "FLT3"
      },
      {
        "code" : "FLT4",
        "display" : "FLT4"
      },
      {
        "code" : "FOXA1",
        "display" : "FOXA1"
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
        "code" : "FUBP1",
        "display" : "FUBP1"
      },
      {
        "code" : "FYN",
        "display" : "FYN"
      },
      {
        "code" : "GALNT17",
        "display" : "GALNT17"
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
        "code" : "GLI1",
        "display" : "GLI1"
      },
      {
        "code" : "GLI3",
        "display" : "GLI3"
      },
      {
        "code" : "GNA11",
        "display" : "GNA11"
      },
      {
        "code" : "GNA13",
        "display" : "GNA13"
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
        "code" : "GPR158",
        "display" : "GPR158"
      },
      {
        "code" : "GPS2",
        "display" : "GPS2"
      },
      {
        "code" : "GRID2",
        "display" : "GRID2"
      },
      {
        "code" : "H1-4",
        "display" : "H1-4"
      },
      {
        "code" : "H2BC5",
        "display" : "H2BC5"
      },
      {
        "code" : "H3-3A",
        "display" : "H3-3A"
      },
      {
        "code" : "H3-3B",
        "display" : "H3-3B"
      },
      {
        "code" : "H3C2",
        "display" : "H3C2"
      },
      {
        "code" : "HCN1",
        "display" : "HCN1"
      },
      {
        "code" : "HDAC2",
        "display" : "HDAC2"
      },
      {
        "code" : "HDAC9",
        "display" : "HDAC9"
      },
      {
        "code" : "HIF1A",
        "display" : "HIF1A"
      },
      {
        "code" : "HLA-A",
        "display" : "HLA-A"
      },
      {
        "code" : "HLA-B",
        "display" : "HLA-B"
      },
      {
        "code" : "HLA-C",
        "display" : "HLA-C"
      },
      {
        "code" : "HNF1A",
        "display" : "HNF1A"
      },
      {
        "code" : "HRAS",
        "display" : "HRAS"
      },
      {
        "code" : "ID3",
        "display" : "ID3"
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
        "code" : "IKBKB",
        "display" : "IKBKB"
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
        "code" : "INPP4B",
        "display" : "INPP4B"
      },
      {
        "code" : "IRF4",
        "display" : "IRF4"
      },
      {
        "code" : "IRS4",
        "display" : "IRS4"
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
        "code" : "KCND2",
        "display" : "KCND2"
      },
      {
        "code" : "KCNH7",
        "display" : "KCNH7"
      },
      {
        "code" : "KCNJ5",
        "display" : "KCNJ5"
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
        "code" : "KEL",
        "display" : "KEL"
      },
      {
        "code" : "KIR3DL1",
        "display" : "KIR3DL1"
      },
      {
        "code" : "KIT",
        "display" : "KIT"
      },
      {
        "code" : "KLF4",
        "display" : "KLF4"
      },
      {
        "code" : "KLF5",
        "display" : "KLF5"
      },
      {
        "code" : "KLHL13",
        "display" : "KLHL13"
      },
      {
        "code" : "KMT2A",
        "display" : "KMT2A"
      },
      {
        "code" : "KMT2B",
        "display" : "KMT2B"
      },
      {
        "code" : "KMT2C",
        "display" : "KMT2C"
      },
      {
        "code" : "KMT2D",
        "display" : "KMT2D"
      },
      {
        "code" : "KNSTRN",
        "display" : "KNSTRN"
      },
      {
        "code" : "KRAS",
        "display" : "KRAS"
      },
      {
        "code" : "KRTAP21-1",
        "display" : "KRTAP21-1"
      },
      {
        "code" : "KRTAP6-2",
        "display" : "KRTAP6-2"
      },
      {
        "code" : "LARP4B",
        "display" : "LARP4B"
      },
      {
        "code" : "LATS1",
        "display" : "LATS1"
      },
      {
        "code" : "LATS2",
        "display" : "LATS2"
      },
      {
        "code" : "LRRC7",
        "display" : "LRRC7"
      },
      {
        "code" : "MAGOH",
        "display" : "MAGOH"
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
        "code" : "MAP2K7",
        "display" : "MAP2K7"
      },
      {
        "code" : "MAP3K1",
        "display" : "MAP3K1"
      },
      {
        "code" : "MAP3K4",
        "display" : "MAP3K4"
      },
      {
        "code" : "MAP3K8",
        "display" : "MAP3K8"
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
        "code" : "MARCO",
        "display" : "MARCO"
      },
      {
        "code" : "MAX",
        "display" : "MAX"
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
        "code" : "MECOM",
        "display" : "MECOM"
      },
      {
        "code" : "MED12",
        "display" : "MED12"
      },
      {
        "code" : "MEF2B",
        "display" : "MEF2B"
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
        "code" : "MGA",
        "display" : "MGA"
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
        "code" : "MLH3",
        "display" : "MLH3"
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
        "code" : "MSH3",
        "display" : "MSH3"
      },
      {
        "code" : "MSH6",
        "display" : "MSH6"
      },
      {
        "code" : "MTAP",
        "display" : "MTAP"
      },
      {
        "code" : "MTOR",
        "display" : "MTOR"
      },
      {
        "code" : "MTUS2",
        "display" : "MTUS2"
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
        "code" : "MYBL1",
        "display" : "MYBL1"
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
        "code" : "MYOD1",
        "display" : "MYOD1"
      },
      {
        "code" : "NBN",
        "display" : "NBN"
      },
      {
        "code" : "NCOR1",
        "display" : "NCOR1"
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
        "code" : "NLRC5",
        "display" : "NLRC5"
      },
      {
        "code" : "NOL4",
        "display" : "NOL4"
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
        "code" : "NOTCH4",
        "display" : "NOTCH4"
      },
      {
        "code" : "NRAS",
        "display" : "NRAS"
      },
      {
        "code" : "NRG1",
        "display" : "NRG1"
      },
      {
        "code" : "NRXN1",
        "display" : "NRXN1"
      },
      {
        "code" : "NSD2",
        "display" : "NSD2"
      },
      {
        "code" : "NT5C2",
        "display" : "NT5C2"
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
        "code" : "NUP93",
        "display" : "NUP93"
      },
      {
        "code" : "NUTM1",
        "display" : "NUTM1"
      },
      {
        "code" : "NYAP2",
        "display" : "NYAP2"
      },
      {
        "code" : "OR10G8",
        "display" : "OR10G8"
      },
      {
        "code" : "OR2G6",
        "display" : "OR2G6"
      },
      {
        "code" : "OR2L13",
        "display" : "OR2L13"
      },
      {
        "code" : "OR2L2",
        "display" : "OR2L2"
      },
      {
        "code" : "OR2L8",
        "display" : "OR2L8"
      },
      {
        "code" : "OR2M3",
        "display" : "OR2M3"
      },
      {
        "code" : "OR2T3",
        "display" : "OR2T3"
      },
      {
        "code" : "OR2T33",
        "display" : "OR2T33"
      },
      {
        "code" : "OR2T4",
        "display" : "OR2T4"
      },
      {
        "code" : "OR2W3",
        "display" : "OR2W3"
      },
      {
        "code" : "OR4A15",
        "display" : "OR4A15"
      },
      {
        "code" : "OR4C15",
        "display" : "OR4C15"
      },
      {
        "code" : "OR4C6",
        "display" : "OR4C6"
      },
      {
        "code" : "OR4M1",
        "display" : "OR4M1"
      },
      {
        "code" : "OR4M2",
        "display" : "OR4M2"
      },
      {
        "code" : "OR5D18",
        "display" : "OR5D18"
      },
      {
        "code" : "OR5F1",
        "display" : "OR5F1"
      },
      {
        "code" : "OR5L1",
        "display" : "OR5L1"
      },
      {
        "code" : "OR5L2",
        "display" : "OR5L2"
      },
      {
        "code" : "OR6F1",
        "display" : "OR6F1"
      },
      {
        "code" : "OR8H2",
        "display" : "OR8H2"
      },
      {
        "code" : "OR8I2",
        "display" : "OR8I2"
      },
      {
        "code" : "OR8U1",
        "display" : "OR8U1"
      },
      {
        "code" : "ORC4",
        "display" : "ORC4"
      },
      {
        "code" : "PAK5",
        "display" : "PAK5"
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
        "code" : "PARP2",
        "display" : "PARP2"
      },
      {
        "code" : "PARP3",
        "display" : "PARP3"
      },
      {
        "code" : "PARP4",
        "display" : "PARP4"
      },
      {
        "code" : "PAX5",
        "display" : "PAX5"
      },
      {
        "code" : "PBRM1",
        "display" : "PBRM1"
      },
      {
        "code" : "PCBP1",
        "display" : "PCBP1"
      },
      {
        "code" : "PCDH17",
        "display" : "PCDH17"
      },
      {
        "code" : "PDCD1",
        "display" : "PDCD1"
      },
      {
        "code" : "PDCD1LG2",
        "display" : "PDCD1LG2"
      },
      {
        "code" : "PDE1A",
        "display" : "PDE1A"
      },
      {
        "code" : "PDE1C",
        "display" : "PDE1C"
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
        "code" : "PDIA3",
        "display" : "PDIA3"
      },
      {
        "code" : "PGD",
        "display" : "PGD"
      },
      {
        "code" : "PHF6",
        "display" : "PHF6"
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
        "code" : "PLCG1",
        "display" : "PLCG1"
      },
      {
        "code" : "PLXDC2",
        "display" : "PLXDC2"
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
        "code" : "POLD1",
        "display" : "POLD1"
      },
      {
        "code" : "POLE",
        "display" : "POLE"
      },
      {
        "code" : "POM121L12",
        "display" : "POM121L12"
      },
      {
        "code" : "POT1",
        "display" : "POT1"
      },
      {
        "code" : "PPARG",
        "display" : "PPARG"
      },
      {
        "code" : "PPFIA2",
        "display" : "PPFIA2"
      },
      {
        "code" : "PPM1D",
        "display" : "PPM1D"
      },
      {
        "code" : "PPP2R1A",
        "display" : "PPP2R1A"
      },
      {
        "code" : "PPP2R2A",
        "display" : "PPP2R2A"
      },
      {
        "code" : "PPP6C",
        "display" : "PPP6C"
      },
      {
        "code" : "PRDM1",
        "display" : "PRDM1"
      },
      {
        "code" : "PRDM9",
        "display" : "PRDM9"
      },
      {
        "code" : "PRKACA",
        "display" : "PRKACA"
      },
      {
        "code" : "PRKACB",
        "display" : "PRKACB"
      },
      {
        "code" : "PRKAR1A",
        "display" : "PRKAR1A"
      },
      {
        "code" : "PSMB10",
        "display" : "PSMB10"
      },
      {
        "code" : "PSMB8",
        "display" : "PSMB8"
      },
      {
        "code" : "PSMB9",
        "display" : "PSMB9"
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
        "code" : "PXDNL",
        "display" : "PXDNL"
      },
      {
        "code" : "RAC1",
        "display" : "RAC1"
      },
      {
        "code" : "RAD50",
        "display" : "RAD50"
      },
      {
        "code" : "RAD51",
        "display" : "RAD51"
      },
      {
        "code" : "RAD51B",
        "display" : "RAD51B"
      },
      {
        "code" : "RAD51C",
        "display" : "RAD51C"
      },
      {
        "code" : "RAD51D",
        "display" : "RAD51D"
      },
      {
        "code" : "RAD52",
        "display" : "RAD52"
      },
      {
        "code" : "RAD54L",
        "display" : "RAD54L"
      },
      {
        "code" : "RAF1",
        "display" : "RAF1"
      },
      {
        "code" : "RARA",
        "display" : "RARA"
      },
      {
        "code" : "RASA1",
        "display" : "RASA1"
      },
      {
        "code" : "RASA2",
        "display" : "RASA2"
      },
      {
        "code" : "RB1",
        "display" : "RB1"
      },
      {
        "code" : "RBM10",
        "display" : "RBM10"
      },
      {
        "code" : "RBP3",
        "display" : "RBP3"
      },
      {
        "code" : "RECQL4",
        "display" : "RECQL4"
      },
      {
        "code" : "REG1A",
        "display" : "REG1A"
      },
      {
        "code" : "REG1B",
        "display" : "REG1B"
      },
      {
        "code" : "REG3A",
        "display" : "REG3A"
      },
      {
        "code" : "REG3G",
        "display" : "REG3G"
      },
      {
        "code" : "RELA",
        "display" : "RELA"
      },
      {
        "code" : "RET",
        "display" : "RET"
      },
      {
        "code" : "RGS7",
        "display" : "RGS7"
      },
      {
        "code" : "RHEB",
        "display" : "RHEB"
      },
      {
        "code" : "RHOA",
        "display" : "RHOA"
      },
      {
        "code" : "RICTOR",
        "display" : "RICTOR"
      },
      {
        "code" : "RIT1",
        "display" : "RIT1"
      },
      {
        "code" : "RNASEH2A",
        "display" : "RNASEH2A"
      },
      {
        "code" : "RNASEH2B",
        "display" : "RNASEH2B"
      },
      {
        "code" : "RNASEH2C",
        "display" : "RNASEH2C"
      },
      {
        "code" : "RNF43",
        "display" : "RNF43"
      },
      {
        "code" : "ROS1",
        "display" : "ROS1"
      },
      {
        "code" : "RPA1",
        "display" : "RPA1"
      },
      {
        "code" : "RPL10",
        "display" : "RPL10"
      },
      {
        "code" : "RPL22",
        "display" : "RPL22"
      },
      {
        "code" : "RPL5",
        "display" : "RPL5"
      },
      {
        "code" : "RPS6KB1",
        "display" : "RPS6KB1"
      },
      {
        "code" : "RPTN",
        "display" : "RPTN"
      },
      {
        "code" : "RPTOR",
        "display" : "RPTOR"
      },
      {
        "code" : "RSPO2",
        "display" : "RSPO2"
      },
      {
        "code" : "RSPO3",
        "display" : "RSPO3"
      },
      {
        "code" : "RUNDC3B",
        "display" : "RUNDC3B"
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
        "code" : "SETBP1",
        "display" : "SETBP1"
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
        "code" : "SH3RF2",
        "display" : "SH3RF2"
      },
      {
        "code" : "SIX1",
        "display" : "SIX1"
      },
      {
        "code" : "SIX2",
        "display" : "SIX2"
      },
      {
        "code" : "SLC15A2",
        "display" : "SLC15A2"
      },
      {
        "code" : "SLC8A1",
        "display" : "SLC8A1"
      },
      {
        "code" : "SLCO1B3",
        "display" : "SLCO1B3"
      },
      {
        "code" : "SLX4",
        "display" : "SLX4"
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
        "code" : "SMC1A",
        "display" : "SMC1A"
      },
      {
        "code" : "SMO",
        "display" : "SMO"
      },
      {
        "code" : "SNCAIP",
        "display" : "SNCAIP"
      },
      {
        "code" : "SOCS1",
        "display" : "SOCS1"
      },
      {
        "code" : "SOS1",
        "display" : "SOS1"
      },
      {
        "code" : "SOX2",
        "display" : "SOX2"
      },
      {
        "code" : "SOX9",
        "display" : "SOX9"
      },
      {
        "code" : "SPEN",
        "display" : "SPEN"
      },
      {
        "code" : "SPOP",
        "display" : "SPOP"
      },
      {
        "code" : "SRC",
        "display" : "SRC"
      },
      {
        "code" : "SRSF2",
        "display" : "SRSF2"
      },
      {
        "code" : "STAG2",
        "display" : "STAG2"
      },
      {
        "code" : "STAT1",
        "display" : "STAT1"
      },
      {
        "code" : "STAT3",
        "display" : "STAT3"
      },
      {
        "code" : "STAT5B",
        "display" : "STAT5B"
      },
      {
        "code" : "STAT6",
        "display" : "STAT6"
      },
      {
        "code" : "STK11",
        "display" : "STK11"
      },
      {
        "code" : "SUFU",
        "display" : "SUFU"
      },
      {
        "code" : "SYT10",
        "display" : "SYT10"
      },
      {
        "code" : "SYT16",
        "display" : "SYT16"
      },
      {
        "code" : "TAF1",
        "display" : "TAF1"
      },
      {
        "code" : "TAP1",
        "display" : "TAP1"
      },
      {
        "code" : "TAP2",
        "display" : "TAP2"
      },
      {
        "code" : "TAPBP",
        "display" : "TAPBP"
      },
      {
        "code" : "TBX3",
        "display" : "TBX3"
      },
      {
        "code" : "TCF7L2",
        "display" : "TCF7L2"
      },
      {
        "code" : "TERT",
        "display" : "TERT"
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
        "code" : "TFEB",
        "display" : "TFEB"
      },
      {
        "code" : "TGFBR1",
        "display" : "TGFBR1"
      },
      {
        "code" : "TGFBR2",
        "display" : "TGFBR2"
      },
      {
        "code" : "TMEM132D",
        "display" : "TMEM132D"
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
        "code" : "TOP1",
        "display" : "TOP1"
      },
      {
        "code" : "TOP2A",
        "display" : "TOP2A"
      },
      {
        "code" : "TP53",
        "display" : "TP53"
      },
      {
        "code" : "TP63",
        "display" : "TP63"
      },
      {
        "code" : "TPMT",
        "display" : "TPMT"
      },
      {
        "code" : "TPP2",
        "display" : "TPP2"
      },
      {
        "code" : "TPTE",
        "display" : "TPTE"
      },
      {
        "code" : "TRHDE",
        "display" : "TRHDE"
      },
      {
        "code" : "TRIM48",
        "display" : "TRIM48"
      },
      {
        "code" : "TRIM51",
        "display" : "TRIM51"
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
        "code" : "U2AF1",
        "display" : "U2AF1"
      },
      {
        "code" : "UGT1A1",
        "display" : "UGT1A1"
      },
      {
        "code" : "USP8",
        "display" : "USP8"
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
        "code" : "WT1",
        "display" : "WT1"
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
        "code" : "XRCC3",
        "display" : "XRCC3"
      },
      {
        "code" : "YAP1",
        "display" : "YAP1"
      },
      {
        "code" : "YES1",
        "display" : "YES1"
      },
      {
        "code" : "ZBTB20",
        "display" : "ZBTB20"
      },
      {
        "code" : "ZFHX3",
        "display" : "ZFHX3"
      },
      {
        "code" : "ZIM3",
        "display" : "ZIM3"
      },
      {
        "code" : "ZMYM3",
        "display" : "ZMYM3"
      },
      {
        "code" : "ZNF217",
        "display" : "ZNF217"
      },
      {
        "code" : "ZNF429",
        "display" : "ZNF429"
      },
      {
        "code" : "ZNF479",
        "display" : "ZNF479"
      },
      {
        "code" : "ZNF536",
        "display" : "ZNF536"
      },
      {
        "code" : "ZRSR2",
        "display" : "ZRSR2"
      }]
    }]
  }
}

```
