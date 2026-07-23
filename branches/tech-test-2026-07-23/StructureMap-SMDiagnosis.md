# SMDiagnosis - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMDiagnosis**

## StructureMap: SMDiagnosis 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-diagnosis | *Version*:2026.0.1 |
| Draft as of 2026-07-23 | *Computable Name*:SMDiagnosis |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SMDiagnosis",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-diagnosis",
  "version" : "2026.0.1",
  "name" : "SMDiagnosis",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/Condition",
    "mode" : "produced",
    "alias" : "Condition"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Observation",
    "mode" : "produced",
    "alias" : "Observation"
  }],
  "group" : [{
    "name" : "Diagnoses",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nRoot group: iterate over diagnoses and performanceStatus\r\n---------------------------------------------------------------------------",
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
      "name" : "diagnosis",
      "source" : [{
        "context" : "src",
        "element" : "diagnoses",
        "variable" : "diag"
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
        "variable" : "cond",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Condition"
        }]
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "diag",
          "element" : "id",
          "variable" : "diagid"
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
            "valueId" : "diagid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "diag"
        }],
        "target" : [{
          "context" : "cond",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapDiagnosis",
          "variable" : ["diag", "cond"]
        }]
      }],
      "documentation" : "--- Condition per diagnosis entry ----------------------------------------"
    },
    {
      "name" : "ecog",
      "source" : [{
        "context" : "src",
        "element" : "performanceStatus",
        "variable" : "ps"
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
          "context" : "ps",
          "element" : "id",
          "variable" : "psid"
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
            "valueId" : "psid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "ps"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapECOG",
          "variable" : ["ps", "obs"]
        }]
      }],
      "documentation" : "--- Observation (ECOG) per performanceStatus entry -----------------------"
    }]
  },
  {
    "name" : "MapDiagnosis",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapDiagnosis: DNPM diagnoses entry → FHIR Condition\r\nProfile: MII_PR_MTB_Diagnose_Primaertumor\r\n(Parent: MII_PR_Onko_Diagnose_Primaertumor → Parent: MII_PR_Diagnose)\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Condition",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "conditionId",
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
      "name" : "conditionMeta",
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
        "name" : "conditionProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "clinicalStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "clinicalStatus",
        "variable" : "cs"
      }],
      "rule" : [{
        "name" : "clinStatusCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "cs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "clinStatusSystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
            }]
          }]
        },
        {
          "name" : "clinStatusCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "active"
            }]
          }]
        }]
      }],
      "documentation" : "Required clinical status – set to active as DNPM provides no alternative"
    },
    {
      "name" : "verificationStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "verificationStatus",
        "variable" : "vs"
      }],
      "rule" : [{
        "name" : "verStatusCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "vs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "verStatusSystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
            }]
          }]
        },
        {
          "name" : "verStatusCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "confirmed"
            }]
          }]
        }]
      }],
      "documentation" : "Required verification status – set to confirmed"
    },
    {
      "name" : "subject",
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
        "name" : "subjectReference",
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
      "name" : "recordedDate",
      "source" : [{
        "context" : "src",
        "element" : "recordedOn",
        "variable" : "recordedOnDt"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "recordedDate",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "recordedOnDt"
        },
        {
          "valueString" : "date"
        }]
      }],
      "documentation" : "recordedDate"
    },
    {
      "name" : "conditionCode",
      "source" : [{
        "context" : "src",
        "element" : "code",
        "variable" : "code"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "code",
        "variable" : "tgtCode"
      }],
      "rule" : [{
        "name" : "codeCoding",
        "source" : [{
          "context" : "code"
        }],
        "target" : [{
          "context" : "tgtCode",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "codeCode",
          "source" : [{
            "context" : "code",
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
          "name" : "codeSystem",
          "source" : [{
            "context" : "code",
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
          "name" : "codeVersion",
          "source" : [{
            "context" : "code",
            "element" : "version",
            "variable" : "versionV"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "version",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "versionV"
            },
            {
              "valueString" : "string"
            }]
          }]
        },
        {
          "name" : "codeDisplay",
          "source" : [{
            "context" : "code",
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
      "documentation" : "--- Code (ICD-10-GM) -----------------------------------------------------"
    },
    {
      "name" : "bodySite",
      "source" : [{
        "context" : "src",
        "element" : "topography",
        "variable" : "topo"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "bodySite",
        "variable" : "bs"
      }],
      "rule" : [{
        "name" : "topoCoding",
        "source" : [{
          "context" : "topo"
        }],
        "target" : [{
          "context" : "bs",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "topoCode",
          "source" : [{
            "context" : "topo",
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
          "name" : "topoSystem",
          "source" : [{
            "context" : "topo",
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
          "name" : "topoVersion",
          "source" : [{
            "context" : "topo",
            "element" : "version",
            "variable" : "versionV"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "version",
            "transform" : "cast",
            "parameter" : [{
              "valueId" : "versionV"
            },
            {
              "valueString" : "string"
            }]
          }]
        },
        {
          "name" : "topoDisplay",
          "source" : [{
            "context" : "topo",
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
      "documentation" : "--- Body site (ICD-O-3 topography) ---------------------------------------"
    },
    {
      "name" : "guidelineStatusExt",
      "source" : [{
        "context" : "src",
        "element" : "guidelineTreatmentStatus",
        "variable" : "gts"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "extension",
        "variable" : "ext"
      }],
      "rule" : [{
        "name" : "gtsExtUrl",
        "source" : [{
          "context" : "gts"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinienbehandlung-status"
          }]
        }]
      },
      {
        "name" : "gtsExtValue",
        "source" : [{
          "context" : "gts"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "coding",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        }],
        "rule" : [{
          "name" : "gtsCode",
          "source" : [{
            "context" : "gts",
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
          "name" : "gtsSystem",
          "source" : [{
            "context" : "gts",
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
        }]
      }],
      "documentation" : "--- Guideline treatment status (as extension on Condition) ---------------\r\nNote: MII_EX_MTB_Leitlinienbehandlung_Status has context ClinicalImpression;\r\na Condition-level extension is added here to preserve the DNPM value until\r\na dedicated Condition extension is defined. Receivers may prefer to read\r\nthis value from the associated Behandlungsepisode (ClinicalImpression)."
    },
    {
      "name" : "notes",
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
      "documentation" : "--- Free-text notes ------------------------------------------------------"
    }]
  },
  {
    "name" : "MapECOG",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapECOG: DNPM performanceStatus entry → FHIR Observation\r\nProfile: MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG\r\n---------------------------------------------------------------------------",
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
      "name" : "ecogId",
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
      "name" : "ecogMeta",
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
        "name" : "ecogProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "ecogStatus",
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
      "name" : "ecogCode",
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
        "name" : "ecogCodeSnomed",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "c",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "snomed"
        }],
        "rule" : [{
          "name" : "ecogCodeSnomedSystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "snomed",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://snomed.info/sct"
            }]
          }]
        },
        {
          "name" : "ecogCodeSnomedCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "snomed",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "423740007"
            }]
          }]
        }],
        "documentation" : "SNOMED — required slice"
      },
      {
        "name" : "ecogCodeLoinc",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "c",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "loinc"
        }],
        "rule" : [{
          "name" : "ecogCodeLoincSystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "loinc",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://loinc.org"
            }]
          }]
        },
        {
          "name" : "ecogCodeLoincCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "loinc",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "89262-0"
            }]
          }]
        }],
        "documentation" : "LOINC — optional slice"
      }],
      "documentation" : "code: required SNOMED slice (423740007) + optional LOINC slice (89262-0)"
    },
    {
      "name" : "ecogSubject",
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
        "name" : "ecogSubjectReference",
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
      "name" : "ecogEffectiveDateTime",
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
      "documentation" : "effectiveDateTime"
    },
    {
      "name" : "ecogValue",
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
        "name" : "ecogValueCoding",
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
          "name" : "ecogValueCode",
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
          "name" : "ecogValueSystem",
          "source" : [{
            "context" : "v",
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
          "name" : "ecogValueDisplay",
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
      "documentation" : "valueCodeableConcept: DNPM ECOG code/system → obds slice\r\nThe DNPM system is 'dnpm-dip/patient/ecog-performance-status';\r\na concept map (dnpm-ecog-to-mii.fsh) provides formal equivalence to\r\nhttps://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog\r\nbut both numeric codes (0–4) are identical, so direct pass-through is used."
    }]
  }]
}

```
