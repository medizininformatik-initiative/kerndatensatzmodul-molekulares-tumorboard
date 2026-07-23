# A Clinical Study of the Safety and Effectiveness of an Investigational Cell Therapy Given With and Without an Investigational RNA-based Vaccine in Patients With Organ Tumors - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **A Clinical Study of the Safety and Effectiveness of an Investigational Cell Therapy Given With and Without an Investigational RNA-based Vaccine in Patients With Organ Tumors**

## Example ResearchStudy: A Clinical Study of the Safety and Effectiveness of an Investigational Cell Therapy Given With and Without an Investigational RNA-based Vaccine in Patients With Organ Tumors

Profile: [MII PR MTB Studie](StructureDefinition-mii-pr-mtb-studie.md) version: 2026.0.1

**identifier**: [MII_NS_MTB_NCT](NamingSystem-mii-ns-mtb-nct.md)/04503278

**status**: Active

**primaryPurposeType**: treatment

**phase**: phase-1

**condition**: Solid tumor configuration

**keyword**: Non-small cell lung cancer (NSCLC)

**enrollment**: [Group: type = person; actual = false; quantity = 145](Group-mii-exa-mtb-study-cldn6-eligibility-criteria.md)

**period**: 2020-09-16 --> 2040-01

**sponsor**: [Organization BioNTech Cell & Gene Therapies GmbH](Organization-mii-exa-mtb-study-sponsor-biontech.md)

**principalInvestigator**: [PractitionerRole Study coordinator](PractitionerRole-mii-exa-mtb-study-investigator-biontech.md)

**site**: [Location Karolinska Comprehensive Cancer Center Cancerstudieenheten Huddinge Karolinska Universitetssjukhuset](Location-mii-exa-mtb-study-cldn6-location-11.md)

> **arm****name**: Part 1 - CLDN6 CAR-T: Dose escalation in lymphodepleted patients until the MTD and/or RP2D

> **arm****name**: Part 2 Vaccine-modulated - CLDN6 uRNA-LPX/CLDN6 modRNA-LPX: Dose escalation until the MTD and/or RP2D

> **objective****name**: Occurrence of treatment-emergent adverse events (TEAEs) including ≥ Grade 3, serious, fatal TEAEs by relationship**type**: primary

> **objective****name**: Occurrence of dose reduction and discontinuation of investigational medicinal product (IMP) due to TEAEs**type**: primary

> **objective****name**: Occurrence of dose-limiting toxicity (DLT) during the DLT evaluation period**type**: primary

> **objective****name**: Change from baseline in the levels and kinetics of soluble immune factors measured by cytokine multiplex assay**type**: secondary

> **objective****name**: Objective response rate (ORR) defined as the proportion of patients in whom a complete response (CR) or partial response (PR) (per response evaluation criteria in solid tumors [RECIST 1.1]) is observed as best overall response**type**: secondary

> **objective****name**: Disease control rate (DCR) defined as the proportion of patients in whom a CR or PR or stable disease (SD) (per RECIST 1.1, SD assessed at least 6 weeks after the first dose) is observed as best overall response**type**: secondary

> **objective****name**: Duration of response (DOR) defined as the time from first objective response (CR or PR per RECIST 1.1) to first occurrence of objective progressive disease (PD) per RECIST 1.1/recurrence or death from any cause, whichever occurs first**type**: secondary



## Resource Content

```json
{
  "resourceType" : "ResearchStudy",
  "id" : "mii-exa-mtb-study-cldn6",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie|2026.0.1"]
  },
  "identifier" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mtb/sid/nct",
    "value" : "04503278"
  }],
  "status" : "active",
  "primaryPurposeType" : {
    "coding" : [{
      "code" : "treatment"
    }]
  },
  "phase" : {
    "coding" : [{
      "code" : "phase-1"
    }]
  },
  "condition" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "369757002",
      "display" : "Solid tumor configuration"
    }]
  }],
  "keyword" : [{
    "text" : "Non-small cell lung cancer (NSCLC)"
  }],
  "enrollment" : [{
    "reference" : "Group/mii-exa-mtb-study-cldn6-eligibility-criteria"
  }],
  "period" : {
    "start" : "2020-09-16",
    "end" : "2040-01"
  },
  "sponsor" : {
    "reference" : "Organization/mii-exa-mtb-study-sponsor-biontech"
  },
  "principalInvestigator" : {
    "reference" : "PractitionerRole/mii-exa-mtb-study-investigator-biontech"
  },
  "site" : [{
    "reference" : "Location/mii-exa-mtb-study-cldn6-location-11"
  }],
  "arm" : [{
    "name" : "Part 1 - CLDN6 CAR-T: Dose escalation in lymphodepleted patients until the MTD and/or RP2D"
  },
  {
    "name" : "Part 2 Vaccine-modulated - CLDN6 uRNA-LPX/CLDN6 modRNA-LPX: Dose escalation until the MTD and/or RP2D"
  }],
  "objective" : [{
    "name" : "Occurrence of treatment-emergent adverse events (TEAEs) including ≥ Grade 3, serious, fatal TEAEs by relationship",
    "type" : {
      "coding" : [{
        "code" : "primary"
      }]
    }
  },
  {
    "name" : "Occurrence of dose reduction and discontinuation of investigational medicinal product (IMP) due to TEAEs",
    "type" : {
      "coding" : [{
        "code" : "primary"
      }]
    }
  },
  {
    "name" : "Occurrence of dose-limiting toxicity (DLT) during the DLT evaluation period",
    "type" : {
      "coding" : [{
        "code" : "primary"
      }]
    }
  },
  {
    "name" : "Change from baseline in the levels and kinetics of soluble immune factors measured by cytokine multiplex assay",
    "type" : {
      "coding" : [{
        "code" : "secondary"
      }]
    }
  },
  {
    "name" : "Objective response rate (ORR) defined as the proportion of patients in whom a complete response (CR) or partial response (PR) (per response evaluation criteria in solid tumors [RECIST 1.1]) is observed as best overall response",
    "type" : {
      "coding" : [{
        "code" : "secondary"
      }]
    }
  },
  {
    "name" : "Disease control rate (DCR) defined as the proportion of patients in whom a CR or PR or stable disease (SD) (per RECIST 1.1, SD assessed at least 6 weeks after the first dose) is observed as best overall response",
    "type" : {
      "coding" : [{
        "code" : "secondary"
      }]
    }
  },
  {
    "name" : "Duration of response (DOR) defined as the time from first objective response (CR or PR per RECIST 1.1) to first occurrence of objective progressive disease (PD) per RECIST 1.1/recurrence or death from any cause, whichever occurs first",
    "type" : {
      "coding" : [{
        "code" : "secondary"
      }]
    }
  }]
}

```
