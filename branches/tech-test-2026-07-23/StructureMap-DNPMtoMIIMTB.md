# DNPMtoMIIMTB - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DNPMtoMIIMTB**

## StructureMap: DNPMtoMIIMTB 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/dnpm-to-mii-mtb | *Version*:2026.0.1 |
| Draft as of 2026-07-23 | *Computable Name*:DNPMtoMIIMTB |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "DNPMtoMIIMTB",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/dnpm-to-mii-mtb",
  "version" : "2026.0.1",
  "name" : "DNPMtoMIIMTB",
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
  }],
  "import" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-patient-demographics",
  "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-diagnosis",
  "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-specimen-histology-ihc-msi",
  "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-ngs-report",
  "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-careplan",
  "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-guideline-therapy",
  "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-follow-up",
  "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-systemic-therapy",
  "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/sm-claims"],
  "group" : [{
    "name" : "DNPMPatientRecordToBundle",
    "typeMode" : "none",
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
          "valueString" : "transaction"
        }]
      }],
      "documentation" : "Set bundle type"
    },
    {
      "name" : "demographics",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "PatientDemographics",
        "variable" : ["src", "bundle"]
      }],
      "documentation" : "Patient demographics, episodes, family history"
    },
    {
      "name" : "diagnoses",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "Diagnoses",
        "variable" : ["src", "bundle"]
      }],
      "documentation" : "Diagnoses + ECOG"
    },
    {
      "name" : "pathology",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "SpecimenHistologyIHCMSI",
        "variable" : ["src", "bundle"]
      }],
      "documentation" : "Specimens, histology, IHC, MSI"
    },
    {
      "name" : "ngs",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "NGSReports",
        "variable" : ["src", "bundle"]
      }],
      "documentation" : "NGS Reports"
    },
    {
      "name" : "carePlans",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "CarePlans",
        "variable" : ["src", "bundle"]
      }],
      "documentation" : "CarePlans + recommendations"
    },
    {
      "name" : "guidelineTherapy",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "GuidelineTherapy",
        "variable" : ["src", "bundle"]
      }],
      "documentation" : "Guideline therapies + procedures"
    },
    {
      "name" : "followUps",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "FollowUps",
        "variable" : ["src", "bundle"]
      }],
      "documentation" : "Follow-ups"
    },
    {
      "name" : "systemicTherapies",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "SystemicTherapies",
        "variable" : ["src", "bundle"]
      }],
      "documentation" : "Systemic therapies + responses"
    },
    {
      "name" : "claims",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable"
      }],
      "dependent" : [{
        "name" : "Claims",
        "variable" : ["src", "bundle"]
      }],
      "documentation" : "Claims + claim responses"
    }]
  }]
}

```
