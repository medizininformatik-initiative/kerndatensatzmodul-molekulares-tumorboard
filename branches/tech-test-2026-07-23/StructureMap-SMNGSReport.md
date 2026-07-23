# SMNGSReport - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMNGSReport**

## StructureMap: SMNGSReport 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-ngs-report | *Version*:2026.0.1 |
| Draft as of 2026-07-23 | *Computable Name*:SMNGSReport |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SMNGSReport",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-ngs-report",
  "version" : "2026.0.1",
  "name" : "SMNGSReport",
  "status" : "draft",
  "date" : "2026-07-23T12:42:46+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "structure" : [{
    "url" : "https://dnpm-dip.net/fhir/StructureDefinition/dnpm-lm-patient-record",
    "mode" : "source",
    "alias" : "DNPMPatientRecord"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
    "mode" : "produced",
    "alias" : "DiagnosticReport"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Observation",
    "mode" : "produced",
    "alias" : "Observation"
  }],
  "group" : [{
    "name" : "NGSReports",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nRoot group: iterate over all ngsReports in the PatientRecord\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "DNPMPatientRecord",
      "mode" : "source"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "bundleType",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "type",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "collection"
        }]
      }]
    },
    {
      "name" : "ngsReport",
      "source" : [{
        "context" : "src",
        "element" : "ngsReports",
        "variable" : "ngs"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "entry",
        "variable" : "e"
      },
      {
        "context" : "e",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "dr",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "DiagnosticReport"
        }]
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "ngs",
          "element" : "id",
          "variable" : "ngsid"
        }],
        "target" : [{
          "context" : "e",
          "contextType" : "variable",
          "element" : "fullUrl",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "ngsid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "ngs"
        }],
        "target" : [{
          "context" : "dr",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapNGSReport",
          "variable" : ["ngs", "dr", "bundle"]
        }]
      }]
    }]
  },
  {
    "name" : "MapNGSReport",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapNGSReport: one DNPM NGS report → DiagnosticReport + child Observations\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "DiagnosticReport",
      "mode" : "target"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "drId",
      "source" : [{
        "context" : "src",
        "element" : "id",
        "variable" : "srcId"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "srcId"
        },
        {
          "valueString" : "id"
        }]
      }],
      "documentation" : "---- DiagnosticReport header ----"
    },
    {
      "name" : "drStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "final"
        }]
      }]
    },
    {
      "name" : "drMeta",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "meta",
        "variable" : "m"
      }],
      "rule" : [{
        "name" : "drProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht"
          }]
        }]
      }],
      "documentation" : "Profile declaration"
    },
    {
      "name" : "drSubject",
      "source" : [{
        "context" : "src",
        "element" : "patient",
        "variable" : "pat"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "variable" : "subj"
      }],
      "rule" : [{
        "name" : "drSubjectRef",
        "source" : [{
          "context" : "pat",
          "element" : "id",
          "variable" : "pid"
        }],
        "target" : [{
          "context" : "subj",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "pid"
          }]
        }]
      }],
      "documentation" : "Subject"
    },
    {
      "name" : "drSpecimen",
      "source" : [{
        "context" : "src",
        "element" : "specimen",
        "variable" : "spec"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "specimen",
        "variable" : "s"
      }],
      "rule" : [{
        "name" : "drSpecimenRef",
        "source" : [{
          "context" : "spec",
          "element" : "id",
          "variable" : "sid"
        }],
        "target" : [{
          "context" : "s",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "sid"
          }]
        }]
      }],
      "documentation" : "Specimen"
    },
    {
      "name" : "drIssued",
      "source" : [{
        "context" : "src",
        "element" : "issuedOn",
        "variable" : "d"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "issued",
        "transform" : "append",
        "parameter" : [{
          "valueId" : "d"
        },
        {
          "valueString" : "T00:00:00Z"
        }]
      }],
      "documentation" : "Issued (date → instant)"
    },
    {
      "name" : "drCode",
      "source" : [{
        "context" : "src",
        "element" : "type",
        "variable" : "t"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "c"
      }],
      "rule" : [{
        "name" : "typeCoding",
        "source" : [{
          "context" : "t"
        }],
        "target" : [{
          "context" : "c",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "typeCode",
          "source" : [{
            "context" : "t",
            "element" : "code",
            "variable" : "codeV"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "codeV"
            },
            {
              "valueString" : "string"
            }]
          }]
        },
        {
          "name" : "typeSystem",
          "source" : [{
            "context" : "t",
            "element" : "system",
            "variable" : "systemV"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "systemV"
            },
            {
              "valueString" : "string"
            }]
          }]
        },
        {
          "name" : "typeDisplay",
          "source" : [{
            "context" : "t",
            "element" : "display",
            "variable" : "displayV"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "displayV"
            },
            {
              "valueString" : "string"
            }]
          }]
        }]
      }],
      "documentation" : "---- NGS type → code ----"
    },
    {
      "name" : "tmbResults",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "tmbEntry",
        "source" : [{
          "context" : "r",
          "element" : "tmb",
          "variable" : "tmb"
        }],
        "target" : [{
          "context" : "bundle",
          "contextType" : "variable",
          "element" : "entry",
          "variable" : "e"
        },
        {
          "context" : "e",
          "contextType" : "variable",
          "element" : "resource",
          "variable" : "obs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Observation"
          }]
        }],
        "rule" : [{
          "name" : "fullUrl",
          "source" : [{
            "context" : "tmb",
            "element" : "id",
            "variable" : "tmbid"
          }],
          "target" : [{
            "context" : "e",
            "contextType" : "variable",
            "element" : "fullUrl",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "tmbid"
            }]
          }]
        },
        {
          "name" : "map",
          "source" : [{
            "context" : "tmb"
          }],
          "target" : [{
            "context" : "obs",
            "contextType" : "variable"
          }],
          "dependent" : [{
            "name" : "MapTMB",
            "variable" : ["tmb", "obs"]
          }]
        }]
      }],
      "documentation" : "=========================================================================\r\nTMB (Mutationslast)\r\n========================================================================="
    },
    {
      "name" : "tmbResultsRef",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "tmbResult",
        "source" : [{
          "context" : "r",
          "element" : "tmb",
          "variable" : "tmb"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "result",
          "variable" : "res"
        }],
        "rule" : [{
          "name" : "tmbResultRef",
          "source" : [{
            "context" : "tmb",
            "element" : "id",
            "variable" : "tid"
          }],
          "target" : [{
            "context" : "res",
            "contextType" : "variable",
            "element" : "reference",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "tid"
            }]
          }]
        }]
      }],
      "documentation" : "Reference from DiagnosticReport.result"
    },
    {
      "name" : "brcaResults",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "brcaEntry",
        "source" : [{
          "context" : "r",
          "element" : "brcaness",
          "variable" : "brca"
        }],
        "target" : [{
          "context" : "bundle",
          "contextType" : "variable",
          "element" : "entry",
          "variable" : "e"
        },
        {
          "context" : "e",
          "contextType" : "variable",
          "element" : "resource",
          "variable" : "obs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Observation"
          }]
        }],
        "rule" : [{
          "name" : "fullUrl",
          "source" : [{
            "context" : "brca",
            "element" : "id",
            "variable" : "brcaid"
          }],
          "target" : [{
            "context" : "e",
            "contextType" : "variable",
            "element" : "fullUrl",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "brcaid"
            }]
          }]
        },
        {
          "name" : "map",
          "source" : [{
            "context" : "brca"
          }],
          "target" : [{
            "context" : "obs",
            "contextType" : "variable"
          }],
          "dependent" : [{
            "name" : "MapBRCAness",
            "variable" : ["brca", "obs"]
          }]
        }]
      }],
      "documentation" : "=========================================================================\r\nBRCAness\r\n========================================================================="
    },
    {
      "name" : "brcaResultsRef",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "brcaResult",
        "source" : [{
          "context" : "r",
          "element" : "brcaness",
          "variable" : "brca"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "result",
          "variable" : "res"
        }],
        "rule" : [{
          "name" : "brcaResultRef",
          "source" : [{
            "context" : "brca",
            "element" : "id",
            "variable" : "bid"
          }],
          "target" : [{
            "context" : "res",
            "contextType" : "variable",
            "element" : "reference",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "bid"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "hrdResults",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "hrdEntry",
        "source" : [{
          "context" : "r",
          "element" : "hrdScore",
          "variable" : "hrd"
        }],
        "target" : [{
          "context" : "bundle",
          "contextType" : "variable",
          "element" : "entry",
          "variable" : "e"
        },
        {
          "context" : "e",
          "contextType" : "variable",
          "element" : "resource",
          "variable" : "obs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Observation"
          }]
        }],
        "rule" : [{
          "name" : "fullUrl",
          "source" : [{
            "context" : "hrd",
            "element" : "id",
            "variable" : "hrdid"
          }],
          "target" : [{
            "context" : "e",
            "contextType" : "variable",
            "element" : "fullUrl",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "hrdid"
            }]
          }]
        },
        {
          "name" : "map",
          "source" : [{
            "context" : "hrd"
          }],
          "target" : [{
            "context" : "obs",
            "contextType" : "variable"
          }],
          "dependent" : [{
            "name" : "MapHRDScore",
            "variable" : ["hrd", "obs"]
          }]
        }]
      }],
      "documentation" : "=========================================================================\r\nHRD Score\r\n========================================================================="
    },
    {
      "name" : "hrdResultsRef",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "hrdResult",
        "source" : [{
          "context" : "r",
          "element" : "hrdScore",
          "variable" : "hrd"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "result",
          "variable" : "res"
        }],
        "rule" : [{
          "name" : "hrdResultRef",
          "source" : [{
            "context" : "hrd",
            "element" : "id",
            "variable" : "hid"
          }],
          "target" : [{
            "context" : "res",
            "contextType" : "variable",
            "element" : "reference",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "hid"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "svResults",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "svEntry",
        "source" : [{
          "context" : "r",
          "element" : "simpleVariants",
          "variable" : "sv"
        }],
        "target" : [{
          "context" : "bundle",
          "contextType" : "variable",
          "element" : "entry",
          "variable" : "e"
        },
        {
          "context" : "e",
          "contextType" : "variable",
          "element" : "resource",
          "variable" : "obs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Observation"
          }]
        }],
        "rule" : [{
          "name" : "fullUrl",
          "source" : [{
            "context" : "sv",
            "element" : "id",
            "variable" : "svid"
          }],
          "target" : [{
            "context" : "e",
            "contextType" : "variable",
            "element" : "fullUrl",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "svid"
            }]
          }]
        },
        {
          "name" : "map",
          "source" : [{
            "context" : "sv"
          }],
          "target" : [{
            "context" : "obs",
            "contextType" : "variable"
          }],
          "dependent" : [{
            "name" : "MapSimpleVariant",
            "variable" : ["sv", "obs", "src"]
          }]
        }]
      }],
      "documentation" : "=========================================================================\r\nSimple Variants (SNVs / Indels)\r\n========================================================================="
    },
    {
      "name" : "svResultsRef",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "svResult",
        "source" : [{
          "context" : "r",
          "element" : "simpleVariants",
          "variable" : "sv"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "result",
          "variable" : "res"
        }],
        "rule" : [{
          "name" : "svResultRef",
          "source" : [{
            "context" : "sv",
            "element" : "id",
            "variable" : "svid"
          }],
          "target" : [{
            "context" : "res",
            "contextType" : "variable",
            "element" : "reference",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "svid"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "cnvResults",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "cnvEntry",
        "source" : [{
          "context" : "r",
          "element" : "copyNumberVariants",
          "variable" : "cnv"
        }],
        "target" : [{
          "context" : "bundle",
          "contextType" : "variable",
          "element" : "entry",
          "variable" : "e"
        },
        {
          "context" : "e",
          "contextType" : "variable",
          "element" : "resource",
          "variable" : "obs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Observation"
          }]
        }],
        "rule" : [{
          "name" : "fullUrl",
          "source" : [{
            "context" : "cnv",
            "element" : "id",
            "variable" : "cnvid"
          }],
          "target" : [{
            "context" : "e",
            "contextType" : "variable",
            "element" : "fullUrl",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "cnvid"
            }]
          }]
        },
        {
          "name" : "map",
          "source" : [{
            "context" : "cnv"
          }],
          "target" : [{
            "context" : "obs",
            "contextType" : "variable"
          }],
          "dependent" : [{
            "name" : "MapCNV",
            "variable" : ["cnv", "obs", "src"]
          }]
        }]
      }],
      "documentation" : "=========================================================================\r\nCopy Number Variants\r\n========================================================================="
    },
    {
      "name" : "cnvResultsRef",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "cnvResult",
        "source" : [{
          "context" : "r",
          "element" : "copyNumberVariants",
          "variable" : "cnv"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "result",
          "variable" : "res"
        }],
        "rule" : [{
          "name" : "cnvResultRef",
          "source" : [{
            "context" : "cnv",
            "element" : "id",
            "variable" : "cid"
          }],
          "target" : [{
            "context" : "res",
            "contextType" : "variable",
            "element" : "reference",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "cid"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "dfResults",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "dfEntry",
        "source" : [{
          "context" : "r",
          "element" : "dnaFusions",
          "variable" : "df"
        }],
        "target" : [{
          "context" : "bundle",
          "contextType" : "variable",
          "element" : "entry",
          "variable" : "e"
        },
        {
          "context" : "e",
          "contextType" : "variable",
          "element" : "resource",
          "variable" : "obs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Observation"
          }]
        }],
        "rule" : [{
          "name" : "fullUrl",
          "source" : [{
            "context" : "df",
            "element" : "id",
            "variable" : "dfid"
          }],
          "target" : [{
            "context" : "e",
            "contextType" : "variable",
            "element" : "fullUrl",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "dfid"
            }]
          }]
        },
        {
          "name" : "map",
          "source" : [{
            "context" : "df"
          }],
          "target" : [{
            "context" : "obs",
            "contextType" : "variable"
          }],
          "dependent" : [{
            "name" : "MapDNAFusion",
            "variable" : ["df", "obs", "src"]
          }]
        }]
      }],
      "documentation" : "=========================================================================\r\nDNA Fusions\r\n========================================================================="
    },
    {
      "name" : "dfResultsRef",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "dfResult",
        "source" : [{
          "context" : "r",
          "element" : "dnaFusions",
          "variable" : "df"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "result",
          "variable" : "res"
        }],
        "rule" : [{
          "name" : "dfResultRef",
          "source" : [{
            "context" : "df",
            "element" : "id",
            "variable" : "did"
          }],
          "target" : [{
            "context" : "res",
            "contextType" : "variable",
            "element" : "reference",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "did"
            }]
          }]
        }]
      }]
    },
    {
      "name" : "rfResults",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "rfEntry",
        "source" : [{
          "context" : "r",
          "element" : "rnaFusions",
          "variable" : "rf"
        }],
        "target" : [{
          "context" : "bundle",
          "contextType" : "variable",
          "element" : "entry",
          "variable" : "e"
        },
        {
          "context" : "e",
          "contextType" : "variable",
          "element" : "resource",
          "variable" : "obs",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Observation"
          }]
        }],
        "rule" : [{
          "name" : "fullUrl",
          "source" : [{
            "context" : "rf",
            "element" : "id",
            "variable" : "rfid"
          }],
          "target" : [{
            "context" : "e",
            "contextType" : "variable",
            "element" : "fullUrl",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "rfid"
            }]
          }]
        },
        {
          "name" : "map",
          "source" : [{
            "context" : "rf"
          }],
          "target" : [{
            "context" : "obs",
            "contextType" : "variable"
          }],
          "dependent" : [{
            "name" : "MapRNAFusion",
            "variable" : ["rf", "obs", "src"]
          }]
        }]
      }],
      "documentation" : "=========================================================================\r\nRNA Fusions\r\n========================================================================="
    },
    {
      "name" : "rfResultsRef",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "rfResult",
        "source" : [{
          "context" : "r",
          "element" : "rnaFusions",
          "variable" : "rf"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "result",
          "variable" : "res"
        }],
        "rule" : [{
          "name" : "rfResultRef",
          "source" : [{
            "context" : "rf",
            "element" : "id",
            "variable" : "rid"
          }],
          "target" : [{
            "context" : "res",
            "contextType" : "variable",
            "element" : "reference",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "rid"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapTMB",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapTMB: DNPM tmb → MII_PR_MTB_Mutationslast (Observation)\r\nProfile code: $LNC#94076-7\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Observation",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "tmbId",
      "source" : [{
        "context" : "src",
        "element" : "id",
        "variable" : "srcId"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "srcId"
        },
        {
          "valueString" : "id"
        }]
      }]
    },
    {
      "name" : "tmbStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "final"
        }]
      }]
    },
    {
      "name" : "tmbMeta",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "meta",
        "variable" : "m"
      }],
      "rule" : [{
        "name" : "tmbProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mutationslast"
          }]
        }]
      }]
    },
    {
      "name" : "tmbCategory",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "category",
        "variable" : "cat"
      }],
      "rule" : [{
        "name" : "tmbCatCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "cat",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "tmbCatSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
            }]
          }]
        },
        {
          "name" : "tmbCatCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "laboratory"
            }]
          }]
        }]
      }],
      "documentation" : "Category: laboratory"
    },
    {
      "name" : "tmbCode",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "c"
      }],
      "rule" : [{
        "name" : "tmbCodeCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "c",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "tmbCodeSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://loinc.org"
            }]
          }]
        },
        {
          "name" : "tmbCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "94076-7"
            }]
          }]
        },
        {
          "name" : "tmbCodeDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Mutations/Megabase [# Ratio] in Tumor"
            }]
          }]
        }]
      }],
      "documentation" : "Code: LOINC 94076-7"
    },
    {
      "name" : "tmbSubject",
      "source" : [{
        "context" : "src",
        "element" : "patient",
        "variable" : "pat"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "variable" : "subj"
      }],
      "rule" : [{
        "name" : "tmbSubjectRef",
        "source" : [{
          "context" : "pat",
          "element" : "id",
          "variable" : "pid"
        }],
        "target" : [{
          "context" : "subj",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "pid"
          }]
        }]
      }],
      "documentation" : "Subject"
    },
    {
      "name" : "tmbSpecimen",
      "source" : [{
        "context" : "src",
        "element" : "specimen",
        "variable" : "spec"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "specimen",
        "variable" : "s"
      }],
      "rule" : [{
        "name" : "tmbSpecimenRef",
        "source" : [{
          "context" : "spec",
          "element" : "id",
          "variable" : "sid"
        }],
        "target" : [{
          "context" : "s",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "sid"
          }]
        }]
      }],
      "documentation" : "Specimen"
    },
    {
      "name" : "tmbValueQuantity",
      "source" : [{
        "context" : "src",
        "element" : "value",
        "variable" : "v"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "valueQuantity",
        "variable" : "vq"
      }],
      "rule" : [{
        "name" : "tmbVQValue",
        "source" : [{
          "context" : "v",
          "element" : "value",
          "variable" : "valueV"
        }],
        "target" : [{
          "context" : "vq",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "cast",
          "parameter" : [{
            "valueId" : "valueV"
          },
          {
            "valueString" : "string"
          }]
        }]
      },
      {
        "name" : "tmbVQUnit",
        "source" : [{
          "context" : "v",
          "element" : "unit",
          "variable" : "unitV"
        }],
        "target" : [{
          "context" : "vq",
          "contextType" : "variable",
          "element" : "unit",
          "transform" : "cast",
          "parameter" : [{
            "valueId" : "unitV"
          },
          {
            "valueString" : "string"
          }]
        }]
      },
      {
        "name" : "tmbVQSys",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "vq",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://unitsofmeasure.org"
          }]
        }]
      },
      {
        "name" : "tmbVQCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "vq",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "1/1000000{Base}"
          }]
        }]
      }],
      "documentation" : "valueQuantity: value + unit"
    },
    {
      "name" : "tmbInterpretation",
      "source" : [{
        "context" : "src",
        "element" : "interpretation",
        "variable" : "interp"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "interpretation",
        "variable" : "tgtInterp"
      }],
      "rule" : [{
        "name" : "tmbInterpCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgtInterp",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "tmbInterpCode",
          "source" : [{
            "context" : "interp",
            "element" : "code",
            "variable" : "codeV"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "codeV"
            },
            {
              "valueString" : "string"
            }]
          }]
        },
        {
          "name" : "tmbInterpSys",
          "source" : [{
            "context" : "interp",
            "element" : "system",
            "variable" : "systemV"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "systemV"
            },
            {
              "valueString" : "string"
            }]
          }]
        },
        {
          "name" : "tmbInterpDisplay",
          "source" : [{
            "context" : "interp",
            "element" : "display",
            "variable" : "displayV"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "displayV"
            },
            {
              "valueString" : "string"
            }]
          }]
        }]
      }],
      "documentation" : "Interpretation"
    }]
  },
  {
    "name" : "MapBRCAness",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapBRCAness: DNPM brcaness → MII_PR_MTB_BRCAness (Observation)\r\nProfile code: $mii-cs-mtb-molekulare-biomarker#brcaness\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Observation",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "brcaId",
      "source" : [{
        "context" : "src",
        "element" : "id",
        "variable" : "srcId"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "srcId"
        },
        {
          "valueString" : "id"
        }]
      }]
    },
    {
      "name" : "brcaStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "final"
        }]
      }]
    },
    {
      "name" : "brcaMeta",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "meta",
        "variable" : "m"
      }],
      "rule" : [{
        "name" : "brcaProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-brcaness"
          }]
        }]
      }]
    },
    {
      "name" : "brcaCategory",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "category",
        "variable" : "cat"
      }],
      "rule" : [{
        "name" : "brcaCatCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "cat",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "brcaCatSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
            }]
          }]
        },
        {
          "name" : "brcaCatCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "laboratory"
            }]
          }]
        }]
      }],
      "documentation" : "Category: laboratory"
    },
    {
      "name" : "brcaCode",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "c"
      }],
      "rule" : [{
        "name" : "brcaCodeCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "c",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "brcaCodeSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
            }]
          }]
        },
        {
          "name" : "brcaCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "brcaness"
            }]
          }]
        },
        {
          "name" : "brcaCodeDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "BRCAness"
            }]
          }]
        }]
      }],
      "documentation" : "Code: MII biomarker CS"
    },
    {
      "name" : "brcaSubject",
      "source" : [{
        "context" : "src",
        "element" : "patient",
        "variable" : "pat"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "variable" : "subj"
      }],
      "rule" : [{
        "name" : "brcaSubjectRef",
        "source" : [{
          "context" : "pat",
          "element" : "id",
          "variable" : "pid"
        }],
        "target" : [{
          "context" : "subj",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "pid"
          }]
        }]
      }],
      "documentation" : "Subject"
    },
    {
      "name" : "brcaSpecimen",
      "source" : [{
        "context" : "src",
        "element" : "specimen",
        "variable" : "spec"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "specimen",
        "variable" : "s"
      }],
      "rule" : [{
        "name" : "brcaSpecimenRef",
        "source" : [{
          "context" : "spec",
          "element" : "id",
          "variable" : "sid"
        }],
        "target" : [{
          "context" : "s",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "sid"
          }]
        }]
      }],
      "documentation" : "Specimen"
    },
    {
      "name" : "brcaValueQuantity",
      "source" : [{
        "context" : "src",
        "element" : "value",
        "variable" : "v"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "valueQuantity",
        "variable" : "vq"
      }],
      "rule" : [{
        "name" : "brcaVQValue",
        "source" : [{
          "context" : "v"
        }],
        "target" : [{
          "context" : "vq",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "v"
          }]
        }]
      },
      {
        "name" : "brcaVQUnit",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "vq",
          "contextType" : "variable",
          "element" : "unit",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "Score"
          }]
        }]
      },
      {
        "name" : "brcaVQSys",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "vq",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://unitsofmeasure.org"
          }]
        }]
      },
      {
        "name" : "brcaVQCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "vq",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "1"
          }]
        }]
      }],
      "documentation" : "valueQuantity: BRCAness score"
    },
    {
      "name" : "brcaConfMin",
      "source" : [{
        "context" : "src",
        "element" : "confidenceRange",
        "variable" : "cr"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "compMin"
      }],
      "rule" : [{
        "name" : "brcaMinCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "compMin",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "brcaMinCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "brcaMinCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
              }]
            }]
          },
          {
            "name" : "brcaMinCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "brcaness-confidence-range-min"
              }]
            }]
          },
          {
            "name" : "brcaMinCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "BRCAness Confidence Range Minimum"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "brcaMinVQ",
        "source" : [{
          "context" : "cr",
          "element" : "min",
          "variable" : "minVal"
        }],
        "target" : [{
          "context" : "compMin",
          "contextType" : "variable",
          "element" : "valueQuantity",
          "variable" : "vq"
        }],
        "rule" : [{
          "name" : "brcaMinValue",
          "source" : [{
            "context" : "minVal"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "minVal"
            }]
          }]
        },
        {
          "name" : "brcaMinUnit",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "unit",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Score"
            }]
          }]
        },
        {
          "name" : "brcaMinSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://unitsofmeasure.org"
            }]
          }]
        },
        {
          "name" : "brcaMinCode2",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "1"
            }]
          }]
        }]
      }],
      "documentation" : "Confidence range → two components (min / max)"
    },
    {
      "name" : "brcaConfMax",
      "source" : [{
        "context" : "src",
        "element" : "confidenceRange",
        "variable" : "cr"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "compMax"
      }],
      "rule" : [{
        "name" : "brcaMaxCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "compMax",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "brcaMaxCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "brcaMaxCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
              }]
            }]
          },
          {
            "name" : "brcaMaxCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "brcaness-confidence-range-max"
              }]
            }]
          },
          {
            "name" : "brcaMaxCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "BRCAness Confidence Range Maximum"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "brcaMaxVQ",
        "source" : [{
          "context" : "cr",
          "element" : "max",
          "variable" : "maxVal"
        }],
        "target" : [{
          "context" : "compMax",
          "contextType" : "variable",
          "element" : "valueQuantity",
          "variable" : "vq"
        }],
        "rule" : [{
          "name" : "brcaMaxValue",
          "source" : [{
            "context" : "maxVal"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "maxVal"
            }]
          }]
        },
        {
          "name" : "brcaMaxUnit",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "unit",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Score"
            }]
          }]
        },
        {
          "name" : "brcaMaxSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://unitsofmeasure.org"
            }]
          }]
        },
        {
          "name" : "brcaMaxCode2",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "1"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MapHRDScore",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapHRDScore: DNPM hrdScore → MII_PR_MTB_HRD_Score (Observation)\r\nProfile code: $LNC#107286-7\r\nComponents: LOH ($NCIT#C18016), TAI ($NCIT#C129774), LST ($NCIT#C120466)\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Observation",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "hrdId",
      "source" : [{
        "context" : "src",
        "element" : "id",
        "variable" : "srcId"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "srcId"
        },
        {
          "valueString" : "id"
        }]
      }]
    },
    {
      "name" : "hrdStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "final"
        }]
      }]
    },
    {
      "name" : "hrdMeta",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "meta",
        "variable" : "m"
      }],
      "rule" : [{
        "name" : "hrdProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-hrd-score"
          }]
        }]
      }]
    },
    {
      "name" : "hrdCategory",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "category",
        "variable" : "cat"
      }],
      "rule" : [{
        "name" : "hrdCatCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "cat",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "hrdCatSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
            }]
          }]
        },
        {
          "name" : "hrdCatCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "laboratory"
            }]
          }]
        }]
      }],
      "documentation" : "Category: laboratory"
    },
    {
      "name" : "hrdCode",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "c"
      }],
      "rule" : [{
        "name" : "hrdCodeCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "c",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "hrdCodeSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://loinc.org"
            }]
          }]
        },
        {
          "name" : "hrdCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "107286-7"
            }]
          }]
        },
        {
          "name" : "hrdCodeDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Homologous recombination deficiency status analysis [Presence] in Tissue by Molecular genetics method"
            }]
          }]
        }]
      }],
      "documentation" : "Code: LOINC 107286-7"
    },
    {
      "name" : "hrdSubject",
      "source" : [{
        "context" : "src",
        "element" : "patient",
        "variable" : "pat"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "variable" : "subj"
      }],
      "rule" : [{
        "name" : "hrdSubjectRef",
        "source" : [{
          "context" : "pat",
          "element" : "id",
          "variable" : "pid"
        }],
        "target" : [{
          "context" : "subj",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "pid"
          }]
        }]
      }],
      "documentation" : "Subject"
    },
    {
      "name" : "hrdSpecimen",
      "source" : [{
        "context" : "src",
        "element" : "specimen",
        "variable" : "spec"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "specimen",
        "variable" : "s"
      }],
      "rule" : [{
        "name" : "hrdSpecimenRef",
        "source" : [{
          "context" : "spec",
          "element" : "id",
          "variable" : "sid"
        }],
        "target" : [{
          "context" : "s",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "sid"
          }]
        }]
      }],
      "documentation" : "Specimen"
    },
    {
      "name" : "hrdValue",
      "source" : [{
        "context" : "src",
        "element" : "value",
        "variable" : "v"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "valueInteger",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "v"
        }]
      }],
      "documentation" : "valueInteger: HRD composite score"
    },
    {
      "name" : "hrdInterpretation",
      "source" : [{
        "context" : "src",
        "element" : "interpretation",
        "variable" : "interp"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "interpretation",
        "variable" : "tgtInterp"
      }],
      "rule" : [{
        "name" : "hrdInterpCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgtInterp",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "hrdInterpCode",
          "source" : [{
            "context" : "interp",
            "element" : "code",
            "variable" : "codeV"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "codeV"
            },
            {
              "valueString" : "string"
            }]
          }]
        },
        {
          "name" : "hrdInterpSys",
          "source" : [{
            "context" : "interp",
            "element" : "system",
            "variable" : "systemV"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "systemV"
            },
            {
              "valueString" : "string"
            }]
          }]
        },
        {
          "name" : "hrdInterpDisplay",
          "source" : [{
            "context" : "interp",
            "element" : "display",
            "variable" : "displayV"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "displayV"
            },
            {
              "valueString" : "string"
            }]
          }]
        }]
      }],
      "documentation" : "Interpretation"
    },
    {
      "name" : "hrdLOH",
      "source" : [{
        "context" : "src",
        "element" : "components",
        "variable" : "comps"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "hrdLOHInner",
        "source" : [{
          "context" : "comps",
          "element" : "loh",
          "variable" : "lohVal"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "hrdLohCode2",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "hrdLohCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "hrdLohSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"
                }]
              }]
            },
            {
              "name" : "hrdLohCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "C18016"
                }]
              }]
            },
            {
              "name" : "hrdLohDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Loss of Heterozygosity"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "hrdLohValue",
          "source" : [{
            "context" : "lohVal"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueInteger",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "lohVal"
            }]
          }]
        }]
      }],
      "documentation" : "Component: LOH ($NCIT#C18016)"
    },
    {
      "name" : "hrdTAI",
      "source" : [{
        "context" : "src",
        "element" : "components",
        "variable" : "comps"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "hrdTAIInner",
        "source" : [{
          "context" : "comps",
          "element" : "tai",
          "variable" : "taiVal"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "hrdTaiCode2",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "hrdTaiCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "hrdTaiSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"
                }]
              }]
            },
            {
              "name" : "hrdTaiCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "C129774"
                }]
              }]
            },
            {
              "name" : "hrdTaiDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Telomeric Allelic Imbalance Region"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "hrdTaiValue",
          "source" : [{
            "context" : "taiVal"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueInteger",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "taiVal"
            }]
          }]
        }]
      }],
      "documentation" : "Component: TAI ($NCIT#C129774)"
    },
    {
      "name" : "hrdLST",
      "source" : [{
        "context" : "src",
        "element" : "components",
        "variable" : "comps"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "hrdLSTInner",
        "source" : [{
          "context" : "comps",
          "element" : "lst",
          "variable" : "lstVal"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "hrdLstCode2",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "hrdLstCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "hrdLstSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"
                }]
              }]
            },
            {
              "name" : "hrdLstCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "C120466"
                }]
              }]
            },
            {
              "name" : "hrdLstDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Large-Scale State Transition"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "hrdLstValue",
          "source" : [{
            "context" : "lstVal"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueInteger",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "lstVal"
            }]
          }]
        }]
      }],
      "documentation" : "Component: LST ($NCIT#C120466)"
    }]
  },
  {
    "name" : "MapSimpleVariant",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapSimpleVariant: DNPM simpleVariants[*] → MII_PR_MTB_Einfache_Variante\r\nUses MII_PR_MolGen_Variante component slice names from the parent profile\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Observation",
      "mode" : "target"
    },
    {
      "name" : "ngsReport",
      "type" : "BackboneElement",
      "mode" : "source"
    }],
    "rule" : [{
      "name" : "svId",
      "source" : [{
        "context" : "src",
        "element" : "id",
        "variable" : "srcId"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "srcId"
        },
        {
          "valueString" : "id"
        }]
      }]
    },
    {
      "name" : "svStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "final"
        }]
      }]
    },
    {
      "name" : "svMeta",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "meta",
        "variable" : "m"
      }],
      "rule" : [{
        "name" : "svProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante"
          }]
        }]
      }]
    },
    {
      "name" : "svCategoryLab",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "category",
        "variable" : "cat"
      }],
      "rule" : [{
        "name" : "svCatLabCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "cat",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "svCatLabSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
            }]
          }]
        },
        {
          "name" : "svCatLabCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "laboratory"
            }]
          }]
        }]
      }],
      "documentation" : "Category: laboratory + GE"
    },
    {
      "name" : "svCode",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "c"
      }],
      "rule" : [{
        "name" : "svCodeCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "c",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "svCodeSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://loinc.org"
            }]
          }]
        },
        {
          "name" : "svCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "69548-6"
            }]
          }]
        },
        {
          "name" : "svCodeDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Genetic variant assessment"
            }]
          }]
        }]
      }],
      "documentation" : "Code: LOINC 69548-6 (Genetic variant assessment)"
    },
    {
      "name" : "svVCC",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "valueCodeableConcept",
        "variable" : "vc"
      }],
      "rule" : [{
        "name" : "svVCCCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "vc",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "svVCCSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://loinc.org"
            }]
          }]
        },
        {
          "name" : "svVCCCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "LA9633-4"
            }]
          }]
        },
        {
          "name" : "svVCCDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Present"
            }]
          }]
        }]
      }],
      "documentation" : "valueCodeableConcept: Present (LA9633-4) – standard for genomics variant assessment"
    },
    {
      "name" : "svSubject",
      "source" : [{
        "context" : "ngsReport",
        "element" : "patient",
        "variable" : "pat"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "variable" : "subj"
      }],
      "rule" : [{
        "name" : "svSubjectRef",
        "source" : [{
          "context" : "pat",
          "element" : "id",
          "variable" : "pid"
        }],
        "target" : [{
          "context" : "subj",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "pid"
          }]
        }]
      }],
      "documentation" : "Subject (from parent ngsReport.patient)"
    },
    {
      "name" : "svExternalIds",
      "source" : [{
        "context" : "src",
        "element" : "externalIds",
        "variable" : "eid"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "svVarCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "svVarCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "svVarCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "svVarCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "81252-9"
              }]
            }]
          },
          {
            "name" : "svVarCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Discrete genetic variant"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "svVarCC",
        "source" : [{
          "context" : "eid"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "variable" : "vc"
        }],
        "rule" : [{
          "name" : "svVarCCCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "svVarCCCode",
            "source" : [{
              "context" : "eid",
              "element" : "value",
              "variable" : "valueV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "valueV"
              },
              {
                "valueString" : "string"
              }]
            }]
          },
          {
            "name" : "svVarCCSys",
            "source" : [{
              "context" : "eid",
              "element" : "system",
              "variable" : "systemV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "systemV"
              },
              {
                "valueString" : "string"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "External identifiers → component[variation-code] ($LNC#81252-9)"
    },
    {
      "name" : "svChromosome",
      "source" : [{
        "context" : "src",
        "element" : "chromosome",
        "variable" : "chr"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "svChrCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "svChrCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "svChrCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "svChrCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "48001-2"
              }]
            }]
          },
          {
            "name" : "svChrCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Cytogenetic (chromosome) location"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "svChrVCC",
        "source" : [{
          "context" : "chr"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "variable" : "vc"
        }],
        "rule" : [{
          "name" : "svChrVCCCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "svChrVCCCode",
            "source" : [{
              "context" : "chr"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "chr"
              }]
            }]
          },
          {
            "name" : "svChrVCCSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://terminology.hl7.org/CodeSystem/chromosome-human"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[chromosome-identifier]: LOINC 48001-2"
    },
    {
      "name" : "svGene",
      "source" : [{
        "context" : "src",
        "element" : "gene",
        "variable" : "gene"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "svGeneCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "svGeneCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "svGeneCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "svGeneCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "48018-6"
              }]
            }]
          },
          {
            "name" : "svGeneCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Gene studied [ID]"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "svGeneVCC",
        "source" : [{
          "context" : "gene"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "variable" : "vc"
        }],
        "rule" : [{
          "name" : "svGeneVCCCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "svGeneVCCCode",
            "source" : [{
              "context" : "gene",
              "element" : "code",
              "variable" : "codeV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "codeV"
              },
              {
                "valueString" : "string"
              }]
            }]
          },
          {
            "name" : "svGeneVCCSys",
            "source" : [{
              "context" : "gene",
              "element" : "system",
              "variable" : "systemV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "systemV"
              },
              {
                "valueString" : "string"
              }]
            }]
          },
          {
            "name" : "svGeneVCCDisplay",
            "source" : [{
              "context" : "gene",
              "element" : "display",
              "variable" : "displayV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "displayV"
              },
              {
                "valueString" : "string"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[gene-studied]: LOINC 48018-6"
    },
    {
      "name" : "svTranscript",
      "source" : [{
        "context" : "src",
        "element" : "transcriptId",
        "variable" : "tid"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "svTransCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "svTransCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "svTransCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "svTransCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "51958-7"
              }]
            }]
          },
          {
            "name" : "svTransCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Transcript reference sequence [ID]"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "svTransVCC",
        "source" : [{
          "context" : "tid"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "variable" : "vc"
        }],
        "rule" : [{
          "name" : "svTransVCCCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "svTransVCCCode",
            "source" : [{
              "context" : "tid",
              "element" : "value",
              "variable" : "valueV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "valueV"
              },
              {
                "valueString" : "string"
              }]
            }]
          },
          {
            "name" : "svTransVCCSys",
            "source" : [{
              "context" : "tid",
              "element" : "system",
              "variable" : "systemV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "systemV"
              },
              {
                "valueString" : "string"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[representative-transcript-ref-seq]: LOINC 51958-7"
    },
    {
      "name" : "svExon",
      "source" : [{
        "context" : "src",
        "element" : "exonId",
        "variable" : "exon"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "svExonCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "svExonCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "svExonCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "svExonCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "47999-8"
              }]
            }]
          },
          {
            "name" : "svExonCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "DNA region name [Identifier]"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "svExonValue",
        "source" : [{
          "context" : "exon"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueString",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "exon"
          }]
        }]
      }],
      "documentation" : "component[dna-region] (exonId): LOINC 47999-8"
    },
    {
      "name" : "svPosition",
      "source" : [{
        "context" : "src",
        "element" : "position",
        "variable" : "pos"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "svPosCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "svPosCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "svPosCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "svPosCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "81254-5"
              }]
            }]
          },
          {
            "name" : "svPosCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Variant exact start-end"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "svPosRange",
        "source" : [{
          "context" : "pos"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueRange",
          "variable" : "vr"
        }],
        "rule" : [{
          "name" : "svPosLow",
          "source" : [{
            "context" : "pos",
            "element" : "start",
            "variable" : "s"
          }],
          "target" : [{
            "context" : "vr",
            "contextType" : "variable",
            "element" : "low",
            "variable" : "low"
          }],
          "rule" : [{
            "name" : "svPosStartValue",
            "source" : [{
              "context" : "s"
            }],
            "target" : [{
              "context" : "low",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "s"
              }]
            }]
          }]
        },
        {
          "name" : "svPosHigh",
          "source" : [{
            "context" : "pos",
            "element" : "end",
            "variable" : "e"
          }],
          "target" : [{
            "context" : "vr",
            "contextType" : "variable",
            "element" : "high",
            "variable" : "high"
          }],
          "rule" : [{
            "name" : "svPosEndValue",
            "source" : [{
              "context" : "e"
            }],
            "target" : [{
              "context" : "high",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "e"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[exact-start-end]: LOINC 81254-5"
    },
    {
      "name" : "svRefAllele",
      "source" : [{
        "context" : "src",
        "element" : "refAllele",
        "variable" : "ref"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "svRefCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "svRefCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "svRefCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "svRefCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "69547-8"
              }]
            }]
          },
          {
            "name" : "svRefCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Genomic ref allele [ID]"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "svRefValue",
        "source" : [{
          "context" : "ref"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueString",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "ref"
          }]
        }]
      }],
      "documentation" : "component[ref-allele]: LOINC 69547-8"
    },
    {
      "name" : "svAltAllele",
      "source" : [{
        "context" : "src",
        "element" : "altAllele",
        "variable" : "alt"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "svAltCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "svAltCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "svAltCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "svAltCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "69551-0"
              }]
            }]
          },
          {
            "name" : "svAltCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Genomic alt allele [ID]"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "svAltValue",
        "source" : [{
          "context" : "alt"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueString",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "alt"
          }]
        }]
      }],
      "documentation" : "component[alt-allele]: LOINC 69551-0"
    },
    {
      "name" : "svDnaChange",
      "source" : [{
        "context" : "src",
        "element" : "dnaChange",
        "variable" : "dna"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "svDnaCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "svDnaCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "svDnaCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "svDnaCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "48004-6"
              }]
            }]
          },
          {
            "name" : "svDnaCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "DNA change (c.HGVS)"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "svDnaVCC",
        "source" : [{
          "context" : "dna"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "variable" : "vc"
        }],
        "rule" : [{
          "name" : "svDnaVCCCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "svDnaVCCCode",
            "source" : [{
              "context" : "dna"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "dna"
              }]
            }]
          },
          {
            "name" : "svDnaVCCSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://varnomen.hgvs.org"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[representative-coding-hgvs]: LOINC 48004-6"
    },
    {
      "name" : "svProteinChange",
      "source" : [{
        "context" : "src",
        "element" : "proteinChange",
        "variable" : "prot"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "svProtCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "svProtCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "svProtCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "svProtCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "48005-3"
              }]
            }]
          },
          {
            "name" : "svProtCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Amino acid change (pHGVS)"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "svProtVCC",
        "source" : [{
          "context" : "prot"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "variable" : "vc"
        }],
        "rule" : [{
          "name" : "svProtVCCCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "svProtVCCCode",
            "source" : [{
              "context" : "prot"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "prot"
              }]
            }]
          },
          {
            "name" : "svProtVCCSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://varnomen.hgvs.org"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[representative-protein-hgvs]: LOINC 48005-3"
    },
    {
      "name" : "svReadDepth",
      "source" : [{
        "context" : "src",
        "element" : "readDepth",
        "variable" : "rd"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "svRdCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "svRdCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "svRdCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "svRdCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "82121-5"
              }]
            }]
          },
          {
            "name" : "svRdCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Allelic read depth"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "svRdVQ",
        "source" : [{
          "context" : "rd"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueQuantity",
          "variable" : "vq"
        }],
        "rule" : [{
          "name" : "svRdValue",
          "source" : [{
            "context" : "rd"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "rd"
            }]
          }]
        },
        {
          "name" : "svRdSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://unitsofmeasure.org"
            }]
          }]
        },
        {
          "name" : "svRdUCUM",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "1"
            }]
          }]
        }]
      }],
      "documentation" : "component[allelic-read-depth]: LOINC 82121-5"
    },
    {
      "name" : "svAllelicFrequency",
      "source" : [{
        "context" : "src",
        "element" : "allelicFrequency",
        "variable" : "af"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "svAfCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "svAfCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "svAfCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "svAfCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "81258-6"
              }]
            }]
          },
          {
            "name" : "svAfCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Sample variant allelic frequency [NFr]"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "svAfVQ",
        "source" : [{
          "context" : "af"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueQuantity",
          "variable" : "vq"
        }],
        "rule" : [{
          "name" : "svAfValue",
          "source" : [{
            "context" : "af"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "af"
            }]
          }]
        },
        {
          "name" : "svAfSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://unitsofmeasure.org"
            }]
          }]
        },
        {
          "name" : "svAfUCUM",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "1"
            }]
          }]
        }]
      }],
      "documentation" : "component[sample-allelic-frequency]: LOINC 81258-6"
    },
    {
      "name" : "svInterpretation",
      "source" : [{
        "context" : "src",
        "element" : "interpretation",
        "variable" : "interp"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "interpretation",
        "variable" : "tgtInterp"
      }],
      "rule" : [{
        "name" : "svInterpCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgtInterp",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "svInterpCode",
          "source" : [{
            "context" : "interp",
            "element" : "code",
            "variable" : "codeV"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "codeV"
            },
            {
              "valueString" : "string"
            }]
          }]
        },
        {
          "name" : "svInterpSys",
          "source" : [{
            "context" : "interp",
            "element" : "system",
            "variable" : "systemV"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "systemV"
            },
            {
              "valueString" : "string"
            }]
          }]
        },
        {
          "name" : "svInterpDisplay",
          "source" : [{
            "context" : "interp",
            "element" : "display",
            "variable" : "displayV"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "displayV"
            },
            {
              "valueString" : "string"
            }]
          }]
        }]
      }],
      "documentation" : "interpretation: ClinVar"
    }]
  },
  {
    "name" : "MapCNV",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapCNV: DNPM copyNumberVariants[*] → MII_PR_MTB_Copy_Number_Variant\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Observation",
      "mode" : "target"
    },
    {
      "name" : "ngsReport",
      "type" : "BackboneElement",
      "mode" : "source"
    }],
    "rule" : [{
      "name" : "cnvId",
      "source" : [{
        "context" : "src",
        "element" : "id",
        "variable" : "srcId"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "srcId"
        },
        {
          "valueString" : "id"
        }]
      }]
    },
    {
      "name" : "cnvStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "final"
        }]
      }]
    },
    {
      "name" : "cnvMeta",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "meta",
        "variable" : "m"
      }],
      "rule" : [{
        "name" : "cnvProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-copy-number-variant"
          }]
        }]
      }]
    },
    {
      "name" : "cnvCategory",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "category",
        "variable" : "cat"
      }],
      "rule" : [{
        "name" : "cnvCatCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "cat",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "cnvCatSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
            }]
          }]
        },
        {
          "name" : "cnvCatCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "laboratory"
            }]
          }]
        }]
      }],
      "documentation" : "Category: laboratory"
    },
    {
      "name" : "cnvCode",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "c"
      }],
      "rule" : [{
        "name" : "cnvCodeCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "c",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "cnvCodeSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://loinc.org"
            }]
          }]
        },
        {
          "name" : "cnvCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "69548-6"
            }]
          }]
        },
        {
          "name" : "cnvCodeDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Genetic variant assessment"
            }]
          }]
        }]
      }],
      "documentation" : "Code: LOINC 69548-6 (Genetic variant assessment)"
    },
    {
      "name" : "cnvSubject",
      "source" : [{
        "context" : "ngsReport",
        "element" : "patient",
        "variable" : "pat"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "variable" : "subj"
      }],
      "rule" : [{
        "name" : "cnvSubjectRef",
        "source" : [{
          "context" : "pat",
          "element" : "id",
          "variable" : "pid"
        }],
        "target" : [{
          "context" : "subj",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "pid"
          }]
        }]
      }],
      "documentation" : "Subject (from parent ngsReport.patient)"
    },
    {
      "name" : "cnvChromosome",
      "source" : [{
        "context" : "src",
        "element" : "chromosome",
        "variable" : "chr"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "cnvChrCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "cnvChrCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "cnvChrCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "cnvChrCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "48000-4"
              }]
            }]
          },
          {
            "name" : "cnvChrCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Chromosome [Identifier] in Blood or Tissue by Molecular genetics method"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "cnvChrVCC",
        "source" : [{
          "context" : "chr"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "variable" : "vc"
        }],
        "rule" : [{
          "name" : "cnvChrVCCCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "cnvChrVCCCode",
            "source" : [{
              "context" : "chr"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "chr"
              }]
            }]
          },
          {
            "name" : "cnvChrVCCSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://terminology.hl7.org/CodeSystem/chromosome-human"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[chromosome-identifier]: LOINC 48000-4"
    },
    {
      "name" : "cnvStartRangeComp",
      "source" : [{
        "context" : "src",
        "element" : "startRange",
        "variable" : "sr"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "cnvStartCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "cnvStartCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "cnvStartCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "cnvStartCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "81254-5"
              }]
            }]
          },
          {
            "name" : "cnvStartCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Variant exact start-end"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "cnvStartRange",
        "source" : [{
          "context" : "sr"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueRange",
          "variable" : "vr"
        }],
        "rule" : [{
          "name" : "cnvStartLow",
          "source" : [{
            "context" : "sr",
            "element" : "start",
            "variable" : "s"
          }],
          "target" : [{
            "context" : "vr",
            "contextType" : "variable",
            "element" : "low",
            "variable" : "low"
          }],
          "rule" : [{
            "name" : "cnvStartLowValue",
            "source" : [{
              "context" : "s"
            }],
            "target" : [{
              "context" : "low",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "s"
              }]
            }]
          }]
        },
        {
          "name" : "cnvStartHigh",
          "source" : [{
            "context" : "sr",
            "element" : "end",
            "variable" : "e"
          }],
          "target" : [{
            "context" : "vr",
            "contextType" : "variable",
            "element" : "high",
            "variable" : "high"
          }],
          "rule" : [{
            "name" : "cnvStartHighValue",
            "source" : [{
              "context" : "e"
            }],
            "target" : [{
              "context" : "high",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "e"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[exact-start-end] for startRange: LOINC 81254-5"
    },
    {
      "name" : "cnvTotalCopyNumber",
      "source" : [{
        "context" : "src",
        "element" : "totalCopyNumber",
        "variable" : "tcn"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "cnvTcnCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "cnvTcnCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "cnvTcnCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "cnvTcnCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "82155-3"
              }]
            }]
          },
          {
            "name" : "cnvTcnCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Genomic structural variant copy number"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "cnvTcnVQ",
        "source" : [{
          "context" : "tcn"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueQuantity",
          "variable" : "vq"
        }],
        "rule" : [{
          "name" : "cnvTcnValue",
          "source" : [{
            "context" : "tcn"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "tcn"
            }]
          }]
        },
        {
          "name" : "cnvTcnSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://unitsofmeasure.org"
            }]
          }]
        },
        {
          "name" : "cnvTcnUCUM",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "1"
            }]
          }]
        }]
      }],
      "documentation" : "component[copy-number] (total copy number): LOINC 82155-3"
    },
    {
      "name" : "cnvRelCopyNumber",
      "source" : [{
        "context" : "src",
        "element" : "relativeCopyNumber",
        "variable" : "rcn"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "cnvRcnCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "cnvRcnCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "cnvRcnCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
              }]
            }]
          },
          {
            "name" : "cnvRcnCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "relative-copy-number"
              }]
            }]
          },
          {
            "name" : "cnvRcnCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Relative Copy Number of Allele A and B"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "cnvRcnVQ",
        "source" : [{
          "context" : "rcn"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueQuantity",
          "variable" : "vq"
        }],
        "rule" : [{
          "name" : "cnvRcnValue",
          "source" : [{
            "context" : "rcn"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "rcn"
            }]
          }]
        },
        {
          "name" : "cnvRcnSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://unitsofmeasure.org"
            }]
          }]
        },
        {
          "name" : "cnvRcnUCUM",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "1"
            }]
          }]
        }]
      }],
      "documentation" : "component[relative-copy-number]"
    },
    {
      "name" : "cnvCNA",
      "source" : [{
        "context" : "src",
        "element" : "cnA",
        "variable" : "cna"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "cnvCnaCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "cnvCnaCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "cnvCnaCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
              }]
            }]
          },
          {
            "name" : "cnvCnaCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "copy-number-allele-a"
              }]
            }]
          },
          {
            "name" : "cnvCnaCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Copy Number of Allele B"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "cnvCnaVQ",
        "source" : [{
          "context" : "cna"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueQuantity",
          "variable" : "vq"
        }],
        "rule" : [{
          "name" : "cnvCnaValue",
          "source" : [{
            "context" : "cna"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "cna"
            }]
          }]
        },
        {
          "name" : "cnvCnaSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://unitsofmeasure.org"
            }]
          }]
        },
        {
          "name" : "cnvCnaUCUM",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "1"
            }]
          }]
        }]
      }],
      "documentation" : "component[cna] (copy number allele A)"
    },
    {
      "name" : "cnvCNB",
      "source" : [{
        "context" : "src",
        "element" : "cnB",
        "variable" : "cnb"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "cnvCnbCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "cnvCnbCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "cnvCnbCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
              }]
            }]
          },
          {
            "name" : "cnvCnbCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "copy-number-allele-b"
              }]
            }]
          },
          {
            "name" : "cnvCnbCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Copy Number of Allele A"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "cnvCnbVQ",
        "source" : [{
          "context" : "cnb"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueQuantity",
          "variable" : "vq"
        }],
        "rule" : [{
          "name" : "cnvCnbValue",
          "source" : [{
            "context" : "cnb"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "cnb"
            }]
          }]
        },
        {
          "name" : "cnvCnbSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://unitsofmeasure.org"
            }]
          }]
        },
        {
          "name" : "cnvCnbUCUM",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "1"
            }]
          }]
        }]
      }],
      "documentation" : "component[cnb] (copy number allele B)"
    },
    {
      "name" : "cnvGenes",
      "source" : [{
        "context" : "src",
        "element" : "reportedAffectedGenes",
        "variable" : "rag"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "cnvGeneCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "cnvGeneCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "cnvGeneCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "cnvGeneCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "48018-6"
              }]
            }]
          },
          {
            "name" : "cnvGeneCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Gene studied [ID]"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "cnvGeneVCC",
        "source" : [{
          "context" : "rag"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "variable" : "vc"
        }],
        "rule" : [{
          "name" : "cnvGeneVCCCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "cnvGeneVCCCode",
            "source" : [{
              "context" : "rag",
              "element" : "code",
              "variable" : "codeV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "codeV"
              },
              {
                "valueString" : "string"
              }]
            }]
          },
          {
            "name" : "cnvGeneVCCSys",
            "source" : [{
              "context" : "rag",
              "element" : "system",
              "variable" : "systemV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "systemV"
              },
              {
                "valueString" : "string"
              }]
            }]
          },
          {
            "name" : "cnvGeneVCCDisplay",
            "source" : [{
              "context" : "rag",
              "element" : "display",
              "variable" : "displayV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "displayV"
              },
              {
                "valueString" : "string"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[gene-studied]: LOINC 48018-6 (0..* affected genes → one component per gene)"
    },
    {
      "name" : "cnvFocality",
      "source" : [{
        "context" : "src",
        "element" : "focality",
        "variable" : "foc"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "cnvFocCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "cnvFocCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "cnvFocCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
              }]
            }]
          },
          {
            "name" : "cnvFocCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "reported-focality"
              }]
            }]
          },
          {
            "name" : "cnvFocCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Reported focality"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "cnvFocVCC",
        "source" : [{
          "context" : "foc"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "variable" : "vc"
        }],
        "rule" : [{
          "name" : "cnvFocVCCCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "cnvFocVCCCode",
            "source" : [{
              "context" : "foc",
              "element" : "code",
              "variable" : "codeV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "codeV"
              },
              {
                "valueString" : "string"
              }]
            }]
          },
          {
            "name" : "cnvFocVCCSys",
            "source" : [{
              "context" : "foc",
              "element" : "system",
              "variable" : "systemV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "systemV"
              },
              {
                "valueString" : "string"
              }]
            }]
          },
          {
            "name" : "cnvFocVCCDisplay",
            "source" : [{
              "context" : "foc",
              "element" : "display",
              "variable" : "displayV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "displayV"
              },
              {
                "valueString" : "string"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[reported-focality]"
    },
    {
      "name" : "cnvType",
      "source" : [{
        "context" : "src",
        "element" : "type",
        "variable" : "t"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "cnvTypeCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "cnvTypeCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "cnvTypeCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "https://bwhc.de/mtb/cnv-type"
              }]
            }]
          },
          {
            "name" : "cnvTypeCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "type"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "cnvTypeVCC",
        "source" : [{
          "context" : "t"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "variable" : "vc"
        }],
        "rule" : [{
          "name" : "cnvTypeVCCCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "cnvTypeVCCCode",
            "source" : [{
              "context" : "t",
              "element" : "code",
              "variable" : "codeV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "codeV"
              },
              {
                "valueString" : "string"
              }]
            }]
          },
          {
            "name" : "cnvTypeVCCSys",
            "source" : [{
              "context" : "t",
              "element" : "system",
              "variable" : "systemV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "systemV"
              },
              {
                "valueString" : "string"
              }]
            }]
          },
          {
            "name" : "cnvTypeVCCDisplay",
            "source" : [{
              "context" : "t",
              "element" : "display",
              "variable" : "displayV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "displayV"
              },
              {
                "valueString" : "string"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[cnv-type]"
    }]
  },
  {
    "name" : "MapDNAFusion",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapDNAFusion: DNPM dnaFusions[*] → MII_PR_MTB_DNA_Fusion\r\nComponents: five-prime-chromosome, three-prime-chromosome,\r\nfive-prime-position, three-prime-position,\r\nfive-prime-gene, three-prime-gene,\r\nallelic-read-depth\r\nAll component codes from mii-cs-mtb-molekulare-biomarker\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Observation",
      "mode" : "target"
    },
    {
      "name" : "ngsReport",
      "type" : "BackboneElement",
      "mode" : "source"
    }],
    "rule" : [{
      "name" : "dfId",
      "source" : [{
        "context" : "src",
        "element" : "id",
        "variable" : "srcId"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "srcId"
        },
        {
          "valueString" : "id"
        }]
      }]
    },
    {
      "name" : "dfStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "final"
        }]
      }]
    },
    {
      "name" : "dfMeta",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "meta",
        "variable" : "m"
      }],
      "rule" : [{
        "name" : "dfProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-dna-fusion"
          }]
        }]
      }]
    },
    {
      "name" : "dfCategory",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "category",
        "variable" : "cat"
      }],
      "rule" : [{
        "name" : "dfCatCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "cat",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "dfCatSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
            }]
          }]
        },
        {
          "name" : "dfCatCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "laboratory"
            }]
          }]
        }]
      }],
      "documentation" : "Category: laboratory"
    },
    {
      "name" : "dfCode",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "c"
      }],
      "rule" : [{
        "name" : "dfCodeCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "c",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "dfCodeSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://loinc.org"
            }]
          }]
        },
        {
          "name" : "dfCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "69548-6"
            }]
          }]
        },
        {
          "name" : "dfCodeDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Genetic variant assessment"
            }]
          }]
        }]
      }],
      "documentation" : "Code: LOINC 69548-6"
    },
    {
      "name" : "dfSubject",
      "source" : [{
        "context" : "ngsReport",
        "element" : "patient",
        "variable" : "pat"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "variable" : "subj"
      }],
      "rule" : [{
        "name" : "dfSubjectRef",
        "source" : [{
          "context" : "pat",
          "element" : "id",
          "variable" : "pid"
        }],
        "target" : [{
          "context" : "subj",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "pid"
          }]
        }]
      }],
      "documentation" : "Subject (from parent ngsReport.patient)"
    },
    {
      "name" : "df5PrimeGene",
      "source" : [{
        "context" : "src",
        "element" : "fusionPartner5prime",
        "variable" : "fp5"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "df5PrimeGeneInner",
        "source" : [{
          "context" : "fp5",
          "element" : "gene",
          "variable" : "gene5"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "df5GCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "df5GCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "df5GCodeSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
                }]
              }]
            },
            {
              "name" : "df5GCodeCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "five-prime-gene"
                }]
              }]
            },
            {
              "name" : "df5GCodeDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Five Prime Gene"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "df5GVCC",
          "source" : [{
            "context" : "gene5"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueCodeableConcept",
            "variable" : "vc"
          }],
          "rule" : [{
            "name" : "df5GVCCCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "vc",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "c"
            }],
            "rule" : [{
              "name" : "df5GVCCCode",
              "source" : [{
                "context" : "gene5",
                "element" : "code",
                "variable" : "codeV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "codeV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            },
            {
              "name" : "df5GVCCSys",
              "source" : [{
                "context" : "gene5",
                "element" : "system",
                "variable" : "systemV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "systemV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            },
            {
              "name" : "df5GVCCDisplay",
              "source" : [{
                "context" : "gene5",
                "element" : "display",
                "variable" : "displayV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "displayV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[five-prime-gene]"
    },
    {
      "name" : "df3PrimeGene",
      "source" : [{
        "context" : "src",
        "element" : "fusionPartner3prime",
        "variable" : "fp3"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "df3PrimeGeneInner",
        "source" : [{
          "context" : "fp3",
          "element" : "gene",
          "variable" : "gene3"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "df3GCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "df3GCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "df3GCodeSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
                }]
              }]
            },
            {
              "name" : "df3GCodeCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "three-prime-gene"
                }]
              }]
            },
            {
              "name" : "df3GCodeDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Three Prime Gene"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "df3GVCC",
          "source" : [{
            "context" : "gene3"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueCodeableConcept",
            "variable" : "vc"
          }],
          "rule" : [{
            "name" : "df3GVCCCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "vc",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "c"
            }],
            "rule" : [{
              "name" : "df3GVCCCode",
              "source" : [{
                "context" : "gene3",
                "element" : "code",
                "variable" : "codeV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "codeV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            },
            {
              "name" : "df3GVCCSys",
              "source" : [{
                "context" : "gene3",
                "element" : "system",
                "variable" : "systemV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "systemV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            },
            {
              "name" : "df3GVCCDisplay",
              "source" : [{
                "context" : "gene3",
                "element" : "display",
                "variable" : "displayV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "displayV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[three-prime-gene]"
    },
    {
      "name" : "df5PrimePosition",
      "source" : [{
        "context" : "src",
        "element" : "fusionPartner5prime",
        "variable" : "fp5"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "df5PrimePositionInner",
        "source" : [{
          "context" : "fp5",
          "element" : "position",
          "variable" : "pos5"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "df5PCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "df5PCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "df5PCodeSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
                }]
              }]
            },
            {
              "name" : "df5PCodeCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "five-prime-position"
                }]
              }]
            },
            {
              "name" : "df5PCodeDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Five Prime Position"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "df5PosRange",
          "source" : [{
            "context" : "pos5"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueRange",
            "variable" : "vr"
          }],
          "rule" : [{
            "name" : "df5PosLow",
            "source" : [{
              "context" : "pos5"
            }],
            "target" : [{
              "context" : "vr",
              "contextType" : "variable",
              "element" : "low",
              "variable" : "low"
            }],
            "rule" : [{
              "name" : "df5PosLowValue",
              "source" : [{
                "context" : "pos5"
              }],
              "target" : [{
                "context" : "low",
                "contextType" : "variable",
                "element" : "value",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "pos5"
                }]
              }]
            }]
          },
          {
            "name" : "df5PosHigh",
            "source" : [{
              "context" : "pos5"
            }],
            "target" : [{
              "context" : "vr",
              "contextType" : "variable",
              "element" : "high",
              "variable" : "high"
            }],
            "rule" : [{
              "name" : "df5PosHighValue",
              "source" : [{
                "context" : "pos5"
              }],
              "target" : [{
                "context" : "high",
                "contextType" : "variable",
                "element" : "value",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "pos5"
                }]
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[five-prime-position]"
    },
    {
      "name" : "df3PrimePosition",
      "source" : [{
        "context" : "src",
        "element" : "fusionPartner3prime",
        "variable" : "fp3"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "df3PrimePositionInner",
        "source" : [{
          "context" : "fp3",
          "element" : "position",
          "variable" : "pos3"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "df3PCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "df3PCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "df3PCodeSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
                }]
              }]
            },
            {
              "name" : "df3PCodeCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "three-prime-position"
                }]
              }]
            },
            {
              "name" : "df3PCodeDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Three Prime Position"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "df3PosRange",
          "source" : [{
            "context" : "pos3"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueRange",
            "variable" : "vr"
          }],
          "rule" : [{
            "name" : "df3PosLow",
            "source" : [{
              "context" : "pos3"
            }],
            "target" : [{
              "context" : "vr",
              "contextType" : "variable",
              "element" : "low",
              "variable" : "low"
            }],
            "rule" : [{
              "name" : "df3PosLowValue",
              "source" : [{
                "context" : "pos3"
              }],
              "target" : [{
                "context" : "low",
                "contextType" : "variable",
                "element" : "value",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "pos3"
                }]
              }]
            }]
          },
          {
            "name" : "df3PosHigh",
            "source" : [{
              "context" : "pos3"
            }],
            "target" : [{
              "context" : "vr",
              "contextType" : "variable",
              "element" : "high",
              "variable" : "high"
            }],
            "rule" : [{
              "name" : "df3PosHighValue",
              "source" : [{
                "context" : "pos3"
              }],
              "target" : [{
                "context" : "high",
                "contextType" : "variable",
                "element" : "value",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "pos3"
                }]
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[three-prime-position]"
    },
    {
      "name" : "dfReads",
      "source" : [{
        "context" : "src",
        "element" : "reportedNumReads",
        "variable" : "reads"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "dfRdCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "dfRdCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "dfRdCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "dfRdCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "82121-5"
              }]
            }]
          },
          {
            "name" : "dfRdCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Allelic read depth"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "dfRdVQ",
        "source" : [{
          "context" : "reads"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueQuantity",
          "variable" : "vq"
        }],
        "rule" : [{
          "name" : "dfRdValue",
          "source" : [{
            "context" : "reads"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "reads"
            }]
          }]
        },
        {
          "name" : "dfRdSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://unitsofmeasure.org"
            }]
          }]
        },
        {
          "name" : "dfRdUCUM",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "1"
            }]
          }]
        }]
      }],
      "documentation" : "component[allelic-read-depth]: LOINC 82121-5 (reportedNumReads)"
    }]
  },
  {
    "name" : "MapRNAFusion",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapRNAFusion: DNPM rnaFusions[*] → MII_PR_MTB_RNA_Fusion\r\nComponents: five-prime-gene, five-prime-transcript-id, five-prime-exon-id,\r\nfive-prime-position, five-prime-strand,\r\nthree-prime-gene, three-prime-transcript-id, three-prime-exon-id,\r\nthree-prime-position, three-prime-strand,\r\nvariation-code, allelic-read-depth\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Observation",
      "mode" : "target"
    },
    {
      "name" : "ngsReport",
      "type" : "BackboneElement",
      "mode" : "source"
    }],
    "rule" : [{
      "name" : "rfId",
      "source" : [{
        "context" : "src",
        "element" : "id",
        "variable" : "srcId"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "srcId"
        },
        {
          "valueString" : "id"
        }]
      }]
    },
    {
      "name" : "rfStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "final"
        }]
      }]
    },
    {
      "name" : "rfMeta",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "meta",
        "variable" : "m"
      }],
      "rule" : [{
        "name" : "rfProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-rna-fusion"
          }]
        }]
      }]
    },
    {
      "name" : "rfCategory",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "category",
        "variable" : "cat"
      }],
      "rule" : [{
        "name" : "rfCatCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "cat",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "rfCatSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
            }]
          }]
        },
        {
          "name" : "rfCatCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "laboratory"
            }]
          }]
        }]
      }],
      "documentation" : "Category: laboratory"
    },
    {
      "name" : "rfCode",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "c"
      }],
      "rule" : [{
        "name" : "rfCodeCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "c",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "rfCodeSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://loinc.org"
            }]
          }]
        },
        {
          "name" : "rfCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "69548-6"
            }]
          }]
        },
        {
          "name" : "rfCodeDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Genetic variant assessment"
            }]
          }]
        }]
      }],
      "documentation" : "Code: LOINC 69548-6"
    },
    {
      "name" : "rfVCC",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "valueCodeableConcept",
        "variable" : "vc"
      }],
      "rule" : [{
        "name" : "rfVCCCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "vc",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "rfVCCSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://loinc.org"
            }]
          }]
        },
        {
          "name" : "rfVCCCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "LA9633-4"
            }]
          }]
        },
        {
          "name" : "rfVCCDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Present"
            }]
          }]
        }]
      }],
      "documentation" : "valueCodeableConcept: Present"
    },
    {
      "name" : "rfSubject",
      "source" : [{
        "context" : "ngsReport",
        "element" : "patient",
        "variable" : "pat"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "subject",
        "variable" : "subj"
      }],
      "rule" : [{
        "name" : "rfSubjectRef",
        "source" : [{
          "context" : "pat",
          "element" : "id",
          "variable" : "pid"
        }],
        "target" : [{
          "context" : "subj",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "pid"
          }]
        }]
      }],
      "documentation" : "Subject (from parent ngsReport.patient)"
    },
    {
      "name" : "rfExternalIds",
      "source" : [{
        "context" : "src",
        "element" : "externalIds",
        "variable" : "eid"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "rfVarCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "rfVarCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "rfVarCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "rfVarCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "81252-9"
              }]
            }]
          },
          {
            "name" : "rfVarCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Discrete genetic variant"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "rfVarVCC",
        "source" : [{
          "context" : "eid"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "variable" : "vc"
        }],
        "rule" : [{
          "name" : "rfVarVCCCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "rfVarVCCCode",
            "source" : [{
              "context" : "eid",
              "element" : "value",
              "variable" : "valueV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "valueV"
              },
              {
                "valueString" : "string"
              }]
            }]
          },
          {
            "name" : "rfVarVCCSys",
            "source" : [{
              "context" : "eid",
              "element" : "system",
              "variable" : "systemV"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "cast",
              "parameter" : [{
                "valueId" : "systemV"
              },
              {
                "valueString" : "string"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[variation-code]: external IDs (e.g. COSMIC)"
    },
    {
      "name" : "rf5PrimeGene",
      "source" : [{
        "context" : "src",
        "element" : "fusionPartner5prime",
        "variable" : "fp5"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "rf5PrimeGeneInner",
        "source" : [{
          "context" : "fp5",
          "element" : "gene",
          "variable" : "gene5"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "rf5GCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "rf5GCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "rf5GCodeSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
                }]
              }]
            },
            {
              "name" : "rf5GCodeCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "five-prime-gene"
                }]
              }]
            },
            {
              "name" : "rf5GCodeDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Five Prime Gene"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "rf5GVCC",
          "source" : [{
            "context" : "gene5"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueCodeableConcept",
            "variable" : "vc"
          }],
          "rule" : [{
            "name" : "rf5GVCCCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "vc",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "c"
            }],
            "rule" : [{
              "name" : "rf5GVCCCode",
              "source" : [{
                "context" : "gene5",
                "element" : "code",
                "variable" : "codeV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "codeV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            },
            {
              "name" : "rf5GVCCSys",
              "source" : [{
                "context" : "gene5",
                "element" : "system",
                "variable" : "systemV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "systemV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            },
            {
              "name" : "rf5GVCCDisplay",
              "source" : [{
                "context" : "gene5",
                "element" : "display",
                "variable" : "displayV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "displayV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            }]
          }]
        }]
      }],
      "documentation" : "---- 5' fusion partner ----\r\ncomponent[five-prime-gene]"
    },
    {
      "name" : "rf5PrimeTranscript",
      "source" : [{
        "context" : "src",
        "element" : "fusionPartner5prime",
        "variable" : "fp5"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "rf5PrimeTranscriptInner",
        "source" : [{
          "context" : "fp5",
          "element" : "transcript",
          "variable" : "t5"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "rf5TCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "rf5TCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "rf5TCodeSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
                }]
              }]
            },
            {
              "name" : "rf5TCodeCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "five-prime-transcript-id"
                }]
              }]
            },
            {
              "name" : "rf5TCodeDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Five Prime Transcript ID"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "rf5TVCC",
          "source" : [{
            "context" : "t5"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueCodeableConcept",
            "variable" : "vc"
          }],
          "rule" : [{
            "name" : "rf5TVCCCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "vc",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "c"
            }],
            "rule" : [{
              "name" : "rf5TVCCCode",
              "source" : [{
                "context" : "t5",
                "element" : "value",
                "variable" : "valueV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "valueV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            },
            {
              "name" : "rf5TVCCSys",
              "source" : [{
                "context" : "t5",
                "element" : "system",
                "variable" : "systemV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "systemV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[five-prime-transcript-id]"
    },
    {
      "name" : "rf5PrimeExon",
      "source" : [{
        "context" : "src",
        "element" : "fusionPartner5prime",
        "variable" : "fp5"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "rf5PrimeExonInner",
        "source" : [{
          "context" : "fp5",
          "element" : "exon",
          "variable" : "exon5"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "rf5ECode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "rf5ECodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "rf5ECodeSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
                }]
              }]
            },
            {
              "name" : "rf5ECodeCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "five-prime-exon-id"
                }]
              }]
            },
            {
              "name" : "rf5ECodeDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Five Prime Exon ID"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "rf5EVCC",
          "source" : [{
            "context" : "exon5"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueCodeableConcept",
            "variable" : "vc"
          }],
          "rule" : [{
            "name" : "rf5ExonText",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "vc",
              "contextType" : "variable",
              "element" : "text",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "exon5"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[five-prime-exon-id]"
    },
    {
      "name" : "rf5PrimePosition",
      "source" : [{
        "context" : "src",
        "element" : "fusionPartner5prime",
        "variable" : "fp5"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "rf5PrimePositionInner",
        "source" : [{
          "context" : "fp5",
          "element" : "position",
          "variable" : "pos5"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "rf5PCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "rf5PCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "rf5PCodeSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
                }]
              }]
            },
            {
              "name" : "rf5PCodeCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "five-prime-position"
                }]
              }]
            },
            {
              "name" : "rf5PCodeDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Five Prime Position"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "rf5PosRange",
          "source" : [{
            "context" : "pos5"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueRange",
            "variable" : "vr"
          }],
          "rule" : [{
            "name" : "rf5PosLow",
            "source" : [{
              "context" : "pos5"
            }],
            "target" : [{
              "context" : "vr",
              "contextType" : "variable",
              "element" : "low",
              "variable" : "low"
            }],
            "rule" : [{
              "name" : "rf5PosLowValue",
              "source" : [{
                "context" : "pos5"
              }],
              "target" : [{
                "context" : "low",
                "contextType" : "variable",
                "element" : "value",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "pos5"
                }]
              }]
            }]
          },
          {
            "name" : "rf5PosHigh",
            "source" : [{
              "context" : "pos5"
            }],
            "target" : [{
              "context" : "vr",
              "contextType" : "variable",
              "element" : "high",
              "variable" : "high"
            }],
            "rule" : [{
              "name" : "rf5PosHighValue",
              "source" : [{
                "context" : "pos5"
              }],
              "target" : [{
                "context" : "high",
                "contextType" : "variable",
                "element" : "value",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "pos5"
                }]
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[five-prime-position]"
    },
    {
      "name" : "rf5PrimeStrand",
      "source" : [{
        "context" : "src",
        "element" : "fusionPartner5prime",
        "variable" : "fp5"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "rf5PrimeStrandInner",
        "source" : [{
          "context" : "fp5",
          "element" : "strand",
          "variable" : "strand5"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "rf5SCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "rf5SCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "rf5SCodeSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
                }]
              }]
            },
            {
              "name" : "rf5SCodeCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "five-prime-strand"
                }]
              }]
            },
            {
              "name" : "rf5SCodeDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Five Prime Strand"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "rf5StrandVCC",
          "source" : [{
            "context" : "strand5"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueCodeableConcept",
            "variable" : "vc"
          }],
          "rule" : [{
            "name" : "rf5StrandText",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "vc",
              "contextType" : "variable",
              "element" : "text",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "strand5"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[five-prime-strand]"
    },
    {
      "name" : "rf3PrimeGene",
      "source" : [{
        "context" : "src",
        "element" : "fusionPartner3prime",
        "variable" : "fp3"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "rf3PrimeGeneInner",
        "source" : [{
          "context" : "fp3",
          "element" : "gene",
          "variable" : "gene3"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "rf3GCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "rf3GCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "rf3GCodeSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
                }]
              }]
            },
            {
              "name" : "rf3GCodeCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "three-prime-gene"
                }]
              }]
            },
            {
              "name" : "rf3GCodeDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Three Prime Gene"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "rf3GVCC",
          "source" : [{
            "context" : "gene3"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueCodeableConcept",
            "variable" : "vc"
          }],
          "rule" : [{
            "name" : "rf3GVCCCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "vc",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "c"
            }],
            "rule" : [{
              "name" : "rf3GVCCCode",
              "source" : [{
                "context" : "gene3",
                "element" : "code",
                "variable" : "codeV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "codeV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            },
            {
              "name" : "rf3GVCCSys",
              "source" : [{
                "context" : "gene3",
                "element" : "system",
                "variable" : "systemV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "systemV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            },
            {
              "name" : "rf3GVCCDisplay",
              "source" : [{
                "context" : "gene3",
                "element" : "display",
                "variable" : "displayV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "displayV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            }]
          }]
        }]
      }],
      "documentation" : "---- 3' fusion partner ----\r\ncomponent[three-prime-gene]"
    },
    {
      "name" : "rf3PrimeTranscript",
      "source" : [{
        "context" : "src",
        "element" : "fusionPartner3prime",
        "variable" : "fp3"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "rf3PrimeTranscriptInner",
        "source" : [{
          "context" : "fp3",
          "element" : "transcript",
          "variable" : "t3"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "rf3TCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "rf3TCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "rf3TCodeSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
                }]
              }]
            },
            {
              "name" : "rf3TCodeCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "three-prime-transcript-id"
                }]
              }]
            },
            {
              "name" : "rf3TCodeDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Three Prime Transcript ID"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "rf3TVCC",
          "source" : [{
            "context" : "t3"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueCodeableConcept",
            "variable" : "vc"
          }],
          "rule" : [{
            "name" : "rf3TVCCCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "vc",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "c"
            }],
            "rule" : [{
              "name" : "rf3TVCCCode",
              "source" : [{
                "context" : "t3",
                "element" : "value",
                "variable" : "valueV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "valueV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            },
            {
              "name" : "rf3TVCCSys",
              "source" : [{
                "context" : "t3",
                "element" : "system",
                "variable" : "systemV"
              }],
              "target" : [{
                "context" : "c",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "cast",
                "parameter" : [{
                  "valueId" : "systemV"
                },
                {
                  "valueString" : "string"
                }]
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[three-prime-transcript-id]"
    },
    {
      "name" : "rf3PrimeExon",
      "source" : [{
        "context" : "src",
        "element" : "fusionPartner3prime",
        "variable" : "fp3"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "rf3PrimeExonInner",
        "source" : [{
          "context" : "fp3",
          "element" : "exon",
          "variable" : "exon3"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "rf3ECode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "rf3ECodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "rf3ECodeSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
                }]
              }]
            },
            {
              "name" : "rf3ECodeCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "three-prime-exon-id"
                }]
              }]
            },
            {
              "name" : "rf3ECodeDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Three Prime Exon ID"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "rf3EVCC",
          "source" : [{
            "context" : "exon3"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueCodeableConcept",
            "variable" : "vc"
          }],
          "rule" : [{
            "name" : "rf3ExonText",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "vc",
              "contextType" : "variable",
              "element" : "text",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "exon3"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[three-prime-exon-id]"
    },
    {
      "name" : "rf3PrimePosition",
      "source" : [{
        "context" : "src",
        "element" : "fusionPartner3prime",
        "variable" : "fp3"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "rf3PrimePositionInner",
        "source" : [{
          "context" : "fp3",
          "element" : "position",
          "variable" : "pos3"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "rf3PCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "rf3PCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "rf3PCodeSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
                }]
              }]
            },
            {
              "name" : "rf3PCodeCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "three-prime-position"
                }]
              }]
            },
            {
              "name" : "rf3PCodeDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Three Prime Position"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "rf3PosRange",
          "source" : [{
            "context" : "pos3"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueRange",
            "variable" : "vr"
          }],
          "rule" : [{
            "name" : "rf3PosLow",
            "source" : [{
              "context" : "pos3"
            }],
            "target" : [{
              "context" : "vr",
              "contextType" : "variable",
              "element" : "low",
              "variable" : "low"
            }],
            "rule" : [{
              "name" : "rf3PosLowValue",
              "source" : [{
                "context" : "pos3"
              }],
              "target" : [{
                "context" : "low",
                "contextType" : "variable",
                "element" : "value",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "pos3"
                }]
              }]
            }]
          },
          {
            "name" : "rf3PosHigh",
            "source" : [{
              "context" : "pos3"
            }],
            "target" : [{
              "context" : "vr",
              "contextType" : "variable",
              "element" : "high",
              "variable" : "high"
            }],
            "rule" : [{
              "name" : "rf3PosHighValue",
              "source" : [{
                "context" : "pos3"
              }],
              "target" : [{
                "context" : "high",
                "contextType" : "variable",
                "element" : "value",
                "transform" : "copy",
                "parameter" : [{
                  "valueId" : "pos3"
                }]
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[three-prime-position]"
    },
    {
      "name" : "rf3PrimeStrand",
      "source" : [{
        "context" : "src",
        "element" : "fusionPartner3prime",
        "variable" : "fp3"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "rf3PrimeStrandInner",
        "source" : [{
          "context" : "fp3",
          "element" : "strand",
          "variable" : "strand3"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "component",
          "variable" : "comp"
        }],
        "rule" : [{
          "name" : "rf3SCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "code",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "rf3SCodeCoding",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "coding",
              "variable" : "coding"
            }],
            "rule" : [{
              "name" : "rf3SCodeSys",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "system",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker"
                }]
              }]
            },
            {
              "name" : "rf3SCodeCode",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "code",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "three-prime-strand"
                }]
              }]
            },
            {
              "name" : "rf3SCodeDisplay",
              "source" : [{
                "context" : "src"
              }],
              "target" : [{
                "context" : "coding",
                "contextType" : "variable",
                "element" : "display",
                "transform" : "copy",
                "parameter" : [{
                  "valueString" : "Three Prime Strand"
                }]
              }]
            }]
          }]
        },
        {
          "name" : "rf3StrandVCC",
          "source" : [{
            "context" : "strand3"
          }],
          "target" : [{
            "context" : "comp",
            "contextType" : "variable",
            "element" : "valueCodeableConcept",
            "variable" : "vc"
          }],
          "rule" : [{
            "name" : "rf3StrandText",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "vc",
              "contextType" : "variable",
              "element" : "text",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "strand3"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "component[three-prime-strand]"
    },
    {
      "name" : "rfReads",
      "source" : [{
        "context" : "src",
        "element" : "reportedNumReads",
        "variable" : "reads"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "rfRdCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "rfRdCodeCoding",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "coding"
          }],
          "rule" : [{
            "name" : "rfRdCodeSys",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "rfRdCodeCode",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "82121-5"
              }]
            }]
          },
          {
            "name" : "rfRdCodeDisplay",
            "source" : [{
              "context" : "src"
            }],
            "target" : [{
              "context" : "coding",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Allelic read depth"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "rfRdVQ",
        "source" : [{
          "context" : "reads"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueQuantity",
          "variable" : "vq"
        }],
        "rule" : [{
          "name" : "rfRdValue",
          "source" : [{
            "context" : "reads"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "reads"
            }]
          }]
        },
        {
          "name" : "rfRdSys",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://unitsofmeasure.org"
            }]
          }]
        },
        {
          "name" : "rfRdUCUM",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "vq",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "1"
            }]
          }]
        }]
      }],
      "documentation" : "component[allelic-read-depth]: LOINC 82121-5 (reportedNumReads)"
    }]
  }]
}

```
