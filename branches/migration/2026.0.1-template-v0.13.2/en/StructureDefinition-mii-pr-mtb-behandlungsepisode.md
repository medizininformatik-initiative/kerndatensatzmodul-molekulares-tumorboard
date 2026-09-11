# MII PR MTB Behandlungsepisode - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Behandlungsepisode**

## Resource Profile: MII PR MTB Behandlungsepisode 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Behandlungsepisode |

 
Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen 

-------

### Content

This profile describes the current Behandlungsepisode (treatment episode) including the current health status, prior therapies, molecular pathology report and NGS-Bericht (NGS report).

It serves as a bracket intended to complement the case concept, since the MTB can cover, in addition to the classic in-house patients, each of the following patient journeys:

* The patient is cared for from beginning to end at the same university hospital, both in accordance with guidelines (oncology) and at the Molekulares Tumorboard (molecular tumor board) (diagnosis, therapy and follow-up)
* The patient is treated externally in accordance with guidelines, and once those options are exhausted, the remainder of the therapy takes place at the university hospital
* The patient never presents in person at the university hospital; instead, the case is only discussed at the MTB
* Arbitrary combinations of prior therapies and subsequent therapies.

### Profiling decisions / ballot comment

As an alternative, the use of the `EpisodeOfCare` resource was considered. However, this is to be regarded rather as an administrative treatment period.

