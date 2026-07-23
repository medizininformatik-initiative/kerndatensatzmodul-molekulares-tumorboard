# SMGuidelineTherapy - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMGuidelineTherapy**

## StructureMap: SMGuidelineTherapy 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-guideline-therapy | *Version*:2026.0.1 |
| Draft as of 2026-07-23 | *Computable Name*:SMGuidelineTherapy |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SMGuidelineTherapy",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-guideline-therapy",
  "version" : "2026.0.1",
  "name" : "SMGuidelineTherapy",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
    "mode" : "produced",
    "alias" : "MedicationStatement"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Procedure",
    "mode" : "produced",
    "alias" : "Procedure"
  }],
  "group" : [{
    "name" : "GuidelineTherapy",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nRoot group: iterate guidelineTherapies and guidelineProcedures arrays\r\n---------------------------------------------------------------------------",
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
      "name" : "guidelineTherapy",
      "source" : [{
        "context" : "src",
        "element" : "guidelineTherapies",
        "variable" : "gt"
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
        "variable" : "ms",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "MedicationStatement"
        }]
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "gt",
          "element" : "id",
          "variable" : "gtid"
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
            "valueId" : "gtid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "gt"
        }],
        "target" : [{
          "context" : "ms",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapGuidelineTherapy",
          "variable" : ["gt", "ms"]
        }]
      }],
      "documentation" : "guidelineTherapies → MedicationStatement (Systemische Vortherapie)"
    },
    {
      "name" : "guidelineProcedure",
      "source" : [{
        "context" : "src",
        "element" : "guidelineProcedures",
        "variable" : "gp"
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
        "variable" : "proc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Procedure"
        }]
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "gp",
          "element" : "id",
          "variable" : "gpid"
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
            "valueId" : "gpid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "gp"
        }],
        "target" : [{
          "context" : "proc",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapGuidelineProcedure",
          "variable" : ["gp", "proc"]
        }]
      }],
      "documentation" : "guidelineProcedures → Procedure"
    }]
  },
  {
    "name" : "MapGuidelineTherapy",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapGuidelineTherapy: single guidelineTherapy → FHIR MedicationStatement\r\nProfile: MII_PR_MTB_Systemische_Vortherapie\r\n(Parent: MII_PR_Onko_Systemische_Therapie → MedicationStatement)\r\nStatus mapping (ConceptMap: DNPMTherapyStatusToFHIR):\r\ncompleted → completed\r\nstopped   → stopped\r\nongoing   → active\r\nnot-done  → not-taken\r\nunknown   → unknown\r\n(default) → unknown\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "MedicationStatement",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "gtId",
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
      "name" : "gtMeta",
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
        "name" : "gtProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "gtStatusCompleted",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "s",
        "condition" : "s.code = 'completed'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "completed"
        }]
      }],
      "documentation" : "Status: translate DNPM therapy status → FHIR MedicationStatement status"
    },
    {
      "name" : "gtStatusStopped",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "s",
        "condition" : "s.code = 'stopped'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "stopped"
        }]
      }]
    },
    {
      "name" : "gtStatusActive",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "s",
        "condition" : "s.code = 'ongoing'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "active"
        }]
      }]
    },
    {
      "name" : "gtStatusNotTaken",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "s",
        "condition" : "s.code = 'not-done'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "not-taken"
        }]
      }]
    },
    {
      "name" : "gtStatusUnknown",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "s",
        "condition" : "s.code = 'unknown'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "unknown"
        }]
      }]
    },
    {
      "name" : "gtStatusDefault",
      "source" : [{
        "context" : "src",
        "condition" : "src.status.empty()"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "unknown"
        }]
      }],
      "documentation" : "Fallback when status is absent"
    },
    {
      "name" : "gtSubject",
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
        "name" : "gtSubjectRef",
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
      "name" : "gtReason",
      "source" : [{
        "context" : "src",
        "element" : "indication",
        "variable" : "ind"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "reasonReference",
        "variable" : "rr"
      }],
      "rule" : [{
        "name" : "gtReasonRef",
        "source" : [{
          "context" : "ind",
          "element" : "id",
          "variable" : "iid"
        }],
        "target" : [{
          "context" : "rr",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "iid"
          }]
        }]
      }],
      "documentation" : "reasonReference ← indication (MTBDiagnosis)"
    },
    {
      "name" : "gtPeriod",
      "source" : [{
        "context" : "src",
        "element" : "period",
        "variable" : "p"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "effectivePeriod",
        "variable" : "ep"
      }],
      "rule" : [{
        "name" : "gtPeriodStart",
        "source" : [{
          "context" : "p",
          "element" : "start",
          "variable" : "startDt"
        }],
        "target" : [{
          "context" : "ep",
          "contextType" : "variable",
          "element" : "start",
          "transform" : "cast",
          "parameter" : [{
            "valueId" : "startDt"
          },
          {
            "valueString" : "dateTime"
          }]
        }]
      },
      {
        "name" : "gtPeriodEnd",
        "source" : [{
          "context" : "p",
          "element" : "end",
          "variable" : "endDt"
        }],
        "target" : [{
          "context" : "ep",
          "contextType" : "variable",
          "element" : "end",
          "transform" : "cast",
          "parameter" : [{
            "valueId" : "endDt"
          },
          {
            "valueString" : "dateTime"
          }]
        }]
      }],
      "documentation" : "effectivePeriod ← period"
    },
    {
      "name" : "gtMedication",
      "source" : [{
        "context" : "src",
        "element" : "medication",
        "variable" : "med"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "medicationCodeableConcept",
        "variable" : "mcc"
      }],
      "rule" : [{
        "name" : "gtMedCoding",
        "source" : [{
          "context" : "med"
        }],
        "target" : [{
          "context" : "mcc",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "gtMedCode",
          "source" : [{
            "context" : "med",
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
          "name" : "gtMedSystem",
          "source" : [{
            "context" : "med",
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
          "name" : "gtMedDisplay",
          "source" : [{
            "context" : "med",
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
      "documentation" : "medicationCodeableConcept: one coding per medication (ATC)"
    },
    {
      "name" : "gtStatusReason",
      "source" : [{
        "context" : "src",
        "element" : "statusReason",
        "variable" : "sr"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "statusReason",
        "variable" : "tsr"
      }],
      "rule" : [{
        "name" : "gtSrCoding",
        "source" : [{
          "context" : "sr"
        }],
        "target" : [{
          "context" : "tsr",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "gtSrCode",
          "source" : [{
            "context" : "sr",
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
          "name" : "gtSrSystem",
          "source" : [{
            "context" : "sr",
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
          "name" : "gtSrDisplay",
          "source" : [{
            "context" : "sr",
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
      "documentation" : "statusReason ← statusReason (if therapy was stopped/discontinued)"
    },
    {
      "name" : "gtNotes",
      "source" : [{
        "context" : "src",
        "element" : "notes",
        "variable" : "n"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "note",
        "variable" : "note"
      }],
      "rule" : [{
        "name" : "gtNoteText",
        "source" : [{
          "context" : "n"
        }],
        "target" : [{
          "context" : "note",
          "contextType" : "variable",
          "element" : "text",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "n"
          }]
        }]
      }],
      "documentation" : "notes ← notes (free-text)"
    },
    {
      "name" : "gtTherapyLine",
      "source" : [{
        "context" : "src",
        "element" : "therapyLine",
        "variable" : "tl"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "extension",
        "variable" : "ext"
      }],
      "rule" : [{
        "name" : "gtThLineUrl",
        "source" : [{
          "context" : "tl"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-therapielinie"
          }]
        }]
      },
      {
        "name" : "gtThLineValue",
        "source" : [{
          "context" : "tl"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "cast",
          "parameter" : [{
            "valueId" : "tl"
          },
          {
            "valueString" : "positiveInt"
          }]
        }]
      }],
      "documentation" : "therapyLine: stored as extension on the Onko parent profile\r\nMII_PR_Onko_Systemische_Therapie uses KDS extension for therapyLine"
    },
    {
      "name" : "gtCategory",
      "source" : [{
        "context" : "src",
        "element" : "category",
        "variable" : "cat"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "category",
        "variable" : "tcat"
      }],
      "rule" : [{
        "name" : "gtCatCoding",
        "source" : [{
          "context" : "cat"
        }],
        "target" : [{
          "context" : "tcat",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "gtCatCode",
          "source" : [{
            "context" : "cat",
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
          "name" : "gtCatSystem",
          "source" : [{
            "context" : "cat",
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
          "name" : "gtCatDisplay",
          "source" : [{
            "context" : "cat",
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
      "documentation" : "category ← category (DNPM therapy category coding)"
    }]
  },
  {
    "name" : "MapGuidelineProcedure",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapGuidelineProcedure: single guidelineProcedure → FHIR Procedure\r\nUsed for radiotherapy and other non-medication guideline-based procedures.\r\nStatus mapping:\r\nongoing   → in-progress\r\ncompleted → completed\r\nstopped   → stopped\r\nnot-done  → not-done\r\nunknown   → unknown\r\n(default) → unknown\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Procedure",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "gpId",
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
      "name" : "gpSubject",
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
        "name" : "gpSubjectRef",
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
      "name" : "gpStatusInProgress",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "s",
        "condition" : "s.code = 'ongoing'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "in-progress"
        }]
      }],
      "documentation" : "Status: translate DNPM therapy status → FHIR Procedure status"
    },
    {
      "name" : "gpStatusCompleted",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "s",
        "condition" : "s.code = 'completed'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "completed"
        }]
      }]
    },
    {
      "name" : "gpStatusStopped",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "s",
        "condition" : "s.code = 'stopped'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "stopped"
        }]
      }]
    },
    {
      "name" : "gpStatusNotDone",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "s",
        "condition" : "s.code = 'not-done'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "not-done"
        }]
      }]
    },
    {
      "name" : "gpStatusUnknown",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "s",
        "condition" : "s.code = 'unknown'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "unknown"
        }]
      }]
    },
    {
      "name" : "gpStatusDefault",
      "source" : [{
        "context" : "src",
        "condition" : "src.status.empty()"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "unknown"
        }]
      }],
      "documentation" : "Fallback when status is absent"
    },
    {
      "name" : "gpCode",
      "source" : [{
        "context" : "src",
        "element" : "code",
        "variable" : "c"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "tcode"
      }],
      "rule" : [{
        "name" : "gpCodeCoding",
        "source" : [{
          "context" : "c"
        }],
        "target" : [{
          "context" : "tcode",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "gpCodeCode",
          "source" : [{
            "context" : "c",
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
          "name" : "gpCodeSystem",
          "source" : [{
            "context" : "c",
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
          "name" : "gpCodeDisplay",
          "source" : [{
            "context" : "c",
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
      "documentation" : "code ← procedure.code (e.g. radiotherapy)"
    },
    {
      "name" : "gpReason",
      "source" : [{
        "context" : "src",
        "element" : "indication",
        "variable" : "ind"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "reasonReference",
        "variable" : "rr"
      }],
      "rule" : [{
        "name" : "gpReasonRef",
        "source" : [{
          "context" : "ind",
          "element" : "id",
          "variable" : "iid"
        }],
        "target" : [{
          "context" : "rr",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "iid"
          }]
        }]
      }],
      "documentation" : "reasonReference ← indication (MTBDiagnosis)"
    },
    {
      "name" : "gpPeriod",
      "source" : [{
        "context" : "src",
        "element" : "period",
        "variable" : "p"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "performedPeriod",
        "variable" : "pp"
      }],
      "rule" : [{
        "name" : "gpPeriodStart",
        "source" : [{
          "context" : "p",
          "element" : "start",
          "variable" : "startDt"
        }],
        "target" : [{
          "context" : "pp",
          "contextType" : "variable",
          "element" : "start",
          "transform" : "cast",
          "parameter" : [{
            "valueId" : "startDt"
          },
          {
            "valueString" : "dateTime"
          }]
        }]
      },
      {
        "name" : "gpPeriodEnd",
        "source" : [{
          "context" : "p",
          "element" : "end",
          "variable" : "endDt"
        }],
        "target" : [{
          "context" : "pp",
          "contextType" : "variable",
          "element" : "end",
          "transform" : "cast",
          "parameter" : [{
            "valueId" : "endDt"
          },
          {
            "valueString" : "dateTime"
          }]
        }]
      }],
      "documentation" : "performedPeriod ← period"
    },
    {
      "name" : "gpIntent",
      "source" : [{
        "context" : "src",
        "element" : "intent",
        "variable" : "intent"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "extension",
        "variable" : "ext"
      }],
      "rule" : [{
        "name" : "gpIntentUrl",
        "source" : [{
          "context" : "intent"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation"
          }]
        }]
      },
      {
        "name" : "gpIntentCoding",
        "source" : [{
          "context" : "intent"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "intCoding",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        }],
        "rule" : [{
          "name" : "gpIntentCode",
          "source" : [{
            "context" : "intent",
            "element" : "code",
            "variable" : "codeV"
          }],
          "target" : [{
            "context" : "intCoding",
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
          "name" : "gpIntentSystem",
          "source" : [{
            "context" : "intent",
            "element" : "system",
            "variable" : "systemV"
          }],
          "target" : [{
            "context" : "intCoding",
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
          "name" : "gpIntentDisplay",
          "source" : [{
            "context" : "intent",
            "element" : "display",
            "variable" : "displayV"
          }],
          "target" : [{
            "context" : "intCoding",
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
      "documentation" : "intent ← intent (palliative, curative, …) stored as extension\r\nProcedure R4 does not have a native intent field; carry as basic extension."
    },
    {
      "name" : "gpNotes",
      "source" : [{
        "context" : "src",
        "element" : "notes",
        "variable" : "n"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "note",
        "variable" : "note"
      }],
      "rule" : [{
        "name" : "gpNoteText",
        "source" : [{
          "context" : "n"
        }],
        "target" : [{
          "context" : "note",
          "contextType" : "variable",
          "element" : "text",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "n"
          }]
        }]
      }],
      "documentation" : "notes ← notes (free-text)"
    }]
  }]
}

```
