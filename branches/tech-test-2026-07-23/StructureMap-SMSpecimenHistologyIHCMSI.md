# SMSpecimenHistologyIHCMSI - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMSpecimenHistologyIHCMSI**

## StructureMap: SMSpecimenHistologyIHCMSI 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-specimen-histology-ihc-msi | *Version*:2026.0.1 |
| Draft as of 2026-07-23 | *Computable Name*:SMSpecimenHistologyIHCMSI |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SMSpecimenHistologyIHCMSI",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-specimen-histology-ihc-msi",
  "version" : "2026.0.1",
  "name" : "SMSpecimenHistologyIHCMSI",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/Specimen",
    "mode" : "produced",
    "alias" : "Specimen"
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
    "name" : "SpecimenHistologyIHCMSI",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nRoot group: iterate over the whole PatientRecord and populate the Bundle\r\n---------------------------------------------------------------------------",
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
      }],
      "documentation" : "Bundle type = collection"
    },
    {
      "name" : "specimen",
      "source" : [{
        "context" : "src",
        "element" : "specimens",
        "variable" : "spec"
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
        "variable" : "s",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Specimen"
        }]
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "spec",
          "element" : "id",
          "variable" : "specid"
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
            "valueId" : "specid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "spec"
        }],
        "target" : [{
          "context" : "s",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapSpecimen",
          "variable" : ["spec", "s"]
        }]
      }],
      "documentation" : "--- Specimen (one per specimens entry) -----------------------------------"
    },
    {
      "name" : "histologyReport",
      "source" : [{
        "context" : "src",
        "element" : "histologyReports",
        "variable" : "hr"
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
          "context" : "hr",
          "element" : "id",
          "variable" : "hrid"
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
            "valueId" : "hrid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "hr"
        }],
        "target" : [{
          "context" : "dr",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapHistologyReport",
          "variable" : ["hr", "dr", "bundle"]
        }]
      }],
      "documentation" : "--- DiagnosticReport + child Observations per histologyReport -----------"
    },
    {
      "name" : "ihcReport",
      "source" : [{
        "context" : "src",
        "element" : "ihcReports",
        "variable" : "ihc"
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
          "context" : "ihc",
          "element" : "id",
          "variable" : "ihcid"
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
            "valueId" : "ihcid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "ihc"
        }],
        "target" : [{
          "context" : "dr",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapIHCReport",
          "variable" : ["ihc", "dr", "bundle"]
        }]
      }],
      "documentation" : "--- DiagnosticReport + child Observations per ihcReport -----------------"
    },
    {
      "name" : "msiFinding",
      "source" : [{
        "context" : "src",
        "element" : "msiFindings",
        "variable" : "msi"
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
          "context" : "msi",
          "element" : "id",
          "variable" : "msiid"
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
            "valueId" : "msiid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "msi"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapMSIFinding",
          "variable" : ["msi", "obs"]
        }]
      }],
      "documentation" : "--- Observation per msi finding -----------------------------------------"
    }]
  },
  {
    "name" : "MapSpecimen",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapSpecimen: DNPM specimen entry → FHIR Specimen\r\nProfile: MII (parent: Specimen)\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Specimen",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "specimenId",
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
      "name" : "specimenMeta",
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
        "name" : "specimenProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumor-specimen"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "specimenSubject",
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
        "name" : "specimenSubjectRef",
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
      "documentation" : "subject → Patient reference"
    },
    {
      "name" : "specimenType",
      "source" : [{
        "context" : "src",
        "element" : "type",
        "variable" : "t"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "type",
        "variable" : "typ"
      }],
      "rule" : [{
        "name" : "specimenTypeCoding",
        "source" : [{
          "context" : "t"
        }],
        "target" : [{
          "context" : "typ",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "specimenTypeCode",
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
          "name" : "specimenTypeSystem",
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
        }]
      }],
      "documentation" : "type → CodeableConcept"
    },
    {
      "name" : "specimenCollection",
      "source" : [{
        "context" : "src",
        "element" : "collection",
        "variable" : "col"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "collection",
        "variable" : "tcol"
      }],
      "dependent" : [{
        "name" : "MapSpecimenCollection",
        "variable" : ["col", "tcol"]
      }],
      "documentation" : "collection block"
    }]
  },
  {
    "name" : "MapSpecimenCollection",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapSpecimenCollection: DNPM collection → FHIR Specimen.collection\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "BackboneElement",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "collectedDateTime",
      "source" : [{
        "context" : "src",
        "element" : "date",
        "variable" : "dateDt"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "collectedDateTime",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "dateDt"
        },
        {
          "valueString" : "dateTime"
        }]
      }]
    },
    {
      "name" : "bodySite",
      "source" : [{
        "context" : "src",
        "element" : "site",
        "variable" : "site"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "bodySite",
        "variable" : "bs"
      }],
      "rule" : [{
        "name" : "bodySiteCoding",
        "source" : [{
          "context" : "site"
        }],
        "target" : [{
          "context" : "bs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "bodySiteCode",
          "source" : [{
            "context" : "site",
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
          "name" : "bodySiteSystem",
          "source" : [{
            "context" : "site",
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
      }],
      "documentation" : "bodySite"
    },
    {
      "name" : "collectionMethod",
      "source" : [{
        "context" : "src",
        "element" : "method",
        "variable" : "meth"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "method",
        "variable" : "m"
      }],
      "rule" : [{
        "name" : "methodCoding",
        "source" : [{
          "context" : "meth"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "methodCode",
          "source" : [{
            "context" : "meth",
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
          "name" : "methodSystem",
          "source" : [{
            "context" : "meth",
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
      }],
      "documentation" : "method"
    }]
  },
  {
    "name" : "MapHistologyReport",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapHistologyReport: DNPM histologyReport → FHIR DiagnosticReport\r\nAlso creates child Observation entries for tumorCellContent and\r\ntumorMorphology and links them as DiagnosticReport.result references.\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "dr",
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
        "variable" : "idV"
      }],
      "target" : [{
        "context" : "dr",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "idV"
        },
        {
          "valueString" : "string"
        }]
      }]
    },
    {
      "name" : "drMeta",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "dr",
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
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-befundbericht"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "drStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "dr",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "final"
        }]
      }]
    },
    {
      "name" : "drSubject",
      "source" : [{
        "context" : "src",
        "element" : "patient",
        "variable" : "pat"
      }],
      "target" : [{
        "context" : "dr",
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
      "documentation" : "subject"
    },
    {
      "name" : "drSpecimen",
      "source" : [{
        "context" : "src",
        "element" : "specimen",
        "variable" : "spec"
      }],
      "target" : [{
        "context" : "dr",
        "contextType" : "variable",
        "element" : "specimen",
        "variable" : "sRef"
      }],
      "rule" : [{
        "name" : "drSpecimenRef",
        "source" : [{
          "context" : "spec",
          "element" : "id",
          "variable" : "sid"
        }],
        "target" : [{
          "context" : "sRef",
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
      "documentation" : "specimen[0]"
    },
    {
      "name" : "drIssued",
      "source" : [{
        "context" : "src",
        "element" : "issuedOn",
        "variable" : "d"
      }],
      "target" : [{
        "context" : "dr",
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
      "documentation" : "issued — append timestamp suffix so it becomes a FHIR instant"
    },
    {
      "name" : "tccEntry",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "res"
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
        "name" : "tccInner",
        "source" : [{
          "context" : "res",
          "element" : "tumorCellContent",
          "variable" : "tcc"
        }],
        "rule" : [{
          "name" : "fullUrl",
          "source" : [{
            "context" : "tcc",
            "element" : "id",
            "variable" : "tid"
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
              "valueId" : "tid"
            }]
          }]
        },
        {
          "name" : "tccMap",
          "source" : [{
            "context" : "tcc"
          }],
          "target" : [{
            "context" : "obs",
            "contextType" : "variable"
          }],
          "dependent" : [{
            "name" : "MapTumorCellContent",
            "variable" : ["tcc", "obs"]
          }]
        }]
      }],
      "documentation" : "--- tumorCellContent child Observation -----------------------------------"
    },
    {
      "name" : "drResultTCC",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "res"
      }],
      "target" : [{
        "context" : "dr",
        "contextType" : "variable",
        "element" : "result",
        "variable" : "r"
      }],
      "rule" : [{
        "name" : "tccInner",
        "source" : [{
          "context" : "res",
          "element" : "tumorCellContent",
          "variable" : "tcc"
        }],
        "rule" : [{
          "name" : "tccRef",
          "source" : [{
            "context" : "tcc",
            "element" : "id",
            "variable" : "tid"
          }],
          "target" : [{
            "context" : "r",
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
      "documentation" : "link result reference from DiagnosticReport"
    },
    {
      "name" : "morphEntry",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "res"
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
        "name" : "morphInner",
        "source" : [{
          "context" : "res",
          "element" : "tumorMorphology",
          "variable" : "tm"
        }],
        "rule" : [{
          "name" : "fullUrl",
          "source" : [{
            "context" : "tm",
            "element" : "id",
            "variable" : "tmid"
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
              "valueId" : "tmid"
            }]
          }]
        },
        {
          "name" : "morphMap",
          "source" : [{
            "context" : "tm"
          }],
          "target" : [{
            "context" : "obs",
            "contextType" : "variable"
          }],
          "dependent" : [{
            "name" : "MapTumorMorphology",
            "variable" : ["tm", "obs"]
          }]
        }]
      }],
      "documentation" : "--- tumorMorphology child Observation ------------------------------------"
    },
    {
      "name" : "drResultMorph",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "res"
      }],
      "target" : [{
        "context" : "dr",
        "contextType" : "variable",
        "element" : "result",
        "variable" : "r"
      }],
      "rule" : [{
        "name" : "morphInner",
        "source" : [{
          "context" : "res",
          "element" : "tumorMorphology",
          "variable" : "tm"
        }],
        "rule" : [{
          "name" : "morphRef",
          "source" : [{
            "context" : "tm",
            "element" : "id",
            "variable" : "tmid"
          }],
          "target" : [{
            "context" : "r",
            "contextType" : "variable",
            "element" : "reference",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "tmid"
            }]
          }]
        }]
      }],
      "documentation" : "link result reference from DiagnosticReport"
    }]
  },
  {
    "name" : "MapTumorCellContent",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapTumorCellContent: DNPM tumorCellContent → FHIR Observation\r\nProfile: MII_PR_MTB_Tumorzellgehalt\r\ncode: LOINC 93356-4 (Cells with cytogenetic abnormality)\r\n---------------------------------------------------------------------------",
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
      "name" : "tccId",
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
      "name" : "tccMeta",
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
        "name" : "tccProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "tccStatus",
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
      "name" : "tccCode",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "code"
      }],
      "rule" : [{
        "name" : "tccCodeCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "code",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "tccCodeSystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://loinc.org"
            }]
          }]
        },
        {
          "name" : "tccCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "93356-4"
            }]
          }]
        }]
      }],
      "documentation" : "Fixed LOINC code per mii-pr-mtb-tumorzellgehalt profile"
    },
    {
      "name" : "tccSubject",
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
        "name" : "tccSubjectRef",
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
      "documentation" : "subject"
    },
    {
      "name" : "tccSpecimen",
      "source" : [{
        "context" : "src",
        "element" : "specimen",
        "variable" : "spec"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "specimen",
        "variable" : "sRef"
      }],
      "rule" : [{
        "name" : "tccSpecimenRef",
        "source" : [{
          "context" : "spec",
          "element" : "id",
          "variable" : "sid"
        }],
        "target" : [{
          "context" : "sRef",
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
      "documentation" : "specimen"
    },
    {
      "name" : "tccValueQuantity",
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
        "name" : "tccQtyValue",
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
        "name" : "tccQtyUnit",
        "source" : [{
          "context" : "v"
        }],
        "target" : [{
          "context" : "vq",
          "contextType" : "variable",
          "element" : "unit",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "percent"
          }]
        }]
      },
      {
        "name" : "tccQtySystem",
        "source" : [{
          "context" : "v"
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
        "name" : "tccQtyCode",
        "source" : [{
          "context" : "v"
        }],
        "target" : [{
          "context" : "vq",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "%"
          }]
        }]
      }],
      "documentation" : "valueQuantity: multiply fraction × 100 to get percent"
    },
    {
      "name" : "tccMethod",
      "source" : [{
        "context" : "src",
        "element" : "method",
        "variable" : "meth"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "method",
        "variable" : "m"
      }],
      "rule" : [{
        "name" : "tccMethodCoding",
        "source" : [{
          "context" : "meth"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "tccMethodCode",
          "source" : [{
            "context" : "meth",
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
          "name" : "tccMethodSystem",
          "source" : [{
            "context" : "meth",
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
      }],
      "documentation" : "method"
    }]
  },
  {
    "name" : "MapTumorMorphology",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapTumorMorphology: DNPM tumorMorphology → FHIR Observation\r\nProfile: Observation (base — no dedicated MII MTB profile yet)\r\ncode: LOINC 59847-4 (Histology and Behavior ICD-O-3)\r\n---------------------------------------------------------------------------",
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
      "name" : "morphId",
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
      "name" : "morphStatus",
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
      "name" : "morphCode",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "code"
      }],
      "rule" : [{
        "name" : "morphCodeCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "code",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "morphCodeSystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://loinc.org"
            }]
          }]
        },
        {
          "name" : "morphCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "59847-4"
            }]
          }]
        },
        {
          "name" : "morphCodeDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Histology and Behavior ICD-O-3 Cancer"
            }]
          }]
        }]
      }],
      "documentation" : "Fixed code for morphology"
    },
    {
      "name" : "morphSubject",
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
        "name" : "morphSubjectRef",
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
      "documentation" : "subject"
    },
    {
      "name" : "morphSpecimen",
      "source" : [{
        "context" : "src",
        "element" : "specimen",
        "variable" : "spec"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "specimen",
        "variable" : "sRef"
      }],
      "rule" : [{
        "name" : "morphSpecimenRef",
        "source" : [{
          "context" : "spec",
          "element" : "id",
          "variable" : "sid"
        }],
        "target" : [{
          "context" : "sRef",
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
      "documentation" : "specimen"
    },
    {
      "name" : "morphValue",
      "source" : [{
        "context" : "src",
        "element" : "morphology",
        "variable" : "morph"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "valueCodeableConcept",
        "variable" : "vcc"
      }],
      "rule" : [{
        "name" : "morphValueCoding",
        "source" : [{
          "context" : "morph"
        }],
        "target" : [{
          "context" : "vcc",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "morphValueCode",
          "source" : [{
            "context" : "morph",
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
          "name" : "morphValueSystem",
          "source" : [{
            "context" : "morph",
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
      }],
      "documentation" : "valueCodeableConcept from first morphology entry"
    },
    {
      "name" : "morphNote",
      "source" : [{
        "context" : "src",
        "element" : "notes",
        "variable" : "n"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "note",
        "variable" : "ann"
      }],
      "rule" : [{
        "name" : "morphNoteText",
        "source" : [{
          "context" : "n"
        }],
        "target" : [{
          "context" : "ann",
          "contextType" : "variable",
          "element" : "text",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "n"
          }]
        }]
      }],
      "documentation" : "notes → Annotation.text (one per note string)"
    }]
  },
  {
    "name" : "MapIHCReport",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapIHCReport: DNPM ihcReport → FHIR DiagnosticReport\r\nAlso creates child Observation entries for each proteinExpression and\r\neach msiMmr entry and links them as DiagnosticReport.result references.\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "dr",
      "type" : "DiagnosticReport",
      "mode" : "target"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "ihcDrId",
      "source" : [{
        "context" : "src",
        "element" : "id",
        "variable" : "idV"
      }],
      "target" : [{
        "context" : "dr",
        "contextType" : "variable",
        "element" : "id",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "idV"
        },
        {
          "valueString" : "string"
        }]
      }]
    },
    {
      "name" : "ihcDrMeta",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "dr",
        "contextType" : "variable",
        "element" : "meta",
        "variable" : "m"
      }],
      "rule" : [{
        "name" : "ihcDrProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ihc-befundbericht"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "ihcDrStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "dr",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "final"
        }]
      }]
    },
    {
      "name" : "ihcDrCode",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "dr",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "code"
      }],
      "rule" : [{
        "name" : "ihcDrCodeCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "code",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "ihcDrCodeSystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://snomed.info/sct"
            }]
          }]
        },
        {
          "name" : "ihcDrCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "1264497003"
            }]
          }]
        },
        {
          "name" : "ihcDrCodeDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Histology report (record artifact)"
            }]
          }]
        }]
      }],
      "documentation" : "Fixed code for IHC panel report: SNOMED 1264497003 (Histology report)"
    },
    {
      "name" : "ihcDrSubject",
      "source" : [{
        "context" : "src",
        "element" : "patient",
        "variable" : "pat"
      }],
      "target" : [{
        "context" : "dr",
        "contextType" : "variable",
        "element" : "subject",
        "variable" : "subj"
      }],
      "rule" : [{
        "name" : "ihcDrSubjectRef",
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
      "documentation" : "subject"
    },
    {
      "name" : "ihcDrSpecimen",
      "source" : [{
        "context" : "src",
        "element" : "specimen",
        "variable" : "spec"
      }],
      "target" : [{
        "context" : "dr",
        "contextType" : "variable",
        "element" : "specimen",
        "variable" : "sRef"
      }],
      "rule" : [{
        "name" : "ihcDrSpecimenRef",
        "source" : [{
          "context" : "spec",
          "element" : "id",
          "variable" : "sid"
        }],
        "target" : [{
          "context" : "sRef",
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
      "documentation" : "specimen[0]"
    },
    {
      "name" : "ihcDrIssued",
      "source" : [{
        "context" : "src",
        "element" : "issuedOn",
        "variable" : "d"
      }],
      "target" : [{
        "context" : "dr",
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
      "documentation" : "issued"
    },
    {
      "name" : "ihcResults",
      "source" : [{
        "context" : "src",
        "element" : "results",
        "variable" : "res"
      }],
      "rule" : [{
        "name" : "peEntry",
        "source" : [{
          "context" : "res",
          "element" : "proteinExpression",
          "variable" : "pe"
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
            "context" : "pe",
            "element" : "id",
            "variable" : "peid"
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
              "valueId" : "peid"
            }]
          }]
        },
        {
          "name" : "map",
          "source" : [{
            "context" : "pe"
          }],
          "target" : [{
            "context" : "obs",
            "contextType" : "variable"
          }],
          "dependent" : [{
            "name" : "MapProteinExpression",
            "variable" : ["pe", "obs"]
          }]
        }]
      },
      {
        "name" : "drResultPE",
        "source" : [{
          "context" : "res",
          "element" : "proteinExpression",
          "variable" : "pe"
        }],
        "target" : [{
          "context" : "dr",
          "contextType" : "variable",
          "element" : "result",
          "variable" : "r"
        }],
        "rule" : [{
          "name" : "peResultRef",
          "source" : [{
            "context" : "pe",
            "element" : "id",
            "variable" : "pid"
          }],
          "target" : [{
            "context" : "r",
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
        "documentation" : "link into DiagnosticReport.result"
      },
      {
        "name" : "mmrEntry",
        "source" : [{
          "context" : "res",
          "element" : "msiMmr",
          "variable" : "mmr"
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
            "context" : "mmr",
            "element" : "id",
            "variable" : "mmrid"
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
              "valueId" : "mmrid"
            }]
          }]
        },
        {
          "name" : "map",
          "source" : [{
            "context" : "mmr"
          }],
          "target" : [{
            "context" : "obs",
            "contextType" : "variable"
          }],
          "dependent" : [{
            "name" : "MapMsiMmrObservation",
            "variable" : ["mmr", "obs"]
          }]
        }],
        "documentation" : "--- msiMmr entries (IHC-based MSI/MMR proteins) ----------------------"
      },
      {
        "name" : "drResultMMR",
        "source" : [{
          "context" : "res",
          "element" : "msiMmr",
          "variable" : "mmr"
        }],
        "target" : [{
          "context" : "dr",
          "contextType" : "variable",
          "element" : "result",
          "variable" : "r"
        }],
        "rule" : [{
          "name" : "mmrResultRef",
          "source" : [{
            "context" : "mmr",
            "element" : "id",
            "variable" : "mid"
          }],
          "target" : [{
            "context" : "r",
            "contextType" : "variable",
            "element" : "reference",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "mid"
            }]
          }]
        }],
        "documentation" : "link into DiagnosticReport.result"
      }],
      "documentation" : "--- proteinExpression entries -------------------------------------------"
    }]
  },
  {
    "name" : "MapProteinExpression",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapProteinExpression: DNPM proteinExpression → FHIR Observation\r\nProfile: MII_PR_MTB_Immunohistochemistry\r\n---------------------------------------------------------------------------",
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
      "name" : "peId",
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
      "name" : "peMeta",
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
        "name" : "peProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "peStatus",
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
      "name" : "peCode",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "code"
      }],
      "rule" : [{
        "name" : "peCodeGenCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "code",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "cGen"
        }],
        "rule" : [{
          "name" : "peCodeGenSystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cGen",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://snomed.info/sct"
            }]
          }]
        },
        {
          "name" : "peCodeGenCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cGen",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "1234806008"
            }]
          }]
        },
        {
          "name" : "peCodeGenDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cGen",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Observation using immunohistochemistry (observable entity)"
            }]
          }]
        }],
        "documentation" : "generic IHC code (pattern)"
      },
      {
        "name" : "peCodeSpecCoding",
        "source" : [{
          "context" : "src",
          "element" : "protein",
          "variable" : "prot"
        }],
        "target" : [{
          "context" : "code",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "cSpec"
        }],
        "rule" : [{
          "name" : "peCodeSpecCode",
          "source" : [{
            "context" : "prot",
            "element" : "code",
            "variable" : "codeV"
          }],
          "target" : [{
            "context" : "cSpec",
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
          "name" : "peCodeSpecSystem",
          "source" : [{
            "context" : "prot",
            "element" : "system",
            "variable" : "systemV"
          }],
          "target" : [{
            "context" : "cSpec",
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
        }],
        "documentation" : "protein-specific code (open slice)"
      }],
      "documentation" : "code: always include the generic IHC SNOMED code (profile constraint)"
    },
    {
      "name" : "peSubject",
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
        "name" : "peSubjectRef",
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
      "documentation" : "subject"
    },
    {
      "name" : "peSpecimen",
      "source" : [{
        "context" : "src",
        "element" : "specimen",
        "variable" : "spec"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "specimen",
        "variable" : "sRef"
      }],
      "rule" : [{
        "name" : "peSpecimenRef",
        "source" : [{
          "context" : "spec",
          "element" : "id",
          "variable" : "sid"
        }],
        "target" : [{
          "context" : "sRef",
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
      "documentation" : "specimen"
    },
    {
      "name" : "peValue",
      "source" : [{
        "context" : "src",
        "element" : "value",
        "variable" : "val"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "valueCodeableConcept",
        "variable" : "vcc"
      }],
      "rule" : [{
        "name" : "peValueCoding",
        "source" : [{
          "context" : "val"
        }],
        "target" : [{
          "context" : "vcc",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "peValueCode",
          "source" : [{
            "context" : "val",
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
          "name" : "peValueSystem",
          "source" : [{
            "context" : "val",
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
      }],
      "documentation" : "valueCodeableConcept"
    },
    {
      "name" : "peTpsComponent",
      "source" : [{
        "context" : "src",
        "element" : "tpsScore",
        "variable" : "tps"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "peTpsCode",
        "source" : [{
          "context" : "tps"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "code"
        }],
        "rule" : [{
          "name" : "peTpsCodeCoding",
          "source" : [{
            "context" : "tps"
          }],
          "target" : [{
            "context" : "code",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "peTpsCodeSystem",
            "source" : [{
              "context" : "tps"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://ncithesaurus.nci.nih.gov"
              }]
            }]
          },
          {
            "name" : "peTpsCodeCode",
            "source" : [{
              "context" : "tps"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "C184941"
              }]
            }]
          },
          {
            "name" : "peTpsCodeDisplay",
            "source" : [{
              "context" : "tps"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "PD-L1 Tumor Proportion Score"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "peTpsValue",
        "source" : [{
          "context" : "tps"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueInteger",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "tps"
          }]
        }]
      }],
      "documentation" : "component: tps-score (integer) — only when present"
    },
    {
      "name" : "peIcComponent",
      "source" : [{
        "context" : "src",
        "element" : "icScore",
        "variable" : "ic"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "peIcCode",
        "source" : [{
          "context" : "ic"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "code"
        }],
        "rule" : [{
          "name" : "peIcCodeCoding",
          "source" : [{
            "context" : "ic"
          }],
          "target" : [{
            "context" : "code",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "peIcCodeSystem",
            "source" : [{
              "context" : "ic"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "peIcCodeCode",
            "source" : [{
              "context" : "ic"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "85315-2"
              }]
            }]
          },
          {
            "name" : "peIcCodeDisplay",
            "source" : [{
              "context" : "ic"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "PD-L1 immune cell score [%] in Tissue by Immune stain"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "peIcValue",
        "source" : [{
          "context" : "ic"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "variable" : "vcc"
        }],
        "rule" : [{
          "name" : "peIcValueCoding",
          "source" : [{
            "context" : "ic"
          }],
          "target" : [{
            "context" : "vcc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "peIcValueCode",
            "source" : [{
              "context" : "ic",
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
            "name" : "peIcValueSystem",
            "source" : [{
              "context" : "ic",
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
      "documentation" : "component: ic-score (CodeableConcept) — only when present"
    },
    {
      "name" : "peTcComponent",
      "source" : [{
        "context" : "src",
        "element" : "tcScore",
        "variable" : "tc"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "component",
        "variable" : "comp"
      }],
      "rule" : [{
        "name" : "peTcCode",
        "source" : [{
          "context" : "tc"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "code",
          "variable" : "code"
        }],
        "rule" : [{
          "name" : "peTcCodeCoding",
          "source" : [{
            "context" : "tc"
          }],
          "target" : [{
            "context" : "code",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "peTcCodeSystem",
            "source" : [{
              "context" : "tc"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://loinc.org"
              }]
            }]
          },
          {
            "name" : "peTcCodeCode",
            "source" : [{
              "context" : "tc"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "code",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "83053-9"
              }]
            }]
          },
          {
            "name" : "peTcCodeDisplay",
            "source" : [{
              "context" : "tc"
            }],
            "target" : [{
              "context" : "c",
              "contextType" : "variable",
              "element" : "display",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "Cells.programmed cell death ligand 1/Viable tumor cells in Tissue by Immune stain"
              }]
            }]
          }]
        }]
      },
      {
        "name" : "peTcValue",
        "source" : [{
          "context" : "tc"
        }],
        "target" : [{
          "context" : "comp",
          "contextType" : "variable",
          "element" : "valueCodeableConcept",
          "variable" : "vcc"
        }],
        "rule" : [{
          "name" : "peTcValueCoding",
          "source" : [{
            "context" : "tc"
          }],
          "target" : [{
            "context" : "vcc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "peTcValueCode",
            "source" : [{
              "context" : "tc",
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
            "name" : "peTcValueSystem",
            "source" : [{
              "context" : "tc",
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
      "documentation" : "component: tc-score (CodeableConcept) — only when present"
    }]
  },
  {
    "name" : "MapMsiMmrObservation",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapMsiMmrObservation: DNPM ihcReport.results.msiMmr entry → FHIR Observation\r\nProfile: MII_PR_MTB_Immunohistochemistry_MSI (IHC-based MMR protein expression)\r\ncode: LOINC 62862-8 (Microsatellite instability … by Immune stain)\r\n---------------------------------------------------------------------------",
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
      "name" : "mmrId",
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
      "name" : "mmrMeta",
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
        "name" : "mmrProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-msi"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "mmrStatus",
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
      "name" : "mmrCode",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "code"
      }],
      "rule" : [{
        "name" : "mmrCodeCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "code",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "mmrCodeSystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://loinc.org"
            }]
          }]
        },
        {
          "name" : "mmrCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "62862-8"
            }]
          }]
        },
        {
          "name" : "mmrCodeDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Microsatellite instability [Presence] in Tissue by Immune stain"
            }]
          }]
        }]
      }],
      "documentation" : "Fixed LOINC code per mii-pr-mtb-immunohistochemistry-msi profile"
    },
    {
      "name" : "mmrSubject",
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
        "name" : "mmrSubjectRef",
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
      "documentation" : "subject"
    },
    {
      "name" : "mmrSpecimen",
      "source" : [{
        "context" : "src",
        "element" : "specimen",
        "variable" : "spec"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "specimen",
        "variable" : "sRef"
      }],
      "rule" : [{
        "name" : "mmrSpecimenRef",
        "source" : [{
          "context" : "spec",
          "element" : "id",
          "variable" : "sid"
        }],
        "target" : [{
          "context" : "sRef",
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
      "documentation" : "specimen"
    },
    {
      "name" : "mmrProtein",
      "source" : [{
        "context" : "src",
        "element" : "protein",
        "variable" : "prot"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "code"
      }],
      "rule" : [{
        "name" : "mmrProteinCoding",
        "source" : [{
          "context" : "prot"
        }],
        "target" : [{
          "context" : "code",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "mmrProteinCode",
          "source" : [{
            "context" : "prot",
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
          "name" : "mmrProteinSystem",
          "source" : [{
            "context" : "prot",
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
      }],
      "documentation" : "code also carries protein info as an additional coding (gene/protein studied)"
    },
    {
      "name" : "mmrValue",
      "source" : [{
        "context" : "src",
        "element" : "value",
        "variable" : "val"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "valueCodeableConcept",
        "variable" : "vcc"
      }],
      "rule" : [{
        "name" : "mmrValueCoding",
        "source" : [{
          "context" : "val"
        }],
        "target" : [{
          "context" : "vcc",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "mmrValueCode",
          "source" : [{
            "context" : "val",
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
          "name" : "mmrValueSystem",
          "source" : [{
            "context" : "val",
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
      }],
      "documentation" : "valueCodeableConcept (expression result: exp_present / exp_absent / …)"
    }]
  },
  {
    "name" : "MapMSIFinding",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapMSIFinding: DNPM msiFindings entry → FHIR Observation\r\nProfile: MII_PR_MTB_Mikrosatelliteninstabilitaet (NGS-based MSI)\r\ncode: LOINC 81695-9 (Microsatellite instability [Interpretation] in Cancer specimen Qualitative)\r\n---------------------------------------------------------------------------",
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
      "name" : "msiId",
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
      "name" : "msiMeta",
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
        "name" : "msiProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "msiStatus",
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
      "name" : "msiCode",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "code"
      }],
      "rule" : [{
        "name" : "msiCodeCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "code",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "msiCodeSystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://loinc.org"
            }]
          }]
        },
        {
          "name" : "msiCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "81695-9"
            }]
          }]
        },
        {
          "name" : "msiCodeDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
            }]
          }]
        }]
      }],
      "documentation" : "Fixed LOINC code per mii-pr-mtb-mikrosatelliteninstabilitaet example"
    },
    {
      "name" : "msiSubject",
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
        "name" : "msiSubjectRef",
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
      "documentation" : "subject"
    },
    {
      "name" : "msiSpecimen",
      "source" : [{
        "context" : "src",
        "element" : "specimen",
        "variable" : "spec"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "specimen",
        "variable" : "sRef"
      }],
      "rule" : [{
        "name" : "msiSpecimenRef",
        "source" : [{
          "context" : "spec",
          "element" : "id",
          "variable" : "sid"
        }],
        "target" : [{
          "context" : "sRef",
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
      "documentation" : "specimen"
    },
    {
      "name" : "msiEffectiveDateTime",
      "source" : [{
        "context" : "src",
        "element" : "issuedOn",
        "variable" : "issuedOnDt"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "effectiveDateTime",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "issuedOnDt"
        },
        {
          "valueString" : "dateTime"
        }]
      }],
      "documentation" : "effectiveDateTime"
    },
    {
      "name" : "msiValue",
      "source" : [{
        "context" : "src",
        "element" : "value",
        "variable" : "val"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "valueCodeableConcept",
        "variable" : "vcc"
      }],
      "rule" : [{
        "name" : "msiValueCoding",
        "source" : [{
          "context" : "val"
        }],
        "target" : [{
          "context" : "vcc",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "msiValueCode",
          "source" : [{
            "context" : "val",
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
          "name" : "msiValueSystem",
          "source" : [{
            "context" : "val",
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
      }],
      "documentation" : "valueCodeableConcept — DNPM interpretation code (e.g. MSI-H, MSI-L, MSS)"
    },
    {
      "name" : "msiMethod",
      "source" : [{
        "context" : "src",
        "element" : "method",
        "variable" : "meth"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "method",
        "variable" : "m"
      }],
      "rule" : [{
        "name" : "msiMethodCoding",
        "source" : [{
          "context" : "meth"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "msiMethodCode",
          "source" : [{
            "context" : "meth",
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
          "name" : "msiMethodSystem",
          "source" : [{
            "context" : "meth",
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
      }],
      "documentation" : "method (IHC / PCR / bioinformatics)"
    }]
  }]
}

```
