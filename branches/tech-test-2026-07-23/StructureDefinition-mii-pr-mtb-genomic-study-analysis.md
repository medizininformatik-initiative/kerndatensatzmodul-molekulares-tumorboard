# MII PR MTB Genomic Study Analysis - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Genomic Study Analysis**

## Resource Profile: MII PR MTB Genomic Study Analysis 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_PR_MTB_Genomic_Study_Analysis |

 
Die Genomic Study Analysis beschreibt die Methodik einer bestimmten molekulargenetischen Untersuchung. 

**Usages:**

* Refer to this Profile: [MII PR MTB Genomic Study](StructureDefinition-mii-pr-mtb-genomic-study.md)
* Examples for this Profile: [Procedure/MII-EXA-MTB-GenomicStudyAnalysis-1](Procedure-MII-EXA-MTB-GenomicStudyAnalysis-1.md), [Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-1](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-1.md), [Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-2](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-2.md) and [Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-3](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-molekulares-tumorboard|current/StructureDefinition/StructureDefinition-mii-pr-mtb-genomic-study-analysis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-pr-mtb-genomic-study-analysis.csv), [Excel](StructureDefinition-mii-pr-mtb-genomic-study-analysis.xlsx), [Schematron](StructureDefinition-mii-pr-mtb-genomic-study-analysis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-genomic-study-analysis",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Genomic_Study_Analysis",
  "title" : "MII PR MTB Genomic Study Analysis",
  "status" : "active",
  "date" : "2026-07-23T12:42:46+00:00",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
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
