# SMClaims - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMClaims**

## StructureMap: SMClaims 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-claims | *Version*:2026.0.1 |
| Draft as of 2026-07-23 | *Computable Name*:SMClaims |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "SMClaims",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-claims",
  "version" : "2026.0.1",
  "name" : "SMClaims",
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
    "url" : "http://hl7.org/fhir/StructureDefinition/Claim",
    "mode" : "produced",
    "alias" : "Claim"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/ClaimResponse",
    "mode" : "produced",
    "alias" : "ClaimResponse"
  }],
  "group" : [{
    "name" : "Claims",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nRoot group: iterate over claims and claimResponses\r\n---------------------------------------------------------------------------",
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
      "name" : "claim",
      "source" : [{
        "context" : "src",
        "element" : "claims",
        "variable" : "claim"
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
        "variable" : "tgtClaim",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Claim"
        }]
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "claim",
          "element" : "id",
          "variable" : "claimid"
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
            "valueId" : "claimid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "claim"
        }],
        "target" : [{
          "context" : "tgtClaim",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapClaim",
          "variable" : ["claim", "tgtClaim"]
        }]
      }],
      "documentation" : "--- Claim per claims[] entry ---------------------------------------------"
    },
    {
      "name" : "claimResponse",
      "source" : [{
        "context" : "src",
        "element" : "claimResponses",
        "variable" : "claimResp"
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
        "variable" : "tgtClaimResp",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "ClaimResponse"
        }]
      }],
      "rule" : [{
        "name" : "fullUrl",
        "source" : [{
          "context" : "claimResp",
          "element" : "id",
          "variable" : "claimRespid"
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
            "valueId" : "claimRespid"
          }]
        }]
      },
      {
        "name" : "map",
        "source" : [{
          "context" : "claimResp"
        }],
        "target" : [{
          "context" : "tgtClaimResp",
          "contextType" : "variable"
        }],
        "dependent" : [{
          "name" : "MapClaimResponse",
          "variable" : ["claimResp", "tgtClaimResp"]
        }]
      }],
      "documentation" : "--- ClaimResponse per claimResponses[] entry ----------------------------"
    }]
  },
  {
    "name" : "MapClaim",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapClaim: DNPM claims entry → FHIR Claim\r\nProfile: MII_PR_MTB_Antrag_Kostenuebernahme (Parent: Claim)\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Claim",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "claimId",
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
      "name" : "claimMeta",
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
        "name" : "claimProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "claimStatus",
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
      "documentation" : "status = #active (fixed by profile: * status = #active (exactly))"
    },
    {
      "name" : "claimUse",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "use",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "preauthorization"
        }]
      }],
      "documentation" : "use = #preauthorization: DNPM Antrag Kostenuebernahme is a pre-authorization request\r\n(request for coverage approval before / at time of treatment decision)"
    },
    {
      "name" : "claimType",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "type",
        "variable" : "t"
      }],
      "rule" : [{
        "name" : "claimTypeCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "t",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "claimTypeSystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/claim-type"
            }]
          }]
        },
        {
          "name" : "claimTypeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "institutional"
            }]
          }]
        }]
      }],
      "documentation" : "type: required CodeableConcept — use a placeholder institutional coding\r\n(actual type from dnpm-dip/mtb/claim-type if available; not in LM, use fixed value)"
    },
    {
      "name" : "claimPatient",
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
        "name" : "claimPatientReference",
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
      "documentation" : "patient → Patient reference (urn:uuid)"
    },
    {
      "name" : "claimCreated",
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
      "name" : "claimProvider",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "provider",
        "variable" : "prov"
      }],
      "rule" : [{
        "name" : "claimProviderDisplay",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "prov",
          "contextType" : "variable",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "Unknown"
          }]
        }]
      }],
      "documentation" : "provider: required by FHIR Claim — use a placeholder (no DNPM source field)\r\nSet to a relative reference that implementers can override"
    },
    {
      "name" : "claimPriority",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "priority",
        "variable" : "pri"
      }],
      "rule" : [{
        "name" : "claimPriorityCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "pri",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "claimPrioritySystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/processpriority"
            }]
          }]
        },
        {
          "name" : "claimPriorityCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "normal"
            }]
          }]
        }]
      }],
      "documentation" : "priority: required by FHIR Claim — fixed to 'normal' per profile"
    },
    {
      "name" : "claimPrescription",
      "source" : [{
        "context" : "src",
        "element" : "recommendation",
        "variable" : "rec"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "prescription",
        "variable" : "pres"
      }],
      "rule" : [{
        "name" : "claimPrescriptionReference",
        "source" : [{
          "context" : "rec",
          "element" : "id",
          "variable" : "rid"
        }],
        "target" : [{
          "context" : "pres",
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
      "documentation" : "prescription ← recommendation.id (MTBMedicationRecommendation reference)\r\nProfile uses Claim.prescription (Reference(MedicationRequest)) for the therapy recommendation"
    },
    {
      "name" : "claimInsurance",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "insurance",
        "variable" : "ins"
      }],
      "rule" : [{
        "name" : "insSequence",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "ins",
          "contextType" : "variable",
          "element" : "sequence",
          "transform" : "copy",
          "parameter" : [{
            "valueInteger" : 1
          }]
        }]
      },
      {
        "name" : "insFocal",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "ins",
          "contextType" : "variable",
          "element" : "focal",
          "transform" : "copy",
          "parameter" : [{
            "valueBoolean" : true
          }]
        }]
      },
      {
        "name" : "insCoverage",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "ins",
          "contextType" : "variable",
          "element" : "coverage",
          "variable" : "cov"
        }],
        "rule" : [{
          "name" : "insCoverageDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "cov",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "Unknown"
            }]
          }]
        }],
        "documentation" : "coverage: placeholder (no insurer data in DNPM LM)"
      }],
      "documentation" : "insurance: required by FHIR Claim (1..*)\r\nProfile requires insurance with focal=true and a sequence number"
    },
    {
      "name" : "claimCareTeam",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "careTeam",
        "variable" : "ct"
      }],
      "rule" : [{
        "name" : "ctSequence",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "ct",
          "contextType" : "variable",
          "element" : "sequence",
          "transform" : "copy",
          "parameter" : [{
            "valueInteger" : 1
          }]
        }]
      },
      {
        "name" : "ctResponsible",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "ct",
          "contextType" : "variable",
          "element" : "responsible",
          "transform" : "copy",
          "parameter" : [{
            "valueBoolean" : true
          }]
        }]
      },
      {
        "name" : "ctProvider",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "ct",
          "contextType" : "variable",
          "element" : "provider",
          "variable" : "prov"
        }],
        "rule" : [{
          "name" : "ctProviderDisplay",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "prov",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "ZPM"
            }]
          }]
        }]
      }],
      "documentation" : "careTeam[ZPMBeteiligung]: required by profile (1..*)\r\nNo ZPM practitioner data in DNPM LM; write mandatory structure with placeholder"
    }]
  },
  {
    "name" : "MapClaimResponse",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nMapClaimResponse: DNPM claimResponses entry → FHIR ClaimResponse\r\nProfile: MII_PR_MTB_Antwort_Kostenuebernahme (Parent: ClaimResponse)\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "BackboneElement",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "ClaimResponse",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "crId",
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
      "name" : "crMeta",
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
        "name" : "crProfile",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "m",
          "contextType" : "variable",
          "element" : "profile",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme"
          }]
        }]
      }],
      "documentation" : "Profile meta"
    },
    {
      "name" : "crStatus",
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
      "documentation" : "status = #active (fixed by profile: * status = #active)"
    },
    {
      "name" : "crUse",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "use",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "preauthorization"
        }]
      }],
      "documentation" : "use = #preauthorization: mirrors the Claim.use"
    },
    {
      "name" : "crType",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "type",
        "variable" : "t"
      }],
      "rule" : [{
        "name" : "crTypeCoding",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "t",
          "contextType" : "variable",
          "element" : "coding",
          "variable" : "c"
        }],
        "rule" : [{
          "name" : "crTypeSystem",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "http://terminology.hl7.org/CodeSystem/claim-type"
            }]
          }]
        },
        {
          "name" : "crTypeCode",
          "source" : [{
            "context" : "src"
          }],
          "target" : [{
            "context" : "c",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "institutional"
            }]
          }]
        }]
      }],
      "documentation" : "type: required — mirror institutional from Claim"
    },
    {
      "name" : "crPatient",
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
        "name" : "crPatientReference",
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
      "documentation" : "patient → Patient reference (urn:uuid)"
    },
    {
      "name" : "crCreated",
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
      "name" : "crInsurer",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "insurer",
        "variable" : "ins"
      }],
      "rule" : [{
        "name" : "crInsurerDisplay",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "ins",
          "contextType" : "variable",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "Unknown"
          }]
        }]
      }],
      "documentation" : "insurer: required by FHIR ClaimResponse — placeholder (no insurer in DNPM LM)"
    },
    {
      "name" : "crRequest",
      "source" : [{
        "context" : "src",
        "element" : "claim",
        "variable" : "cl"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "request",
        "variable" : "req"
      }],
      "rule" : [{
        "name" : "crRequestReference",
        "source" : [{
          "context" : "cl",
          "element" : "id",
          "variable" : "cid"
        }],
        "target" : [{
          "context" : "req",
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
      "documentation" : "request ← claim.id (associated Claim reference)"
    },
    {
      "name" : "crOutcome",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "outcome",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "complete"
        }]
      }],
      "documentation" : "outcome: fixed to 'complete' per profile\r\n(* outcome = http://hl7.org/fhir/remittance-outcome#complete)"
    },
    {
      "name" : "crEntscheidung",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "st"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "extension",
        "variable" : "ext"
      }],
      "rule" : [{
        "name" : "entscheidungUrl",
        "source" : [{
          "context" : "st"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-entscheidung"
          }]
        }]
      },
      {
        "name" : "entscheidungValue",
        "source" : [{
          "context" : "st"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "cc",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "entscheidungCoding",
          "source" : [{
            "context" : "st"
          }],
          "target" : [{
            "context" : "cc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "entscheidungCode",
            "source" : [{
              "context" : "st",
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
            "name" : "entscheidungSystem",
            "source" : [{
              "context" : "st",
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
            "name" : "entscheidungDisplay",
            "source" : [{
              "context" : "st",
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
      "documentation" : "extension[Entscheidung]: map claimResponse.status → decision extension\r\nExtension URL: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-entscheidung"
    },
    {
      "name" : "crAblehnungsgrund",
      "source" : [{
        "context" : "src",
        "element" : "statusReason",
        "variable" : "sr"
      }],
      "target" : [{
        "context" : "tgt",
        "contextType" : "variable",
        "element" : "extension",
        "variable" : "ext"
      }],
      "rule" : [{
        "name" : "ablehnungsgrundUrl",
        "source" : [{
          "context" : "sr"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund"
          }]
        }]
      },
      {
        "name" : "ablehnungsgrundValue",
        "source" : [{
          "context" : "sr"
        }],
        "target" : [{
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "variable" : "cc",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        }],
        "rule" : [{
          "name" : "ablehnungsgrundCoding",
          "source" : [{
            "context" : "sr"
          }],
          "target" : [{
            "context" : "cc",
            "contextType" : "variable",
            "element" : "coding",
            "variable" : "c"
          }],
          "rule" : [{
            "name" : "ablehnungsgrundCode",
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
            "name" : "ablehnungsgrundSystem",
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
            "name" : "ablehnungsgrundDisplay",
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
        }]
      }],
      "documentation" : "extension[Ablehnungsgrund]: map statusReason → rejection reason extension\r\nExtension URL: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund"
    }]
  }]
}

```