Therefore, using the `ClinicalImpression` resource seemed more sensible to us, even though the `ClinicalImpression` here captures a time **period** and not a **point** in time. It thus contains references to the state of the patient at the time of inclusion as well as references to the diagnostics and treatments performed and to interdisciplinary conferences for further treatment planning.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/ClinicalImpression?_id=12345`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/ClinicalImpression?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode`Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "period-end" MUST be supported:Examples:`GET [base]/ClinicalImpression?period-end=eq2025-01-01`Usage notes: Further information on searching by "period-end" can be found in the [FHIR base specification - section "Date Search"](https://hl7.org/fhir/R4/search.html#date).
1. The search parameter "problem" MUST be supported:Examples:`GET [base]/ClinicalImpression?problem=Condition/example`Usage notes: Further information on searching by "problem" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "investigation" MUST be supported:Examples:`GET [base]/ClinicalImpression?investigation=DiagnosticReport/example`Usage notes: Further information on searching by "investigation" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "supporting-info" MUST be supported:Examples:`GET [base]/ClinicalImpression?supporting-info=DiagnosticReport/example`Usage notes: Further information on searching by "supporting-info" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

TODO: SP guideline treatment status extension

**Examples**

Example: MTB case decision for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.md))

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Clinical Impresssion](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.md) and [MII PR MTB Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)
* Examples for this Profile: [ClinicalImpression/mii-exa-mtb-behandlungsepisode-1](ClinicalImpression-mii-exa-mtb-behandlungsepisode-1.md) and [ClinicalImpression/mii-exa-mtb-kim-musterperson-behandlungsepisode](ClinicalImpression-mii-exa-mtb-kim-musterperson-behandlungsepisode.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-behandlungsepisode.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-behandlungsepisode.csv), [Excel](../StructureDefinition-mii-pr-mtb-behandlungsepisode.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-behandlungsepisode.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-behandlungsepisode",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Behandlungsepisode",
  "title" : "MII PR MTB Behandlungsepisode",
  "status" : "active",
  "date" : "2026-09-11T15:11:15+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClinicalImpression",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClinicalImpression",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClinicalImpression",
      "path" : "ClinicalImpression"
    },
    {
      "id" : "ClinicalImpression.meta",
      "path" : "ClinicalImpression.meta",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.meta.profile",
      "path" : "ClinicalImpression.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.extension",
      "path" : "ClinicalImpression.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ClinicalImpression.extension:LeitlinienbehandlungStatus",
      "path" : "ClinicalImpression.extension",
      "sliceName" : "LeitlinienbehandlungStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinienbehandlung-status"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.subject",
      "path" : "ClinicalImpression.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient",
        "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert"]
      }]
    },
    {
      "id" : "ClinicalImpression.effective[x]",
      "path" : "ClinicalImpression.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "ClinicalImpression.effective[x]:effectivePeriod",
      "path" : "ClinicalImpression.effective[x]",
      "sliceName" : "effectivePeriod",
      "short" : "Zeitraum der Behandlungsepisode",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitraum der Behandlungsepisode"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Treatment Episode Period"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zeitraum von Einschluss bis Abschluss im Molekularen Tumorboard",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitraum von Einschluss bis Abschluss im Molekularen Tumorboard"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Period from inclusion to completion in the Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.effective[x]:effectivePeriod.start",
      "path" : "ClinicalImpression.effective[x].start",
      "short" : "Einschlussdatum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einschlussdatum"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Inclusion Date"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Einschlussdatum Molekulares Tumorboard",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einschlussdatum Molekulares Tumorboard"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Inclusion date for Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "ClinicalImpression.effective[x]:effectivePeriod.end",
      "path" : "ClinicalImpression.effective[x].end",
      "short" : "Abschlussdatum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Abschlussdatum"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Completion Date"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Abschlussdatum Molekulares Tumorboard",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Abschlussdatum Molekulares Tumorboard"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Completion date for Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.problem",
      "path" : "ClinicalImpression.problem",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "description" : "Slice für Diagnose",
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.problem:PrimaertumorDiagnose",
      "path" : "ClinicalImpression.problem",
      "sliceName" : "PrimaertumorDiagnose",
      "short" : "Primärtumor Diagnose",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Primärtumor Diagnose"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Primary Tumor Diagnosis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweise auf Diagnose des Primärtumors",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweise auf Diagnose des Primärtumors"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to primary tumor diagnosis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor",
        "http://hl7.org/fhir/StructureDefinition/Condition"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation",
      "path" : "ClinicalImpression.investigation",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code.coding"
        }],
        "description" : "Slice für relevante Ermittlungen",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ClinicalImpression.investigation:KrankengeschichteFamilie",
      "path" : "ClinicalImpression.investigation",
      "sliceName" : "KrankengeschichteFamilie",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation:KrankengeschichteFamilie.code.coding",
      "path" : "ClinicalImpression.investigation.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "416471007",
        "display" : "Family medical history"
      }
    },
    {
      "id" : "ClinicalImpression.investigation:KrankengeschichteFamilie.item",
      "path" : "ClinicalImpression.investigation.item",
      "short" : "Krankengeschichte Familie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Krankengeschichte Familie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Family Medical History"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf familiäre Krankengeschichte",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf familiäre Krankengeschichte"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to family medical history"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese",
        "http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory"]
      }]
    },
    {
      "id" : "ClinicalImpression.investigation:ECOG",
      "path" : "ClinicalImpression.investigation",
      "sliceName" : "ECOG",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation:ECOG.code.coding",
      "path" : "ClinicalImpression.investigation.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "424122007",
        "display" : "ECOG performance status finding"
      }
    },
    {
      "id" : "ClinicalImpression.investigation:ECOG.item",
      "path" : "ClinicalImpression.investigation.item",
      "short" : "ECOG",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ECOG"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ECOG"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "ECOG Performance Status",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ECOG Performance Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ECOG Performance Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    },
    {
      "id" : "ClinicalImpression.investigation:NgsBericht",
      "path" : "ClinicalImpression.investigation",
      "sliceName" : "NgsBericht",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation:NgsBericht.code.coding",
      "path" : "ClinicalImpression.investigation.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "106221001",
        "display" : "Genetic finding"
      }
    },
    {
      "id" : "ClinicalImpression.investigation:NgsBericht.item",
      "path" : "ClinicalImpression.investigation.item",
      "short" : "NGS Report",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "NGS Report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "NGS Report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Für Molekulares Tumorboard bereitgestellter Next Generation Sequencing Bericht",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Für Molekulares Tumorboard bereitgestellter Next Generation Sequencing Bericht"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Next Generation Sequencing report provided for the Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }]
    },
    {
      "id" : "ClinicalImpression.investigation:MolekularPathologieBefund",
      "path" : "ClinicalImpression.investigation",
      "sliceName" : "MolekularPathologieBefund",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation:MolekularPathologieBefund.code.coding",
      "path" : "ClinicalImpression.investigation.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "60568-3",
        "display" : "Pathology synoptic report"
      }
    },
    {
      "id" : "ClinicalImpression.investigation:MolekularPathologieBefund.item",
      "path" : "ClinicalImpression.investigation.item",
      "short" : "Molekular Pathologie Befund",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Molekular Pathologie Befund"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Molecular Pathology Report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Für Molekulares Tumorboard bereitgestellter Molekular Pathologie Befund",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Für Molekulares Tumorboard bereitgestellter Molekular Pathologie Befund"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Molecular pathology report provided for the Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molecular-pathology-report",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }]
    },
    {
      "id" : "ClinicalImpression.investigation:Einwilligung",
      "path" : "ClinicalImpression.investigation",
      "sliceName" : "Einwilligung",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation:Einwilligung.code.coding",
      "path" : "ClinicalImpression.investigation.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "105511-0",
        "display" : "Was consent given"
      }
    },
    {
      "id" : "ClinicalImpression.investigation:Einwilligung.item",
      "path" : "ClinicalImpression.investigation.item",
      "short" : "Einwilligung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einwilligung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Consent"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Einwilligung zum Molekularen Tumorboard",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einwilligung zum Molekularen Tumorboard"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Consent for the Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-consent-given"]
      }]
    },
    {
      "id" : "ClinicalImpression.supportingInfo",
      "path" : "ClinicalImpression.supportingInfo",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this.resolve()"
        }],
        "description" : "Slice für weitere Informationen",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ClinicalImpression.supportingInfo:Vorbefund",
      "path" : "ClinicalImpression.supportingInfo",
      "sliceName" : "Vorbefund",
      "short" : "Vorbefund",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Vorbefund"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Previous Finding"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Relevanter Vorbefund",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Relevanter Vorbefund"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Relevant previous finding"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.supportingInfo:Vortherapie",
      "path" : "ClinicalImpression.supportingInfo",
      "sliceName" : "Vortherapie",
      "short" : "Vortherapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Vortherapie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Prior Therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Relevante Leitlinien-basierte Vortherapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Relevante Leitlinien-basierte Vortherapie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Relevant guideline-based prior therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation",
        "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.supportingInfo:Vortherapie.extension:LeitlinieDokumentation",
      "path" : "ClinicalImpression.supportingInfo.extension",
      "sliceName" : "LeitlinieDokumentation",
      "short" : "Leitlinie Dokumentation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Leitlinie Dokumentation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Guideline Documentation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Dokumentation zur Leitlinien-konformen Umsetzung der Prozedur",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Dokumentation zur Leitlinien-konformen Umsetzung der Prozedur"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Documentation for guideline-compliant implementation of the procedure"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.supportingInfo:Therapieplan",
      "path" : "ClinicalImpression.supportingInfo",
      "sliceName" : "Therapieplan",
      "short" : "Therapieplan",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapieplan"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Therapy Plan"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Therapieplan gemäß Beschluss des Molekularen Tumorboards",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapieplan gemäß Beschluss des Molekularen Tumorboards"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Therapy plan according to the Molecular Tumor Board decision"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan",
        "http://hl7.org/fhir/StructureDefinition/CarePlan"]
      }],
      "mustSupport" : true
    }]
  }
}

```
