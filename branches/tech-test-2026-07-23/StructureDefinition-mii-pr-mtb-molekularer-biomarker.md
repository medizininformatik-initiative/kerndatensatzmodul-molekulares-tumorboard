# MII PR MTB Molekularer Biomarker - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Molekularer Biomarker**

## Resource Profile: MII PR MTB Molekularer Biomarker 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molekularer-biomarker | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_PR_MTB_Molekularer_Biomarker |

 
Stellt einen gefundenden Biomarker dar. Das Profil ist auf Basis von https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-molecular-biomarker.html nachgebaut. 

**Usages:**

* Derived from this Profile: [MII PR Biomarker Her2 Status](StructureDefinition-mii-pr-mtb-biomarker-her2-status.md), [MII PR MTB BRCAness](StructureDefinition-mii-pr-mtb-brcaness.md), [MII PR MTB HRD Score](StructureDefinition-mii-pr-mtb-hrd-score.md), [MII PR MTB Immunohistochemistry Mismatch Repair Status](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.md)... Show 5 more, [MII PR MTB Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md), [MII PR MTB In Situ Hybridization](StructureDefinition-mii-pr-mtb-insituhybridization.md), [MII PR MTB Mikrosatelliteninstabilität](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.md), [MII PR MTB Mutationslast](StructureDefinition-mii-pr-mtb-mutationslast.md) and [MII PR MTB Ploidie](StructureDefinition-mii-pr-mtb-ploidie.md)
* Refer to this Profile: [MII PR MTB NGS-Bericht](StructureDefinition-mii-pr-mtb-ngs-bericht.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-molekulares-tumorboard|current/StructureDefinition/StructureDefinition-mii-pr-mtb-molekularer-biomarker.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-pr-mtb-molekularer-biomarker.csv), [Excel](StructureDefinition-mii-pr-mtb-molekularer-biomarker.xlsx), [Schematron](StructureDefinition-mii-pr-mtb-molekularer-biomarker.sch) 



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
  "date" : "2026-07-23T12:42:46+00:00",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
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
