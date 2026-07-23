# MII PR MTB Studie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Studie**

## Resource Profile: MII PR MTB Studie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_PR_MTB_Studie |

 
Onkologische Studie 

**Usages:**

* Refer to this Profile: [MII PR MTB Studieneinschluss Anfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md)
* Examples for this Profile: [ResearchStudy/mii-exa-mtb-study-ccne1](ResearchStudy-mii-exa-mtb-study-ccne1.md), [ResearchStudy/mii-exa-mtb-study-cldn6](ResearchStudy-mii-exa-mtb-study-cldn6.md) and [ResearchStudy/mii-exa-mtb-study-tedova](ResearchStudy-mii-exa-mtb-study-tedova.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-molekulares-tumorboard|current/StructureDefinition/StructureDefinition-mii-pr-mtb-studie.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-pr-mtb-studie.csv), [Excel](StructureDefinition-mii-pr-mtb-studie.xlsx), [Schematron](StructureDefinition-mii-pr-mtb-studie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-studie",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Studie",
  "title" : "MII PR MTB Studie",
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
  "description" : "Onkologische Studie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "ResearchStudy",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ResearchStudy",
      "path" : "ResearchStudy"
    },
    {
      "id" : "ResearchStudy.meta",
      "path" : "ResearchStudy.meta",
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.meta.profile",
      "path" : "ResearchStudy.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.identifier",
      "path" : "ResearchStudy.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice für Identifikator eines Studienregisters bzw. studiendurchführenden Organisation anhand von `system`",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ResearchStudy.identifier:NCT",
      "path" : "ResearchStudy.identifier",
      "sliceName" : "NCT",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ResearchStudy.identifier:NCT.system",
      "path" : "ResearchStudy.identifier.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/modul-mtb/sid/nct"
    },
    {
      "id" : "ResearchStudy.identifier:NCT.value",
      "path" : "ResearchStudy.identifier.value",
      "min" : 1
    },
    {
      "id" : "ResearchStudy.identifier:DRKS",
      "path" : "ResearchStudy.identifier",
      "sliceName" : "DRKS",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ResearchStudy.identifier:DRKS.system",
      "path" : "ResearchStudy.identifier.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/drks"
    },
    {
      "id" : "ResearchStudy.identifier:DRKS.value",
      "path" : "ResearchStudy.identifier.value",
      "min" : 1
    },
    {
      "id" : "ResearchStudy.identifier:EudraCT",
      "path" : "ResearchStudy.identifier",
      "sliceName" : "EudraCT",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ResearchStudy.identifier:EudraCT.system",
      "path" : "ResearchStudy.identifier.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/eudract"
    },
    {
      "id" : "ResearchStudy.identifier:EudraCT.value",
      "path" : "ResearchStudy.identifier.value",
      "min" : 1
    }]
  }
}

```
