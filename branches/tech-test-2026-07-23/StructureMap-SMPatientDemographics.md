# SMPatientDemographics - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMPatientDemographics**

## StructureMap: SMPatientDemographics 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-patient-demographics | *Version*:2026.0.1 |
| Draft as of 2026-07-23 | *Computable Name*:SMPatientDemographics |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SMPatientDemographics",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-patient-demographics",
  "version" : "2026.0.1",
  "name" : "SMPatientDemographics",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/Patient",
    "mode" : "produced",
    "alias" : "Patient"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/ClinicalImpression",
    "mode" : "produced",
    "alias" : "ClinicalImpression"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory",
    "mode" : "produced",
    "alias" : "FamilyMemberHistory"
  }],
  "group" : [{
    "name" : "PatientDemographics",
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
      "name" : "patient",
      "source" : [{
        "context" : "src",
        "element" : "patient",
        "variable" : "srcPat"
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
        "variable" : "tgtPat",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Patient"
        }]
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "srcPat",
          "element" : "id",
          "variable" : "srcPatid"
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
            "valueId" : "srcPatid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "srcPat"
        }],
        "target" : [{
          "context" : "tgtPat",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapPatient",
          "variable" : ["srcPat", "tgtPat"]
        }]
      }],
      "documentation" : "--- Patient (exactly one) -----------------------------------------------"
    },
    {
      "name" : "episodes",
      "source" : [{
        "context" : "src",
        "element" : "episodesOfCare",
        "variable" : "eoc"
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
          "context" : "eoc",
          "element" : "id",
          "variable" : "eocid"
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
            "valueId" : "eocid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "eoc"
        }],
        "target" : [{
          "context" : "ci",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapEpisodeOfCare",
          "variable" : ["eoc", "ci", "src"]
        }]
      }],
      "documentation" : "--- ClinicalImpression per episode of care ------------------------------"
    },
    {
      "name" : "familyHistory",
      "source" : [{
        "context" : "src",
        "element" : "familyMemberHistories",
        "variable" : "fh"
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
        "variable" : "tgtFh",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "FamilyMemberHistory"
        }]
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "fh",
          "element" : "id",
          "variable" : "fhid"
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
            "valueId" : "fhid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "fh"
        }],
        "target" : [{
          "context" : "tgtFh",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapFamilyHistory",
          "variable" : ["fh", "tgtFh"]
        }]
      }],
      "documentation" : "--- FamilyMemberHistory per family-history entry ------------------------"
    }]
  },
  {
    "name" : "MapPatient",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapPatient: DNPM patient → FHIR Patient\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Patient",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "patientId",
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
      "name" : "birthDate",
      "source" : [{
        "context" : "src",
        "element" : "birthDate",
        "variable" : "birthDateDt"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "birthDate",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "birthDateDt"
        },
        {
          "valueString" : "date"
        }]
      }]
    },
    {
      "name" : "patientMeta",
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
        "name" : "patientProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient"
          }]
        }]
      }],
      "documentation" : "Profile meta – MII KDS Person Patient"
    },
    {
      "name" : "genderFemale",
      "source" : [{
        "context" : "src",
        "element" : "gender",
        "variable" : "g",
        "condition" : "g.code = 'female'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "gender",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "female"
        }]
      }],
      "documentation" : "Gender: translate DNPM codes → FHIR administrative-gender"
    },
    {
      "name" : "genderMale",
      "source" : [{
        "context" : "src",
        "element" : "gender",
        "variable" : "g",
        "condition" : "g.code = 'male'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "gender",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "male"
        }]
      }]
    },
    {
      "name" : "genderOther",
      "source" : [{
        "context" : "src",
        "element" : "gender",
        "variable" : "g",
        "condition" : "g.code = 'other'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "gender",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "other"
        }]
      }]
    },
    {
      "name" : "genderUnknown",
      "source" : [{
        "context" : "src",
        "element" : "gender",
        "variable" : "g",
        "condition" : "g.code = 'unknown'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "gender",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "unknown"
        }]
      }]
    },
    {
      "name" : "deceasedTrue",
      "source" : [{
        "context" : "src",
        "element" : "vitalStatus",
        "variable" : "vs",
        "condition" : "vs.code = 'deceased'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "deceased",
        "transform" : "copy",
        "parameter" : [{
          "valueBoolean" : true
        }]
      }],
      "documentation" : "Vital status → deceasedBoolean"
    },
    {
      "name" : "deceasedFalse",
      "source" : [{
        "context" : "src",
        "element" : "vitalStatus",
        "variable" : "vs",
        "condition" : "vs.code = 'alive'"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "deceased",
        "transform" : "copy",
        "parameter" : [{
          "valueBoolean" : false
        }]
      }]
    },
    {
      "name" : "address",
      "source" : [{
        "context" : "src",
        "element" : "address",
        "variable" : "srcAddr"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "address",
        "variable" : "tgtAddr"
      }],
      "dependent" : [{
        "name" : "MapAddress",
        "variable" : ["srcAddr", "tgtAddr"]
      }],
      "documentation" : "Address: municipalityCode → postalCode + AGS extension"
    }]
  },
  {
    "name" : "MapAddress",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapAddress: DNPM address.municipalityCode → FHIR Address\r\n---------------------------------------------------------------------------",
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
      "name" : "postalCode",
      "source" : [{
        "context" : "src",
        "element" : "municipalityCode",
        "variable" : "municipalityCodeV"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "postalCode",
        "transform" : "cast",
        "parameter" : [{
          "valueId" : "municipalityCodeV"
        },
        {
          "valueString" : "string"
        }]
      }],
      "documentation" : "Plain postalCode (fallback / dual-write)"
    },
    {
      "name" : "agsExtension",
      "source" : [{
        "context" : "src",
        "element" : "municipalityCode",
        "variable" : "ags"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "extension",
        "variable" : "ext"
      }],
      "rule" : [{
        "name" : "agsExtUrl",
        "source" : [{
          "context" : "ags"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://fhir.de/StructureDefinition/destatis/ags"
          }]
        }]
      },
      {
        "name" : "agsExtValue",
        "source" : [{
          "context" : "ags"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "cast",
          "parameter" : [{
            "valueId" : "ags"
          },
          {
            "valueString" : "string"
          }]
        }]
      }],
      "documentation" : "AGS extension (http://fhir.de/StructureDefinition/destatis/ags)"
    }]
  },
  {
    "name" : "MapEpisodeOfCare",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapEpisodeOfCare: DNPM episodesOfCare entry → FHIR ClinicalImpression\r\nProfile: MII_PR_MTB_Behandlungsepisode (Parent: ClinicalImpression)\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "ClinicalImpression",
      "mode" : "target"
    },
    {
      "name" : "record",
      "type" : "DNPMPatientRecord",
      "mode" : "source"
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
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "statusCompleted",
      "source" : [{
        "context" : "src",
        "element" : "period",
        "variable" : "p",
        "condition" : "p.end.exists()"
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
      "documentation" : "Status: use 'completed' when period.end is present, otherwise 'in-progress'"
    },
    {
      "name" : "statusInProgress",
      "source" : [{
        "context" : "src",
        "element" : "period",
        "variable" : "p",
        "condition" : "p.end.empty()"
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
      "name" : "statusDefault",
      "source" : [{
        "context" : "src",
        "condition" : "src.period.empty()"
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
      "documentation" : "Fallback when no period is present at all"
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
      "documentation" : "Subject → reference to Patient (by urn:uuid)"
    },
    {
      "name" : "effectivePeriod",
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
        "name" : "epStart",
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
        "name" : "epEnd",
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
      "documentation" : "effectivePeriod (1..1 per profile)"
    },
    {
      "name" : "problems",
      "source" : [{
        "context" : "src",
        "element" : "diagnoses",
        "variable" : "diag"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "problem",
        "variable" : "prob"
      }],
      "rule" : [{
        "name" : "diagReference",
        "source" : [{
          "context" : "diag",
          "element" : "id",
          "variable" : "did"
        }],
        "target" : [{
          "context" : "prob",
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
      }],
      "documentation" : "problem: one entry per diagnosis reference in the episode"
    }]
  },
  {
    "name" : "MapFamilyHistory",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapFamilyHistory: DNPM familyMemberHistories entry → FHIR FamilyMemberHistory\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "FamilyMemberHistory",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "fhId",
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
      "name" : "fhStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "health-unknown"
        }]
      }],
      "documentation" : "Required status (no DNPM source for this – use health-unknown as default)"
    },
    {
      "name" : "fhPatient",
      "source" : [{
        "context" : "src",
        "element" : "patient",
        "variable" : "pat"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "patient",
        "variable" : "p"
      }],
      "rule" : [{
        "name" : "fhPatientReference",
        "source" : [{
          "context" : "pat",
          "element" : "id",
          "variable" : "pid"
        }],
        "target" : [{
          "context" : "p",
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
      "documentation" : "patient → reference to Patient (by urn:uuid)"
    },
    {
      "name" : "fhRelationship",
      "source" : [{
        "context" : "src",
        "element" : "relationship",
        "variable" : "rel"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "relationship",
        "variable" : "r"
      }],
      "dependent" : [{
        "name" : "MapRelationship",
        "variable" : ["rel", "r"]
      }],
      "documentation" : "relationship → CodeableConcept with one Coding"
    }]
  },
  {
    "name" : "MapRelationship",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapRelationship: DNPM relationship coding → FHIR CodeableConcept\r\n---------------------------------------------------------------------------",
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
      "name" : "relCoding",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "coding",
        "variable" : "c"
      }],
      "rule" : [{
        "name" : "relCode",
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
        "name" : "relSystem",
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
        "name" : "relDisplay",
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
    }]
  }]
}

```
