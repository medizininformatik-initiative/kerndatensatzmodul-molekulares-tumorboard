# MII PR MTB Genomic Study Analysis - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Genomic Study Analysis**

## Resource Profile: MII PR MTB Genomic Study Analysis 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis | *Version*:2026.0.1 |
| Active as of 2026-09-14 | *Computable Name*:MII_PR_MTB_Genomic_Study_Analysis |

 
Die Genomic Study Analysis beschreibt die Methodik einer bestimmten molekulargenetischen Untersuchung. 

-------

### Content

This profile describes the Genomics Study Analysis.

This profile describes the Genomics Study. Since the structure, scope, and content of genomic analysis reports differ significantly from other diagnostic reports (laboratory, imaging, pathology, microbiology…), a GenomicStudy resource was introduced in FHIR R5 that contains all relevant data elements.

* https://hl7.org/fhir/R5/genomicstudy.html
* https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study.html

Since many national and international organizations continue to rely on FHIR R4, there was an official backport, so that the contents of an R5 GenomicStudy can be represented via a superordinate GenomicStudy procedure and subordinate GenomicStudyAnalysis procedures. The GenomicStudyAnalysis contains precise data on the devices used, methodology, reference genome, etc.

### Links to other resources

The GenomicStudyAnalysis is linked to the NGS-Bericht (NGS report) via the GenomicStudy. The GenomicStudyAnalysis itself contains references to other devices and materials, which are represented in FHIR as Device resources. For this purpose, in the present

### Content

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Observation?_id=12345`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/genomic-study-analysis`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "focus" MUST be supported:Examples:`GET [base]/Procedure?focus=Condition/example-mii-mtb-diagnose`Usage notes: Further information on searching for "focus" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "specimen" MUST be supported:Examples:`GET [base]/Procedure?specimen=Specimen/example-mii-mtb-specimen`Usage notes: Further information on searching for "specimen" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "device" MUST be supported:Examples:`GET [base]/Procedure?device=Device/example-mii-molgen-device-sequencer`Usage notes: Further information on searching for "device" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "category" MUST be supported:Examples:`GET [base]/Procedure?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory`Usage notes: Further information on searching for "category" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

**Examples**

### GenomicStudy

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Genomic Study](StructureDefinition-mii-pr-mtb-genomic-study.md)
* Examples for this Profile: [Procedure/MII-EXA-MTB-GenomicStudyAnalysis-1](Procedure-MII-EXA-MTB-GenomicStudyAnalysis-1.md), [Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-1](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-1.md), [Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-2](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-2.md) and [Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-3](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-genomic-study-analysis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-genomic-study-analysis.csv), [Excel](../StructureDefinition-mii-pr-mtb-genomic-study-analysis.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-genomic-study-analysis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-genomic-study-analysis",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "version" : "3.0.0",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C17457"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-09-15"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Genomic_Study_Analysis",
  "title" : "MII PR MTB Genomic Study Analysis",
  "status" : "active",
  "date" : "2026-09-14T22:18:02+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Die Genomic Study Analysis beschreibt die Methodik einer bestimmten molekulargenetischen Untersuchung.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-genomic-study-analysis",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.meta",
      "path" : "Procedure.meta",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.meta.profile",
      "path" : "Procedure.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension",
      "path" : "Procedure.extension",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:method-type",
      "path" : "Procedure.extension",
      "sliceName" : "method-type"
    },
    {
      "id" : "Procedure.extension:method-type.value[x]",
      "path" : "Procedure.extension.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-genomic-analysis-method-type"
      }
    },
    {
      "id" : "Procedure.extension:qc",
      "path" : "Procedure.extension",
      "sliceName" : "qc",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-genomic-study-analysis-qc"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.identifier",
      "path" : "Procedure.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "mustSupport" : true
    }]
  }
}

```
