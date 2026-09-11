# MII PR MTB Molekularer Biomarker - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Molekularer Biomarker**

## Resource Profile: MII PR MTB Molekularer Biomarker 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molekularer-biomarker | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Molekularer_Biomarker |

 
Stellt einen gefundenden Biomarker dar. Das Profil ist auf Basis von https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-molecular-biomarker.html nachgebaut. 

-------

### Content

This abstract profile describes a molecular biomarker in the NGS-Bericht (NGS report). In terms of content, it is based on the molecular biomarker definition of the Clinical Genomic Reporting Implementation Guide STU3, without directly inheriting from it in the commenting version. It is the basis both for the gene-spanning biomarkers such as HRD, MSI, TMB and BRCAness, and for immunohistochemistry and in-situ hybridization.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Observation?_id=12345`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molekularer-biomarker`Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "focus" MUST be supported:Examples:`GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose`Usage notes: Further information on searching by "focus" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

-------

**Usages:**

* Derived from this Profile: [MII PR Biomarker Her2 Status](StructureDefinition-mii-pr-mtb-biomarker-her2-status.md), [MII PR MTB BRCAness](StructureDefinition-mii-pr-mtb-brcaness.md), [MII PR MTB HRD Score](StructureDefinition-mii-pr-mtb-hrd-score.md), [MII PR MTB Immunohistochemistry Mismatch Repair Status](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.md)... Show 5 more, [MII PR MTB Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md), [MII PR MTB In Situ Hybridization](StructureDefinition-mii-pr-mtb-insituhybridization.md), [MII PR MTB Mikrosatelliteninstabilität](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.md), [MII PR MTB Mutationslast](StructureDefinition-mii-pr-mtb-mutationslast.md) and [MII PR MTB Ploidie](StructureDefinition-mii-pr-mtb-ploidie.md)
* Refer to this Profile: [MII PR MTB NGS-Bericht](StructureDefinition-mii-pr-mtb-ngs-bericht.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-molekularer-biomarker.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-molekularer-biomarker.csv), [Excel](../StructureDefinition-mii-pr-mtb-molekularer-biomarker.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-molekularer-biomarker.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-molekularer-biomarker",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molekularer-biomarker",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Molekularer_Biomarker",
  "title" : "MII PR MTB Molekularer Biomarker",
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
  "description" : "Stellt einen gefundenden Biomarker dar. Das Profil ist auf Basis von https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-molecular-biomarker.html nachgebaut.",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-molekularer-biomarker",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.meta",
      "path" : "Observation.meta",
      "mustSupport" : true
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-molekulare-biomarker"
      }
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    }]
  }
}

```
