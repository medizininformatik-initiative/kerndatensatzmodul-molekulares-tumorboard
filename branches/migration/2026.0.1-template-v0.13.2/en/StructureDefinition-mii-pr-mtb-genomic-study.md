# MII PR MTB Genomic Study - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Genomic Study**

## Resource Profile: MII PR MTB Genomic Study 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Genomic_Study |

 
Genomic Study beinhaltet und verweist über GenomicStudyAnalysis auf Details zu den einzelnen Untersuchungen einer NGS-Untersuchung (Sequenzierung, Variant Calling, CNV-Analyse, Fusions-Analysen etc.) 

-------

### Content

This profile describes the Genomics Study. Since the structure, scope, and content of genomic analysis reports differ significantly from other diagnostic reports (laboratory, imaging, pathology, microbiology…), a GenomicStudy resource was introduced in FHIR R5 that contains all relevant data elements.

* https://hl7.org/fhir/R5/genomicstudy.html
* https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study.html

Since many national and international organizations continue to rely on FHIR R4, there was an official backport, so that the contents of an R5 GenomicStudy can be represented via a superordinate GenomicStudy procedure and subordinate GenomicStudyAnalysis procedures.

### Content

Mapping of the data set to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Procedure?_id=12345`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study`Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "status" MUST be supported:Examples:`GET [base]/Procedure?status=completed`Usage notes: Further information on searching by "Procedure.status" can be found in the [FHIR base specification - section "Token Search".](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Procedure?code=Panel sequencing`Usage notes: Further information on searching by "code" can be found in the [FHIR base specification - section "Token Search".](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Procedure?subject=Patient/1234`Usage notes: Further information on searching by "subject" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "encounter" MUST be supported:Examples:`GET [base]/Procedure?encounter=Encounter/1234`Usage notes: Further information on searching by "encounter" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

-------

**Usages:**

* Refer to this Profile: [MII EX MTB NGS Bericht Metadaten](StructureDefinition-mii-ex-mtb-ngs-bericht-genomic-study.md)
* Examples for this Profile: [Procedure/MII-EXA-MTB-GenomicStudy-1](Procedure-MII-EXA-MTB-GenomicStudy-1.md) and [Procedure/mii-exa-mtb-kim-musterperson-genomic-study](Procedure-mii-exa-mtb-kim-musterperson-genomic-study.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-genomic-study.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-genomic-study.csv), [Excel](../StructureDefinition-mii-pr-mtb-genomic-study.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-genomic-study.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-genomic-study",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Genomic_Study",
  "title" : "MII PR MTB Genomic Study",
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
  "description" : "Genomic Study beinhaltet und verweist über GenomicStudyAnalysis auf Details zu den einzelnen Untersuchungen einer NGS-Untersuchung (Sequenzierung, Variant Calling, CNV-Analyse, Fusions-Analysen etc.)",
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
  "baseDefinition" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study",
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
      "id" : "Procedure.extension:genomic-study-analysis",
      "path" : "Procedure.extension",
      "sliceName" : "genomic-study-analysis"
    },
    {
      "id" : "Procedure.extension:genomic-study-analysis.value[x]",
      "path" : "Procedure.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-genomic-study-analysis",
        "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis"]
      }]
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
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    }]
  }
}

```
