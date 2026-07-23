# SMCarePlan - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMCarePlan**

## StructureMap: SMCarePlan 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-careplan | *Version*:2026.0.1 |
| Draft as of 2026-07-23 | *Computable Name*:SMCarePlan |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SMCarePlan",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-careplan",
  "version" : "2026.0.1",
  "name" : "SMCarePlan",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
    "mode" : "produced",
    "alias" : "CarePlan"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
    "mode" : "produced",
    "alias" : "MedicationRequest"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
    "mode" : "produced",
    "alias" : "ServiceRequest"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/ResearchStudy",
    "mode" : "produced",
    "alias" : "ResearchStudy"
  }],
  "group" : [{
    "name" : "CarePlans",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nRoot group: iterate carePlans array; produces CarePlan + child resources\r\n---------------------------------------------------------------------------",
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
      "name" : "carePlan",
      "source" : [{
        "context" : "src",
        "element" : "carePlans",
        "variable" : "cp"
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
        "variable" : "tgtCp",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CarePlan"
        }]
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "cp",
          "element" : "id",
          "variable" : "cpid"
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
            "valueId" : "cpid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "cp"
        }],
        "target" : [{
          "context" : "tgtCp",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapCarePlan",
          "variable" : ["cp", "tgtCp", "bundle"]
        }]
      }]
    }]
  },
  {
    "name" : "MapCarePlan",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapCarePlan: single carePlan entry → FHIR CarePlan\r\nProfile: MII_PR_MTB_Therapieplan (Parent: MII_PR_Onko_Tumorkonferenz)\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "CarePlan",
      "mode" : "target"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "cpId",
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
      "name" : "cpMeta",
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
        "name" : "cpProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "cpStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "active"
        }]
      }],
      "documentation" : "Fixed values required by CarePlan"
    },
    {
      "name" : "cpIntent",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "intent",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "plan"
        }]
      }]
    },
    {
      "name" : "cpSubject",
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
        "name" : "cpSubjectRef",
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
      "name" : "cpCreated",
      "source" : [{
        "context" : "src",
        "element" : "issuedOn",
        "variable" : "issuedOnDt"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "created",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "issuedOnDt"
        },
        {
          "valueString" : "date"
        }]
      }],
      "documentation" : "created ← issuedOn"
    },
    {
      "name" : "cpAddresses",
      "source" : [{
        "context" : "src",
        "element" : "reason",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "addresses",
        "variable" : "addr"
      }],
      "rule" : [{
        "name" : "cpReasonRef",
        "source" : [{
          "context" : "r",
          "element" : "id",
          "variable" : "rid"
        }],
        "target" : [{
          "context" : "addr",
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
      }],
      "documentation" : "addresses ← reason (MTBDiagnosis reference)"
    },
    {
      "name" : "medicationRecommendation",
      "source" : [{
        "context" : "src",
        "element" : "medicationRecommendations",
        "variable" : "rec"
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
        "variable" : "mr",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "MedicationRequest"
        }]
      },
      {
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "activity",
        "variable" : "act"
      },
      {
        "context" : "act",
        "contextType" : "variable",
        "element" : "reference",
        "variable" : "actRef"
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "rec",
          "element" : "id",
          "variable" : "recid"
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
            "valueId" : "recid"
          }]
        }]
      },
      {
        "name" : "mrActRef",
        "source" : [{
          "context" : "rec",
          "element" : "id",
          "variable" : "rid"
        }],
        "target" : [{
          "context" : "actRef",
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
      },
      {
        "name" : "mapMedRec",
        "source" : [{
          "context" : "rec"
        }],
        "target" : [{
          "context" : "mr",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapMedicationRecommendation",
          "variable" : ["rec", "mr"]
        }]
      }],
      "documentation" : "---------------------------------------------------------------------------\r\nMedication Recommendations → MedicationRequest per recommendation\r\n---------------------------------------------------------------------------"
    },
    {
      "name" : "geneticCounseling",
      "source" : [{
        "context" : "src",
        "element" : "geneticCounselingRecommendation",
        "variable" : "gcr"
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
        "variable" : "sr",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "ServiceRequest"
        }]
      },
      {
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "activity",
        "variable" : "act"
      },
      {
        "context" : "act",
        "contextType" : "variable",
        "element" : "reference",
        "variable" : "actRef"
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "gcr",
          "element" : "id",
          "variable" : "gcrid"
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
            "valueId" : "gcrid"
          }]
        }]
      },
      {
        "name" : "gcrActRef",
        "source" : [{
          "context" : "gcr",
          "element" : "id",
          "variable" : "gid"
        }],
        "target" : [{
          "context" : "actRef",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "gid"
          }]
        }]
      },
      {
        "name" : "mapGcr",
        "source" : [{
          "context" : "gcr"
        }],
        "target" : [{
          "context" : "sr",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapGeneticCounseling",
          "variable" : ["gcr", "sr"]
        }]
      }],
      "documentation" : "---------------------------------------------------------------------------\r\nGenetic Counseling Recommendation → ServiceRequest\r\n---------------------------------------------------------------------------"
    },
    {
      "name" : "studyEnrollmentRec",
      "source" : [{
        "context" : "src",
        "element" : "studyEnrollmentRecommendations",
        "variable" : "ser"
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
        "variable" : "srSer",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "ServiceRequest"
        }]
      },
      {
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "activity",
        "variable" : "act"
      },
      {
        "context" : "act",
        "contextType" : "variable",
        "element" : "reference",
        "variable" : "actRef"
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "ser",
          "element" : "id",
          "variable" : "serid"
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
            "valueId" : "serid"
          }]
        }]
      },
      {
        "name" : "serActRef",
        "source" : [{
          "context" : "ser",
          "element" : "id",
          "variable" : "sid"
        }],
        "target" : [{
          "context" : "actRef",
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
      },
      {
        "name" : "mapSer",
        "source" : [{
          "context" : "ser"
        }],
        "target" : [{
          "context" : "srSer",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapStudyEnrollmentRecommendation",
          "variable" : ["ser", "srSer", "bundle"]
        }]
      }],
      "documentation" : "---------------------------------------------------------------------------\r\nStudy Enrollment Recommendations → ServiceRequest (Studieneinschluss-Anfrage)\r\n+ ResearchStudy per study entry\r\n---------------------------------------------------------------------------"
    }]
  },
  {
    "name" : "MapMedicationRecommendation",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapMedicationRecommendation: single medicationRecommendation → MedicationRequest\r\nProfile: MII_PR_MTB_Therapieempfehlung (or Kombination via RequestGroup)\r\nExtensions: MII_EX_MTB_Empfehlung_Prioritaet,\r\nMII_EX_MTB_Empfehlung_Evidenzgraduierung,\r\nMII_EX_MTB_Empfehlung_Publikation\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "MedicationRequest",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "mrId",
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
      "name" : "mrMeta",
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
        "name" : "mrProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "mrStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "active"
        }]
      }],
      "documentation" : "Fixed statuses for a proposal-type recommendation"
    },
    {
      "name" : "mrIntent",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "intent",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "proposal"
        }]
      }]
    },
    {
      "name" : "mrSubject",
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
        "name" : "mrSubjectRef",
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
      "name" : "mrAuthoredOn",
      "source" : [{
        "context" : "src",
        "element" : "issuedOn",
        "variable" : "issuedOnDt"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "authoredOn",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "issuedOnDt"
        },
        {
          "valueString" : "dateTime"
        }]
      }],
      "documentation" : "authoredOn ← issuedOn"
    },
    {
      "name" : "mrReason",
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
        "name" : "mrReasonRef",
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
      "name" : "mrMedication",
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
        "name" : "mrMedCoding",
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
          "name" : "mrMedCode",
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
          "name" : "mrMedSystem",
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
          "name" : "mrMedDisplay",
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
      "documentation" : "medicationCodeableConcept: one coding per medication entry (ATC)"
    },
    {
      "name" : "mrPriority",
      "source" : [{
        "context" : "src",
        "element" : "priority",
        "variable" : "prio"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "extension",
        "variable" : "ext"
      }],
      "rule" : [{
        "name" : "mrPrioUrl",
        "source" : [{
          "context" : "prio"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet"
          }]
        }]
      },
      {
        "name" : "mrPrioValue",
        "source" : [{
          "context" : "prio",
          "element" : "code",
          "variable" : "pc"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "cast",
          "parameter" : [{
            "valueId" : "pc"
          },
          {
            "valueString" : "positiveInt"
          }]
        }]
      }],
      "documentation" : "Priority extension: MII_EX_MTB_Empfehlung_Prioritaet (valuePositiveInt)"
    },
    {
      "name" : "mrLoe",
      "source" : [{
        "context" : "src",
        "element" : "levelOfEvidence",
        "variable" : "loe"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "extension",
        "variable" : "extLoe"
      }],
      "rule" : [{
        "name" : "mrLoeUrl",
        "source" : [{
          "context" : "loe"
        }],
        "target" : [{
          "context" : "extLoe",
          "contextType" : "variable",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung"
          }]
        }]
      },
      {
        "name" : "mrLoeCC",
        "source" : [{
          "context" : "loe"
        }],
        "target" : [{
          "context" : "extLoe",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "loeCC",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "mrGrading",
          "source" : [{
            "context" : "loe",
            "element" : "grading",
            "variable" : "grad"
          }],
          "target" : [{
            "context" : "loeCC",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "mrGradCode",
            "source" : [{
              "context" : "grad",
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
            "name" : "mrGradSystem",
            "source" : [{
              "context" : "grad",
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
            "name" : "mrGradDisplay",
            "source" : [{
              "context" : "grad",
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
          }],
          "documentation" : "Evidenzgrad slice (system = mii-cs-mtb-empfehlung-evidenzgrad)"
        },
        {
          "name" : "mrAddendum",
          "source" : [{
            "context" : "loe",
            "element" : "addendums",
            "variable" : "add"
          }],
          "target" : [{
            "context" : "loeCC",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "mrAddCode",
            "source" : [{
              "context" : "add",
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
            "name" : "mrAddSystem",
            "source" : [{
              "context" : "add",
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
            "name" : "mrAddDisplay",
            "source" : [{
              "context" : "add",
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
          }],
          "documentation" : "Zusatzverweis slice (addendums; system = mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis)"
        }]
      }],
      "documentation" : "Level of evidence: grading → MII_EX_MTB_Empfehlung_Evidenzgraduierung (CodeableConcept)"
    },
    {
      "name" : "mrPubLoe",
      "source" : [{
        "context" : "src",
        "element" : "levelOfEvidence",
        "variable" : "loe"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "mrPubPmid",
        "source" : [{
          "context" : "loe",
          "element" : "publications",
          "variable" : "pub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "extension",
          "variable" : "extPub"
        }],
        "rule" : [{
          "name" : "mrPubUrl",
          "source" : [{
            "context" : "pub"
          }],
          "target" : [{
            "context" : "extPub",
            "contextType" : "variable",
            "element" : "url",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation"
            }]
          }]
        },
        {
          "name" : "mrPubPmidIdent",
          "source" : [{
            "context" : "pub",
            "element" : "pmid",
            "variable" : "pmid"
          }],
          "target" : [{
            "context" : "extPub",
            "contextType" : "variable",
            "element" : "value",
            "variable" : "ident",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Identifier"
            }]
          }],
          "rule" : [{
            "name" : "mrPubPmidSystem",
            "source" : [{
              "context" : "pmid"
            }],
            "target" : [{
              "context" : "ident",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://www.ncbi.nlm.nih.gov/pubmed"
              }]
            }]
          },
          {
            "name" : "mrPubPmidValue",
            "source" : [{
              "context" : "pmid"
            }],
            "target" : [{
              "context" : "ident",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "pmid"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "Publications: MII_EX_MTB_Empfehlung_Publikation (Identifier)\r\nPMID → system = http://www.ncbi.nlm.nih.gov/pubmed"
    },
    {
      "name" : "mrDoiLoe",
      "source" : [{
        "context" : "src",
        "element" : "levelOfEvidence",
        "variable" : "loe"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable"
      }],
      "rule" : [{
        "name" : "mrPubDoi",
        "source" : [{
          "context" : "loe",
          "element" : "publications",
          "variable" : "pub"
        }],
        "target" : [{
          "context" : "tgt",
          "contextType" : "variable",
          "element" : "extension",
          "variable" : "extDoi"
        }],
        "rule" : [{
          "name" : "mrDoiUrl",
          "source" : [{
            "context" : "pub"
          }],
          "target" : [{
            "context" : "extDoi",
            "contextType" : "variable",
            "element" : "url",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation"
            }]
          }]
        },
        {
          "name" : "mrDoiIdent",
          "source" : [{
            "context" : "pub",
            "element" : "doi",
            "variable" : "doi"
          }],
          "target" : [{
            "context" : "extDoi",
            "contextType" : "variable",
            "element" : "value",
            "variable" : "identDoi",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "Identifier"
            }]
          }],
          "rule" : [{
            "name" : "mrDoiSystem",
            "source" : [{
              "context" : "doi"
            }],
            "target" : [{
              "context" : "identDoi",
              "contextType" : "variable",
              "element" : "system",
              "transform" : "copy",
              "parameter" : [{
                "valueString" : "http://doi.org"
              }]
            }]
          },
          {
            "name" : "mrDoiValue",
            "source" : [{
              "context" : "doi"
            }],
            "target" : [{
              "context" : "identDoi",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "doi"
              }]
            }]
          }]
        }]
      }],
      "documentation" : "DOI publication"
    },
    {
      "name" : "mrSupportingVariants",
      "source" : [{
        "context" : "src",
        "element" : "supportingVariants",
        "variable" : "sv"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "reasonReference",
        "variable" : "rrSv"
      }],
      "rule" : [{
        "name" : "mrSvRef",
        "source" : [{
          "context" : "sv",
          "element" : "id",
          "variable" : "vid"
        }],
        "target" : [{
          "context" : "rrSv",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "vid"
          }]
        }]
      }],
      "documentation" : "supportingVariants as reasonReference (variant resources created in NGS map)"
    }]
  },
  {
    "name" : "MapGeneticCounseling",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapGeneticCounseling: geneticCounselingRecommendation → ServiceRequest\r\nProfile: MII_PR_MTB_Humangenetische_Beratung_Auftrag\r\ncode = SCT#788339009 \"Genetic consultation (procedure)\"\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "ServiceRequest",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "gcrId",
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
      "name" : "gcrMeta",
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
        "name" : "gcrProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "gcrStatus",
      "source" : [{
        "context" : "src"
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
      "name" : "gcrIntent",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "intent",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "proposal"
        }]
      }]
    },
    {
      "name" : "gcrCode",
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
        "name" : "gcrCoding",
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
          "name" : "gcrCodeSystem",
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
          "name" : "gcrCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "788339009"
            }]
          }]
        },
        {
          "name" : "gcrCodeDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Genetic consultation (procedure)"
            }]
          }]
        }]
      }],
      "documentation" : "Fixed code: SNOMED CT #788339009 \"Genetic consultation (procedure)\""
    },
    {
      "name" : "gcrSubject",
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
        "name" : "gcrSubjectRef",
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
      "name" : "gcrAuthoredOn",
      "source" : [{
        "context" : "src",
        "element" : "issuedOn",
        "variable" : "issuedOnDt"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "authoredOn",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "issuedOnDt"
        },
        {
          "valueString" : "dateTime"
        }]
      }],
      "documentation" : "authoredOn ← issuedOn"
    },
    {
      "name" : "gcrReasonCode",
      "source" : [{
        "context" : "src",
        "element" : "reason",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "reasonCode",
        "variable" : "rc"
      }],
      "rule" : [{
        "name" : "gcrReasonCoding",
        "source" : [{
          "context" : "r"
        }],
        "target" : [{
          "context" : "rc",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "gcrReasonCode",
          "source" : [{
            "context" : "r",
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
          "name" : "gcrReasonSystem",
          "source" : [{
            "context" : "r",
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
          "name" : "gcrReasonDisplay",
          "source" : [{
            "context" : "r",
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
      "documentation" : "reasonCode ← reason coding"
    }]
  },
  {
    "name" : "MapStudyEnrollmentRecommendation",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapStudyEnrollmentRecommendation: studyEnrollmentRecommendation → ServiceRequest\r\nProfile: MII_PR_MTB_Studieneinschluss_Anfrage\r\ncode  = SCT#702475000 \"Referral to clinical trial (procedure)\"\r\ncategory = SCT#110465008 \"Clinical trial (procedure)\"\r\nEach study[] entry → ResearchStudy added to bundle + supportingInfo reference\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "ServiceRequest",
      "mode" : "target"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "serSrId",
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
      "name" : "serSrMeta",
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
        "name" : "serSrProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "serSrStatus",
      "source" : [{
        "context" : "src"
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
      "name" : "serSrIntent",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "intent",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "proposal"
        }]
      }]
    },
    {
      "name" : "serCategory",
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
        "name" : "serCatCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "cat",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "serCatSystem",
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
          "name" : "serCatCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "110465008"
            }]
          }]
        },
        {
          "name" : "serCatDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Clinical trial (procedure)"
            }]
          }]
        }]
      }],
      "documentation" : "category = SCT#110465008"
    },
    {
      "name" : "serCode",
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
        "name" : "serCodeCoding",
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
          "name" : "serCodeSystem",
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
          "name" : "serCodeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "702475000"
            }]
          }]
        },
        {
          "name" : "serCodeDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Referral to clinical trial (procedure)"
            }]
          }]
        }]
      }],
      "documentation" : "code = SCT#702475000"
    },
    {
      "name" : "serSubject",
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
        "name" : "serSubjectRef",
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
      "name" : "serAuthoredOn",
      "source" : [{
        "context" : "src",
        "element" : "issuedOn",
        "variable" : "issuedOnDt"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "authoredOn",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "issuedOnDt"
        },
        {
          "valueString" : "dateTime"
        }]
      }],
      "documentation" : "authoredOn ← issuedOn"
    },
    {
      "name" : "serReason",
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
        "name" : "serReasonRef",
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
      "name" : "serVariants",
      "source" : [{
        "context" : "src",
        "element" : "supportingVariants",
        "variable" : "sv"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "reasonReference",
        "variable" : "rrSv"
      }],
      "rule" : [{
        "name" : "serSvRef",
        "source" : [{
          "context" : "sv",
          "element" : "id",
          "variable" : "vid"
        }],
        "target" : [{
          "context" : "rrSv",
          "contextType" : "variable",
          "element" : "reference",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "vid"
          }]
        }]
      }],
      "documentation" : "supportingVariants as reasonReference"
    },
    {
      "name" : "serStudy",
      "source" : [{
        "context" : "src",
        "element" : "studies",
        "variable" : "study"
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
        "variable" : "rs",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "ResearchStudy"
        }]
      },
      {
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "supportingInfo",
        "variable" : "si"
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "study",
          "element" : "id",
          "variable" : "studyid"
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
            "valueId" : "studyid"
          }]
        }]
      },
      {
        "name" : "serStudySiRef",
        "source" : [{
          "context" : "study",
          "element" : "id",
          "variable" : "sid"
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
            "valueId" : "sid"
          }]
        }]
      },
      {
        "name" : "mapStudy",
        "source" : [{
          "context" : "study"
        }],
        "target" : [{
          "context" : "rs",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapStudy",
          "variable" : ["study", "rs"]
        }]
      }],
      "documentation" : "Each study → ResearchStudy resource in bundle + supportingInfo reference"
    }]
  },
  {
    "name" : "MapStudy",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapStudy: study reference → ResearchStudy\r\nProfile: MII_PR_MTB_Studie — identifier sliced by system\r\nNCT system = https://clinicaltrials.gov/study\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "ResearchStudy",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "studyId",
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
      "name" : "studyMeta",
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
        "name" : "studyProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "studyStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "active"
        }]
      }],
      "documentation" : "Required status (no DNPM source → use active as default)"
    },
    {
      "name" : "studyIdentifier",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "identifier",
        "variable" : "ident"
      }],
      "rule" : [{
        "name" : "studyIdentSystem",
        "source" : [{
          "context" : "src",
          "element" : "system",
          "variable" : "systemV"
        }],
        "target" : [{
          "context" : "ident",
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
        "name" : "studyIdentValue",
        "source" : [{
          "context" : "src",
          "element" : "id",
          "variable" : "idV"
        }],
        "target" : [{
          "context" : "ident",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "cast",
          "parameter" : [{
            "valueId" : "idV"
          },
          {
            "valueString" : "string"
          }]
        }]
      }],
      "documentation" : "identifier: system from study.system, value from study.id (e.g. NCT number)"
    }]
  }]
}

```
