# MII PR MTB Studie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Studie**

## Resource Profile: MII PR MTB Studie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Studie |

 
Onkologische Studie 

-------

### Content

This profile describes, as part of the study inclusion recommendation, the study into which inclusion is recommended.

The present profile mainly defines three identifier systems that are frequently used in the context of studies at the Molekulares Tumorboard (molecular tumor board):

* [NCT - NIH Clinical Trial Database](https://clinicaltrials.gov)
* [EudraCT - European Union Drug Regulating Authorities Clinical Trials Database](https://eudract.ema.europa.eu)
* [DRKS - German Clinical Trials Register](https://www.bfarm.de/DE/Das-BfArM/Aufgaben/Deutsches-Register-Klinischer-Studien/_node.html)

The use of the study profile is **optional** - this module formally ends with the study inclusion recommendation.

In future expansion stages, the local study population of a study can, for example, be aggregated via `Group`, and the actual study participation can be used as an evaluation parameter. Furthermore, it can be defined in the future to what extent a study participation can be captured separately in the follow-up.

### Content

Mapping dataset to FHIR

TODO: correct FHIR LM mappings

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/ResearchStudy?_id=12345`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/ResearchStudy?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "identifier" MUST be supported:Examples`GET [base]/ResearchStudy?identifier=DRKS00031294`Usage notes: Further information on searching by "identifier" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "title" MUST be supported:Examples`GET [base]/ResearchStudy?title=Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue`Usage notes: Further information on searching by "title" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).
1. The search parameter "status" MUST be supported:Examples`GET [base]/ResearchStudy?status=active`Usage notes: Further information on searching by "status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "partOf" MUST be supported:Examples`GET [base]/ResearchStudy?partOf=ResearchStudy/researchstudy-test`Usage notes: Further information on searching by "partOf" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "category" MUST be supported:Examples`GET [base]/ResearchStudy?category=interventional`Usage notes: Further information on searching by "category" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "armName" MUST be supported:Examples`GET [base]/ResearchStudy?armName=frontale anodale tDCS (verum condition)`Usage notes: Further information on searching by "arm.name" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).
1. The search parameter "category" MUST be supported:Examples`GET [base]/ResearchStudy?category=Long-COVID bedingter Fatigue`Usage notes: Further information on searching by "extension:Studienfokus" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).
1. The search parameter "keyword" MUST be supported:Examples`GET [base]/ResearchStudy?keyword=COVID`Usage notes: Further information on searching by "extension:Schlagwort" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).
1. The search parameter "label" MUST be supported:Examples`GET [base]/ResearchStudy?label=Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue`Usage notes: Further information on searching by "extension:Label" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).
1. The search parameter "studienregister" MUST be supported:Examples`GET [base]/ResearchStudy?studienregister=Library/example`Usage notes: Further information on searching by "extension:Studienregister" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "rekrutierungsstand-datum" MUST be supported:Examples`GET [base]/ResearchStudy?rekrutierungsstand-datum=2023-02-17`Usage notes: Further information on searching by "extension:Rekrutierung.extension:rekrutierungsstand-datum" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).
1. The search parameter "rekrutierungsstand-genauigkeit" MUST be supported:Examples`GET [base]/ResearchStudy?rekrutierungsstand-genauigkeit=good`Usage notes: Further information on searching by "extension:Rekrutierung.extension:rekrutierungsstand-genauigkeit" can be found in the [FHIR base specification - section "String Search"].(http://hl7.org/fhir/R4/search.html#string).
1. The search parameter "rekrutierungsstand-rekrutierungsstand" MUST be supported:Examples`GET [base]/ResearchStudy?rekrutierungsstand=35`Usage notes: Further information on searching by "extension:Rekrutierung.extension:rekrutierungsstand" can be found in the [FHIR base specification - section "Number Search"](http://hl7.org/fhir/R4/search.html#number).
1. The search parameter "rekrutierungsstand-rekrutierungsziel" MUST be supported:Examples`GET [base]/ResearchStudy?rekrutierungsziel=40`Usage notes: Further information on searching by "extension:Rekrutierung.extension:rekrutierungsziel" can be found in the [FHIR base specification - section "Number Search"](http://hl7.org/fhir/R4/search.html#number).
1. The search parameter "rekrutierungsstand-rekrutierungsstart" MUST be supported:Examples`GET [base]/ResearchStudy?rekrutierungsstart=2023-01-12`Usage notes: Further information on searching by "extension:Rekrutierung.extension:rekrutierungsstart" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

**Examples**

Example: Recommended study for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.md))

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Studieneinschluss Anfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md)
* Examples for this Profile: [ResearchStudy/mii-exa-mtb-study-ccne1](ResearchStudy-mii-exa-mtb-study-ccne1.md), [ResearchStudy/mii-exa-mtb-study-cldn6](ResearchStudy-mii-exa-mtb-study-cldn6.md) and [ResearchStudy/mii-exa-mtb-study-tedova](ResearchStudy-mii-exa-mtb-study-tedova.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-studie.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-studie.csv), [Excel](../StructureDefinition-mii-pr-mtb-studie.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-studie.sch) 



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
  "date" : "2026-09-11T14:44:50+00:00",
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
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
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
