# SMSystemicTherapy - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMSystemicTherapy**

## StructureMap: SMSystemicTherapy 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-systemic-therapy | *Version*:2026.0.1 |
| Draft as of 2026-07-23 | *Computable Name*:SMSystemicTherapy |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SMSystemicTherapy",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-systemic-therapy",
  "version" : "2026.0.1",
  "name" : "SMSystemicTherapy",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/Procedure",
    "mode" : "produced",
    "alias" : "Procedure"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Observation",
    "mode" : "produced",
    "alias" : "Observation"
  }],
  "group" : [{
    "name" : "SystemicTherapies",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nRoot group: iterate over systemicTherapies (double-nested) and responses\r\n---------------------------------------------------------------------------",
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
      "name" : "systemicTherapy",
      "source" : [{
        "context" : "src",
        "element" : "systemicTherapies",
        "variable" : "st"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "historyEntry",
        "source" : [{
          "context" : "st",
          "element" : "history",
          "variable" : "h"
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
            "context" : "h",
            "element" : "id",
            "variable" : "hid"
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
              "valueId" : "hid"
            }]
          }]
        },
        {
          "name" : "map",
          "source" : [{
            "context" : "h"
          }],
          "target" : [{
            "context" : "proc",
            "contextType" : "variable"
          }],
          "dependent" : [{
            "name" : "MapSystemicTherapy",
            "variable" : ["h", "proc"]
          }]
        }]
      }],
      "documentation" : "--- Procedure per systemicTherapies[].history[] entry --------------------\r\nDouble-iteration: src.systemicTherapies[] → st.history[] → h"
    },
    {
      "name" : "response",
      "source" : [{
        "context" : "src",
        "element" : "responses",
        "variable" : "resp"
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
          "context" : "resp",
          "element" : "id",
          "variable" : "respid"
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
            "valueId" : "respid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "resp"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapResponse",
          "variable" : ["resp", "obs"]
        }]
      }],
      "documentation" : "--- Observation (Response Befund) per responses entry -------------------"
    }]
  },
  {
    "name" : "MapSystemicTherapy",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapSystemicTherapy: DNPM systemicTherapies[].history[] entry → FHIR Procedure\r\nProfile: MII_PR_MTB_Systemische_Therapie\r\n(Parent: MII_PR_Onko_Systemische_Therapie)\r\n---------------------------------------------------------------------------",
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
      "name" : "procId",
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
      "name" : "procMeta",
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
        "name" : "procProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "statusCompleted",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "st",
        "condition" : "st.code = 'completed'"
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
      "documentation" : "status: translate DNPM therapy status → FHIR Procedure.status"
    },
    {
      "name" : "statusOngoing",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "st",
        "condition" : "st.code = 'ongoing'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "in-progress"
        }]
      }]
    },
    {
      "name" : "statusStopped",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "st",
        "condition" : "st.code = 'stopped'"
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
      "name" : "statusNotDone",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "st",
        "condition" : "st.code = 'not-done'"
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
      "name" : "statusDefault",
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
      "documentation" : "Fallback: unknown → unknown"
    },
    {
      "name" : "procStatusReason",
      "source" : [{
        "context" : "src",
        "element" : "statusReason",
        "variable" : "sr"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "statusReason",
        "variable" : "statusR"
      }],
      "rule" : [{
        "name" : "srCoding",
        "source" : [{
          "context" : "sr"
        }],
        "target" : [{
          "context" : "statusR",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "srCode",
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
          "name" : "srSystem",
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
          "name" : "srDisplay",
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
      "documentation" : "statusReason: DNPM statusReason coding → Procedure.statusReason.coding"
    },
    {
      "name" : "procSubject",
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
        "name" : "procSubjectReference",
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
      "documentation" : "subject → Patient reference (urn:uuid)"
    },
    {
      "name" : "performedPeriod",
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
        "name" : "ppStart",
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
        "name" : "ppEnd",
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
      "documentation" : "performedPeriod ← history.period"
    },
    {
      "name" : "procIndication",
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
        "name" : "indicationReference",
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
      "documentation" : "reasonReference ← indication (MTBDiagnosis reference)"
    },
    {
      "name" : "procCausedBy",
      "source" : [{
        "context" : "src",
        "element" : "basedOn",
        "variable" : "bo"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "extension",
        "variable" : "ext"
      }],
      "rule" : [{
        "name" : "causedByUrl",
        "source" : [{
          "context" : "bo"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://hl7.org/fhir/StructureDefinition/procedure-causedBy"
          }]
        }]
      },
      {
        "name" : "causedByValue",
        "source" : [{
          "context" : "bo",
          "element" : "id",
          "variable" : "bid"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "ref",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Reference"
          }]
        }],
        "rule" : [{
          "name" : "causedByRef",
          "source" : [{
            "context" : "bid"
          }],
          "target" : [{
            "context" : "ref",
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
      }],
      "documentation" : "extension[causedBy] ← basedOn (MTBMedicationRecommendation reference)\r\nUses http://hl7.org/fhir/StructureDefinition/procedure-causedBy"
    },
    {
      "name" : "procTherapyLine",
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
        "name" : "leitlinieExtUrl",
        "source" : [{
          "context" : "tl"
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
        "name" : "leitlinieSubExt",
        "source" : [{
          "context" : "tl"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "extension",
          "variable" : "subExt"
        }],
        "rule" : [{
          "name" : "therapielinieSubUrl",
          "source" : [{
            "context" : "tl"
          }],
          "target" : [{
            "context" : "subExt",
            "contextType" : "variable",
            "element" : "url",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Therapielinie"
            }]
          }]
        },
        {
          "name" : "therapielinieValue",
          "source" : [{
            "context" : "tl"
          }],
          "target" : [{
            "context" : "subExt",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "tl"
            },
            {
              "valueString" : "unsignedInt"
            }]
          }]
        }]
      }],
      "documentation" : "extension (mii-ex-mtb-leitlinie-dokumentation): therapyLine as sub-extension\r\nExtension URL: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation"
    },
    {
      "name" : "procNotes",
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
        "name" : "noteText",
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
      "documentation" : "note ← notes[] (free-text therapy notes)"
    },
    {
      "name" : "procMedication",
      "source" : [{
        "context" : "src",
        "element" : "medication",
        "variable" : "med"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "usedCode",
        "variable" : "uc"
      }],
      "rule" : [{
        "name" : "medCoding",
        "source" : [{
          "context" : "med"
        }],
        "target" : [{
          "context" : "uc",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "medCode",
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
          "name" : "medSystem",
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
          "name" : "medDisplay",
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
      "documentation" : "medication[]: each ATC entry → a separate MedicationStatement resource\r\nlinked via partOf back to this Procedure is the recommended pattern;\r\nhowever, since medication codings must end up in the Bundle, we create\r\nMedicationStatement entries inline via separate group (see below).\r\nThe Procedure itself does not carry medication directly per the MII profile\r\n(MII_PR_Onko_Systemische_Therapie inherits from Procedure, not MedicationAdministration).\r\nWe record the medication codes as supportingInfo-like annotations on the Procedure\r\nusing the 'usedCode' element (0..*) which accepts CodeableConcept."
    }]
  },
  {
    "name" : "MapResponse",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapResponse: DNPM responses entry → FHIR Observation\r\nProfile: MII_PR_MTB_Response_Befund\r\n(Parent: MII_PR_Onko_Verlauf)\r\n---------------------------------------------------------------------------",
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
      "name" : "obsId",
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
      "name" : "obsMeta",
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
        "name" : "obsProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "obsStatus",
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
      }],
      "documentation" : "status = final (fixed per profile intent)"
    },
    {
      "name" : "obsCode",
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
        "name" : "obsCodeCoding",
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
          "name" : "obsCodeSystem",
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
          "name" : "obsCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "21976-6"
            }]
          }]
        }]
      }],
      "documentation" : "code: LOINC 21976-6 \"Response to cancer treatment\" — parent Onko Verlauf uses this"
    },
    {
      "name" : "obsSubject",
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
        "name" : "obsSubjectReference",
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
      "documentation" : "subject → Patient reference (urn:uuid)"
    },
    {
      "name" : "obsEffectiveDateTime",
      "source" : [{
        "context" : "src",
        "element" : "effectiveDate",
        "variable" : "effectiveDateDt"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "effectiveDateTime",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "effectiveDateDt"
        },
        {
          "valueString" : "dateTime"
        }]
      }],
      "documentation" : "effectiveDateTime ← effectiveDate"
    },
    {
      "name" : "obsPartOf",
      "source" : [{
        "context" : "src",
        "element" : "therapy",
        "variable" : "th"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "partOf",
        "variable" : "po"
      }],
      "rule" : [{
        "name" : "obsTherapyReference",
        "source" : [{
          "context" : "th",
          "element" : "id",
          "variable" : "tid"
        }],
        "target" : [{
          "context" : "po",
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
      }],
      "documentation" : "partOf ← therapy.id (MTBSystemicTherapy reference)\r\nProfile uses partOf (not focus) for the associated systemic therapy"
    },
    {
      "name" : "obsValue",
      "source" : [{
        "context" : "src",
        "element" : "value",
        "variable" : "v"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "valueCodeableConcept",
        "variable" : "vc"
      }],
      "rule" : [{
        "name" : "obsValueCoding",
        "source" : [{
          "context" : "v"
        }],
        "target" : [{
          "context" : "vc",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "obsValueCode",
          "source" : [{
            "context" : "v",
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
          "name" : "obsValueSystem",
          "source" : [{
            "context" : "v"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung"
            }]
          }],
          "documentation" : "Use the MII MTB response assessment CodeSystem for the MTB slice"
        },
        {
          "name" : "obsValueDisplay",
          "source" : [{
            "context" : "v",
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
      "documentation" : "valueCodeableConcept: DNPM RECIST value.code → MTB slice\r\nSystem: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung"
    },
    {
      "name" : "obsMethod",
      "source" : [{
        "context" : "src",
        "element" : "value",
        "variable" : "v"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "method",
        "variable" : "meth"
      }],
      "rule" : [{
        "name" : "obsMethodCoding",
        "source" : [{
          "context" : "v"
        }],
        "target" : [{
          "context" : "meth",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "obsMethodCode",
          "source" : [{
            "context" : "v",
            "element" : "system",
            "variable" : "systemV"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
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
          "name" : "obsMethodSystem",
          "source" : [{
            "context" : "v"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilungsmethode"
            }]
          }]
        }]
      }],
      "documentation" : "method: assessment method (RECIST / RANO) — required by profile (1..1)\r\nDNPM passes the system name as the method indicator; map to the MII beurteilungsmethode CS"
    }]
  }]
}

```
