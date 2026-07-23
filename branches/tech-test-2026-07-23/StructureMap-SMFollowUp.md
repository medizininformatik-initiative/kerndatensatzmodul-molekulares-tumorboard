# SMFollowUp - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMFollowUp**

## StructureMap: SMFollowUp 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-follow-up | *Version*:2026.0.1 |
| Draft as of 2026-07-23 | *Computable Name*:SMFollowUp |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SMFollowUp",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-follow-up",
  "version" : "2026.0.1",
  "name" : "SMFollowUp",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/ClinicalImpression",
    "mode" : "produced",
    "alias" : "ClinicalImpression"
  }],
  "group" : [{
    "name" : "FollowUps",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nRoot group: iterate over followUps and populate the Bundle\r\n---------------------------------------------------------------------------",
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
      "name" : "followUp",
      "source" : [{
        "context" : "src",
        "element" : "followUps",
        "variable" : "fu"
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
        "variable" : "ci",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "ClinicalImpression"
        }]
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "fu",
          "element" : "id",
          "variable" : "fuid"
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
            "valueId" : "fuid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "fu"
        }],
        "target" : [{
          "context" : "ci",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapFollowUp",
          "variable" : ["fu", "ci"]
        }]
      }],
      "documentation" : "--- ClinicalImpression per follow-up entry --------------------------------"
    }]
  },
  {
    "name" : "MapFollowUp",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapFollowUp: DNPM followUps entry → FHIR ClinicalImpression\r\nProfile: MII_PR_MTB_Follow_Up_ClinicalImpression (Parent: ClinicalImpression)\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "ClinicalImpression",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "ciId",
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
      "name" : "ciMeta",
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
        "name" : "ciProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "ciStatus",
      "source" : [{
        "context" : "src"
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
      "documentation" : "status: fixed to 'completed' (retrospective data acquisition)"
    },
    {
      "name" : "ciCode",
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
        "name" : "ciCodeCoding",
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
          "name" : "ciCodeSystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://snomed.info/sct"
            }]
          }]
        },
        {
          "name" : "ciCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "390906007"
            }]
          }]
        },
        {
          "name" : "ciCodeDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "coding",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Follow-up encounter (procedure)"
            }]
          }]
        }]
      }],
      "documentation" : "code: fixed SNOMED code for follow-up encounter (required by profile)"
    },
    {
      "name" : "ciSubject",
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
        "name" : "ciSubjectReference",
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
      "name" : "ciEffectiveDateTime",
      "source" : [{
        "context" : "src",
        "element" : "date",
        "variable" : "dateDt"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "effectiveDateTime",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "dateDt"
        },
        {
          "valueString" : "dateTime"
        }]
      }],
      "documentation" : "effectiveDateTime ← followUp.date"
    },
    {
      "name" : "ciNote",
      "source" : [{
        "context" : "src",
        "element" : "lastContactDate",
        "variable" : "lcd"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "note",
        "variable" : "note"
      }],
      "rule" : [{
        "name" : "ciNoteText",
        "source" : [{
          "context" : "lcd"
        }],
        "target" : [{
          "context" : "note",
          "contextType" : "variable",
          "element" : "text",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "Last contact date: "
          },
          {
            "valueId" : "lcd"
          }]
        }]
      }],
      "documentation" : "note: carry lastContactDate as a note text"
    },
    {
      "name" : "ciInvestigation",
      "source" : [{
        "context" : "src",
        "element" : "patientStatus",
        "variable" : "ps"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "investigation",
        "variable" : "inv"
      }],
      "dependent" : [{
        "name" : "MapPatientStatus",
        "variable" : ["ps", "inv"]
      }],
      "documentation" : "investigation: patient status at follow-up"
    },
    {
      "name" : "ciClaimRefs",
      "source" : [{
        "context" : "src",
        "element" : "claims",
        "variable" : "claimRef"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "supportingInfo",
        "variable" : "si"
      }],
      "rule" : [{
        "name" : "claimRefValue",
        "source" : [{
          "context" : "claimRef",
          "element" : "id",
          "variable" : "cid"
        }],
        "target" : [{
          "context" : "si",
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
      }],
      "documentation" : "supportingInfo[AntraegeKostenuebernahme]: claim references carried at follow-up level\r\nNote: these are claim IDs referenced in the followUp. The actual Claim resources\r\nare created by sm-claims.fml. Here we only write the reference into supportingInfo."
    }]
  },
  {
    "name" : "MapPatientStatus",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapPatientStatus: DNPM patientStatus coding → ClinicalImpression.investigation\r\n---------------------------------------------------------------------------",
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
      "name" : "invCode",
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
        "name" : "invCoding",
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
          "name" : "invCodeSystem",
          "source" : [{
            "context" : "src",
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
          "name" : "invCodeCode",
          "source" : [{
            "context" : "src",
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
          "name" : "invCodeDisplay",
          "source" : [{
            "context" : "src",
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
      "documentation" : "investigation.code: use the MII Follow-Up Status CodeSystem"
    }]
  }]
}

```
