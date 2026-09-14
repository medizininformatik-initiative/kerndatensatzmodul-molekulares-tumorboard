# MII VS MTB Panel TSO 500 SNVs - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS MTB Panel TSO 500 SNVs**

## ValueSet: MII VS MTB Panel TSO 500 SNVs 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tso-500-snv | *Version*:2026.0.1 |
| Active Stand: 2026-09-14 | *Maschinenlesbarer Name*:MII_VS_MTB_Panel_Tso500Snv |

 
Genliste des Panels: TruSight Oncology 500 — SNV-Genliste (523 Gene). Kodiert als HGNC-Gensymbole; TODO:REVIEW HGNC-ID-Mapping. 

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
  "id" : "mii-vs-mtb-panel-tso-500-snv",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tso-500-snv",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Panel_Tso500Snv",
  "title" : "MII VS MTB Panel TSO 500 SNVs",
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
  "description" : "Genliste des Panels: TruSight Oncology 500 — SNV-Genliste (523 Gene). Kodiert als HGNC-Gensymbole; TODO:REVIEW HGNC-ID-Mapping.",
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
        "code" : "ACVR1",
        "display" : "ACVR1"
      },
      {
        "code" : "ACVR1B",
        "display" : "ACVR1B"
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
        "code" : "ALOX12B",
        "display" : "ALOX12B"
      },
      {
        "code" : "ANKRD11",
        "display" : "ANKRD11"
      },
      {
        "code" : "ANKRD26",
        "display" : "ANKRD26"
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
        "code" : "ARFRP1",
        "display" : "ARFRP1"
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
        "code" : "BBC3",
        "display" : "BBC3"
      },
      {
        "code" : "BCL10",
        "display" : "BCL10"
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
        "code" : "BCL2L11",
        "display" : "BCL2L11"
      },
      {
        "code" : "BCL2L2",
        "display" : "BCL2L2"
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
        "code" : "BCORL1",
        "display" : "BCORL1"
      },
      {
        "code" : "BCR",
        "display" : "BCR"
      },
      {
        "code" : "BIRC3",
        "display" : "BIRC3"
      },
      {
        "code" : "BLM",
        "display" : "BLM"
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
        "code" : "BRCA1",
        "display" : "BRCA1"
      },
      {
        "code" : "BRCA2",
        "display" : "BRCA2"
      },
      {
        "code" : "BRD4",
        "display" : "BRD4"
      },
      {
        "code" : "BRIP1",
        "display" : "BRIP1"
      },
      {
        "code" : "BTG1",
        "display" : "BTG1"
      },
      {
        "code" : "BTK",
        "display" : "BTK"
      },
      {
        "code" : "C11orf30",
        "display" : "C11orf30"
      },
      {
        "code" : "CALR",
        "display" : "CALR"
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
        "code" : "CD274",
        "display" : "CD274"
      },
      {
        "code" : "CD276",
        "display" : "CD276"
      },
      {
        "code" : "CD74",
        "display" : "CD74"
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
        "code" : "CEBPA",
        "display" : "CEBPA"
      },
      {
        "code" : "CENPA",
        "display" : "CENPA"
      },
      {
        "code" : "CHD2",
        "display" : "CHD2"
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
        "code" : "CREBBP",
        "display" : "CREBBP"
      },
      {
        "code" : "CRKL",
        "display" : "CRKL"
      },
      {
        "code" : "CRLF2",
        "display" : "CRLF2"
      },
      {
        "code" : "CSF1R",
        "display" : "CSF1R"
      },
      {
        "code" : "CSF3R",
        "display" : "CSF3R"
      },
      {
        "code" : "CSNK1A1",
        "display" : "CSNK1A1"
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
        "code" : "CTNNA1",
        "display" : "CTNNA1"
      },
      {
        "code" : "CTNNB1",
        "display" : "CTNNB1"
      },
      {
        "code" : "CUL3",
        "display" : "CUL3"
      },
      {
        "code" : "CUX1",
        "display" : "CUX1"
      },
      {
        "code" : "CXCR4",
        "display" : "CXCR4"
      },
      {
        "code" : "CYLD",
        "display" : "CYLD"
      },
      {
        "code" : "DAXX",
        "display" : "DAXX"
      },
      {
        "code" : "DCUN1D1",
        "display" : "DCUN1D1"
      },
      {
        "code" : "DDR2",
        "display" : "DDR2"
      },
      {
        "code" : "DDX41",
        "display" : "DDX41"
      },
      {
        "code" : "DHX15",
        "display" : "DHX15"
      },
      {
        "code" : "DICER1",
        "display" : "DICER1"
      },
      {
        "code" : "DIS3",
        "display" : "DIS3"
      },
      {
        "code" : "DNAJB1",
        "display" : "DNAJB1"
      },
      {
        "code" : "DNMT1",
        "display" : "DNMT1"
      },
      {
        "code" : "DNMT3A",
        "display" : "DNMT3A"
      },
      {
        "code" : "DNMT3B",
        "display" : "DNMT3B"
      },
      {
        "code" : "DOT1L",
        "display" : "DOT1L"
      },
      {
        "code" : "E2F3",
        "display" : "E2F3"
      },
      {
        "code" : "EED",
        "display" : "EED"
      },
      {
        "code" : "EGFL7",
        "display" : "EGFL7"
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
        "code" : "EIF4A2",
        "display" : "EIF4A2"
      },
      {
        "code" : "EIF4E",
        "display" : "EIF4E"
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
        "code" : "EPCAM",
        "display" : "EPCAM"
      },
      {
        "code" : "EPHA3",
        "display" : "EPHA3"
      },
      {
        "code" : "EPHA5",
        "display" : "EPHA5"
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
        "code" : "ERRFI1",
        "display" : "ERRFI1"
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
        "code" : "ETV6",
        "display" : "ETV6"
      },
      {
        "code" : "EWSR1",
        "display" : "EWSR1"
      },
      {
        "code" : "EZH2",
        "display" : "EZH2"
      },
      {
        "code" : "FAM123B",
        "display" : "FAM123B"
      },
      {
        "code" : "FAM175A",
        "display" : "FAM175A"
      },
      {
        "code" : "FAM46C",
        "display" : "FAM46C"
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
        "code" : "FGF1",
        "display" : "FGF1"
      },
      {
        "code" : "FGF10",
        "display" : "FGF10"
      },
      {
        "code" : "FGF14",
        "display" : "FGF14"
      },
      {
        "code" : "FGF19",
        "display" : "FGF19"
      },
      {
        "code" : "FGF2",
        "display" : "FGF2"
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
        "code" : "FGF5",
        "display" : "FGF5"
      },
      {
        "code" : "FGF6",
        "display" : "FGF6"
      },
      {
        "code" : "FGF7",
        "display" : "FGF7"
      },
      {
        "code" : "FGF8",
        "display" : "FGF8"
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
        "code" : "FOXP1",
        "display" : "FOXP1"
      },
      {
        "code" : "FRS2",
        "display" : "FRS2"
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
        "code" : "GABRA6",
        "display" : "GABRA6"
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
        "code" : "GATA4",
        "display" : "GATA4"
      },
      {
        "code" : "GATA6",
        "display" : "GATA6"
      },
      {
        "code" : "GEN1",
        "display" : "GEN1"
      },
      {
        "code" : "GID4",
        "display" : "GID4"
      },
      {
        "code" : "GLI1",
        "display" : "GLI1"
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
        "code" : "GPR124",
        "display" : "GPR124"
      },
      {
        "code" : "GPS2",
        "display" : "GPS2"
      },
      {
        "code" : "GREM1",
        "display" : "GREM1"
      },
      {
        "code" : "GRIN2A",
        "display" : "GRIN2A"
      },
      {
        "code" : "GRM3",
        "display" : "GRM3"
      },
      {
        "code" : "GSK3B",
        "display" : "GSK3B"
      },
      {
        "code" : "H3F3A",
        "display" : "H3F3A"
      },
      {
        "code" : "H3F3B",
        "display" : "H3F3B"
      },
      {
        "code" : "H3F3C",
        "display" : "H3F3C"
      },
      {
        "code" : "HGF",
        "display" : "HGF"
      },
      {
        "code" : "HIST1H1C",
        "display" : "HIST1H1C"
      },
      {
        "code" : "HIST1H2BD",
        "display" : "HIST1H2BD"
      },
      {
        "code" : "HIST1H3A",
        "display" : "HIST1H3A"
      },
      {
        "code" : "HIST1H3B",
        "display" : "HIST1H3B"
      },
      {
        "code" : "HIST1H3C",
        "display" : "HIST1H3C"
      },
      {
        "code" : "HIST1H3D",
        "display" : "HIST1H3D"
      },
      {
        "code" : "HIST1H3E",
        "display" : "HIST1H3E"
      },
      {
        "code" : "HIST1H3F",
        "display" : "HIST1H3F"
      },
      {
        "code" : "HIST1H3G",
        "display" : "HIST1H3G"
      },
      {
        "code" : "HIST1H3H",
        "display" : "HIST1H3H"
      },
      {
        "code" : "HIST1H3I",
        "display" : "HIST1H3I"
      },
      {
        "code" : "HIST1H3J",
        "display" : "HIST1H3J"
      },
      {
        "code" : "HIST2H3A",
        "display" : "HIST2H3A"
      },
      {
        "code" : "HIST2H3C",
        "display" : "HIST2H3C"
      },
      {
        "code" : "HIST2H3D",
        "display" : "HIST2H3D"
      },
      {
        "code" : "HIST3H3",
        "display" : "HIST3H3"
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
        "code" : "HNRNPK",
        "display" : "HNRNPK"
      },
      {
        "code" : "HOXB13",
        "display" : "HOXB13"
      },
      {
        "code" : "HRAS",
        "display" : "HRAS"
      },
      {
        "code" : "HSD3B1",
        "display" : "HSD3B1"
      },
      {
        "code" : "HSP90AA1",
        "display" : "HSP90AA1"
      },
      {
        "code" : "ICOSLG",
        "display" : "ICOSLG"
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
        "code" : "IFNGR1",
        "display" : "IFNGR1"
      },
      {
        "code" : "IGF1",
        "display" : "IGF1"
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
        "code" : "IKBKE",
        "display" : "IKBKE"
      },
      {
        "code" : "IKZF1",
        "display" : "IKZF1"
      },
      {
        "code" : "IL10",
        "display" : "IL10"
      },
      {
        "code" : "IL7R",
        "display" : "IL7R"
      },
      {
        "code" : "INHA",
        "display" : "INHA"
      },
      {
        "code" : "INHBA",
        "display" : "INHBA"
      },
      {
        "code" : "INPP4A",
        "display" : "INPP4A"
      },
      {
        "code" : "INPP4B",
        "display" : "INPP4B"
      },
      {
        "code" : "INSR",
        "display" : "INSR"
      },
      {
        "code" : "IRF2",
        "display" : "IRF2"
      },
      {
        "code" : "IRF4",
        "display" : "IRF4"
      },
      {
        "code" : "IRS1",
        "display" : "IRS1"
      },
      {
        "code" : "IRS2",
        "display" : "IRS2"
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
        "code" : "KDM5A",
        "display" : "KDM5A"
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
        "code" : "KIF5B",
        "display" : "KIF5B"
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
        "code" : "KLHL6",
        "display" : "KLHL6"
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
        "code" : "KRAS",
        "display" : "KRAS"
      },
      {
        "code" : "LAMP1",
        "display" : "LAMP1"
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
        "code" : "LMO1",
        "display" : "LMO1"
      },
      {
        "code" : "LRP1B",
        "display" : "LRP1B"
      },
      {
        "code" : "LYN",
        "display" : "LYN"
      },
      {
        "code" : "LZTR1",
        "display" : "LZTR1"
      },
      {
        "code" : "MAGI2",
        "display" : "MAGI2"
      },
      {
        "code" : "MALT1",
        "display" : "MALT1"
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
        "code" : "MAP3K1",
        "display" : "MAP3K1"
      },
      {
        "code" : "MAP3K13",
        "display" : "MAP3K13"
      },
      {
        "code" : "MAP3K14",
        "display" : "MAP3K14"
      },
      {
        "code" : "MAP3K4",
        "display" : "MAP3K4"
      },
      {
        "code" : "MAPK1",
        "display" : "MAPK1"
      },
      {
        "code" : "MAPK3",
        "display" : "MAPK3"
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
        "code" : "MDC1",
        "display" : "MDC1"
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
        "code" : "MLL",
        "display" : "MLL"
      },
      {
        "code" : "MLLT3",
        "display" : "MLLT3"
      },
      {
        "code" : "MPL",
        "display" : "MPL"
      },
      {
        "code" : "MRE11A",
        "display" : "MRE11A"
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
        "code" : "MST1",
        "display" : "MST1"
      },
      {
        "code" : "MST1R",
        "display" : "MST1R"
      },
      {
        "code" : "MTOR",
        "display" : "MTOR"
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
        "code" : "MYCL1",
        "display" : "MYCL1"
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
        "code" : "NAB2",
        "display" : "NAB2"
      },
      {
        "code" : "NBN",
        "display" : "NBN"
      },
      {
        "code" : "NCOA3",
        "display" : "NCOA3"
      },
      {
        "code" : "NCOR1",
        "display" : "NCOR1"
      },
      {
        "code" : "NEGR1",
        "display" : "NEGR1"
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
        "code" : "NFKBIA",
        "display" : "NFKBIA"
      },
      {
        "code" : "NKX2-1",
        "display" : "NKX2-1"
      },
      {
        "code" : "NKX3-1",
        "display" : "NKX3-1"
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
        "code" : "NPM1",
        "display" : "NPM1"
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
        "code" : "NSD1",
        "display" : "NSD1"
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
        "code" : "PAK1",
        "display" : "PAK1"
      },
      {
        "code" : "PAK3",
        "display" : "PAK3"
      },
      {
        "code" : "PAK7",
        "display" : "PAK7"
      },
      {
        "code" : "PALB2",
        "display" : "PALB2"
      },
      {
        "code" : "PARK2",
        "display" : "PARK2"
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
        "code" : "PDCD1",
        "display" : "PDCD1"
      },
      {
        "code" : "PDCD1LG2",
        "display" : "PDCD1LG2"
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
        "code" : "PDK1",
        "display" : "PDK1"
      },
      {
        "code" : "PDPK1",
        "display" : "PDPK1"
      },
      {
        "code" : "PGR",
        "display" : "PGR"
      },
      {
        "code" : "PHF6",
        "display" : "PHF6"
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
        "code" : "PIK3C2G",
        "display" : "PIK3C2G"
      },
      {
        "code" : "PIK3C3",
        "display" : "PIK3C3"
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
        "code" : "PIK3R3",
        "display" : "PIK3R3"
      },
      {
        "code" : "PIM1",
        "display" : "PIM1"
      },
      {
        "code" : "PLCG2",
        "display" : "PLCG2"
      },
      {
        "code" : "PLK2",
        "display" : "PLK2"
      },
      {
        "code" : "PMAIP1",
        "display" : "PMAIP1"
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
        "code" : "PNRC1",
        "display" : "PNRC1"
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
        "code" : "PPARG",
        "display" : "PPARG"
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
        "code" : "PREX2",
        "display" : "PREX2"
      },
      {
        "code" : "PRKAR1A",
        "display" : "PRKAR1A"
      },
      {
        "code" : "PRKCI",
        "display" : "PRKCI"
      },
      {
        "code" : "PRKDC",
        "display" : "PRKDC"
      },
      {
        "code" : "PRSS8",
        "display" : "PRSS8"
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
        "code" : "PTPRS",
        "display" : "PTPRS"
      },
      {
        "code" : "PTPRT",
        "display" : "PTPRT"
      },
      {
        "code" : "QKI",
        "display" : "QKI"
      },
      {
        "code" : "RAB35",
        "display" : "RAB35"
      },
      {
        "code" : "RAC1",
        "display" : "RAC1"
      },
      {
        "code" : "RAD21",
        "display" : "RAD21"
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
        "code" : "RANBP2",
        "display" : "RANBP2"
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
        "code" : "RB1",
        "display" : "RB1"
      },
      {
        "code" : "RBM10",
        "display" : "RBM10"
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
        "code" : "RFWD2",
        "display" : "RFWD2"
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
        "code" : "RNF43",
        "display" : "RNF43"
      },
      {
        "code" : "ROS1",
        "display" : "ROS1"
      },
      {
        "code" : "RPS6KA4",
        "display" : "RPS6KA4"
      },
      {
        "code" : "RPS6KB1",
        "display" : "RPS6KB1"
      },
      {
        "code" : "RPS6KB2",
        "display" : "RPS6KB2"
      },
      {
        "code" : "RPTOR",
        "display" : "RPTOR"
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
        "code" : "RYBP",
        "display" : "RYBP"
      },
      {
        "code" : "SDHA",
        "display" : "SDHA"
      },
      {
        "code" : "SDHAF2",
        "display" : "SDHAF2"
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
        "code" : "SH2B3",
        "display" : "SH2B3"
      },
      {
        "code" : "SH2D1A",
        "display" : "SH2D1A"
      },
      {
        "code" : "SHQ1",
        "display" : "SHQ1"
      },
      {
        "code" : "SLIT2",
        "display" : "SLIT2"
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
        "code" : "SMAD3",
        "display" : "SMAD3"
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
        "code" : "SMARCD1",
        "display" : "SMARCD1"
      },
      {
        "code" : "SMC1A",
        "display" : "SMC1A"
      },
      {
        "code" : "SMC3",
        "display" : "SMC3"
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
        "code" : "SOX10",
        "display" : "SOX10"
      },
      {
        "code" : "SOX17",
        "display" : "SOX17"
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
        "code" : "SPTA1",
        "display" : "SPTA1"
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
        "code" : "STAG1",
        "display" : "STAG1"
      },
      {
        "code" : "STAG2",
        "display" : "STAG2"
      },
      {
        "code" : "STAT3",
        "display" : "STAT3"
      },
      {
        "code" : "STAT4",
        "display" : "STAT4"
      },
      {
        "code" : "STAT5A",
        "display" : "STAT5A"
      },
      {
        "code" : "STAT5B",
        "display" : "STAT5B"
      },
      {
        "code" : "STK11",
        "display" : "STK11"
      },
      {
        "code" : "STK40",
        "display" : "STK40"
      },
      {
        "code" : "SUFU",
        "display" : "SUFU"
      },
      {
        "code" : "SUZ12",
        "display" : "SUZ12"
      },
      {
        "code" : "SYK",
        "display" : "SYK"
      },
      {
        "code" : "TAF1",
        "display" : "TAF1"
      },
      {
        "code" : "TBX3",
        "display" : "TBX3"
      },
      {
        "code" : "TCEB1",
        "display" : "TCEB1"
      },
      {
        "code" : "TCF3",
        "display" : "TCF3"
      },
      {
        "code" : "TCF7L2",
        "display" : "TCF7L2"
      },
      {
        "code" : "TERC",
        "display" : "TERC"
      },
      {
        "code" : "TERT",
        "display" : "TERT"
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
        "code" : "TFRC",
        "display" : "TFRC"
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
        "code" : "TMEM127",
        "display" : "TMEM127"
      },
      {
        "code" : "TMPRSS2",
        "display" : "TMPRSS2"
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
        "code" : "TRAF2",
        "display" : "TRAF2"
      },
      {
        "code" : "TRAF7",
        "display" : "TRAF7"
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
        "code" : "VEGFA",
        "display" : "VEGFA"
      },
      {
        "code" : "VHL",
        "display" : "VHL"
      },
      {
        "code" : "VTCN1",
        "display" : "VTCN1"
      },
      {
        "code" : "WISP3",
        "display" : "WISP3"
      },
      {
        "code" : "WT1",
        "display" : "WT1"
      },
      {
        "code" : "XIAP",
        "display" : "XIAP"
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
        "code" : "YAP1",
        "display" : "YAP1"
      },
      {
        "code" : "YES1",
        "display" : "YES1"
      },
      {
        "code" : "ZBTB2",
        "display" : "ZBTB2"
      },
      {
        "code" : "ZBTB7A",
        "display" : "ZBTB7A"
      },
      {
        "code" : "ZFHX3",
        "display" : "ZFHX3"
      },
      {
        "code" : "ZNF217",
        "display" : "ZNF217"
      },
      {
        "code" : "ZNF703",
        "display" : "ZNF703"
      },
      {
        "code" : "ZRSR2",
        "display" : "ZRSR2"
      }]
    }]
  }
}

```
