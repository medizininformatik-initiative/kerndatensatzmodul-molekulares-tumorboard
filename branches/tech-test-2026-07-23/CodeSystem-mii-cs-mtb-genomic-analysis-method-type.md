# MII CS Genomic Analysis Method Type - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Genomic Analysis Method Type**

## CodeSystem: MII CS Genomic Analysis Method Type 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-genomic-analysis-method-type | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_MTB_Genomic_Analysis_Method_Type |

 
Codesystem, welches die verwendeten NGS-Methodiken gemäß dnpm-Kodierung high-level auflistet 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_MTB_Genomic_Analysis_Method_Type](ValueSet-mii-vs-mtb-genomic-analysis-method-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-genomic-analysis-method-type",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-genomic-analysis-method-type",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Genomic_Analysis_Method_Type",
  "title" : "MII CS Genomic Analysis Method Type",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-23T12:42:46+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Codesystem, welches die verwendeten NGS-Methodiken gemäß dnpm-Kodierung high-level auflistet",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "tngs",
    "display" : "Targeted NGS"
  },
  {
    "code" : "gene-panel",
    "display" : "Genpanel"
  },
  {
    "code" : "fusion-detection-panel",
    "display" : "Fusions-Detektions-Panel"
  },
  {
    "code" : "whole-genom-sequencing",
    "display" : "Whole Genom Sequencing (WGS)"
  },
  {
    "code" : "whole-exom-sequencing",
    "display" : "Whole Exom Sequencing (WES)"
  },
  {
    "code" : "rnaseq-transcriptomics",
    "display" : "RNA Sequencing (RNA-Seq)"
  }]
}

```
