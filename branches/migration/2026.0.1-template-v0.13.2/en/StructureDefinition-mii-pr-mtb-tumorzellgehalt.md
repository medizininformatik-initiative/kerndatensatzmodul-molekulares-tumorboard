# MII PR MTB Tumorzellgehalt - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Tumorzellgehalt**

## Resource Profile: MII PR MTB Tumorzellgehalt 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Tumorzellgehalt |

 
Bestimmter Tumorzellgehalt 

-------

### Content

This profile describes the tumor cell content determined **bioinformatically** or **histologically**.

Depending on the methodology, this can either be done as part of a bioinformatic NGS analysis, or classically by light microscopic examination in pathology. The type of determination is coded under `method`.

A high tumor cell content is decisive for the quality of the sequencing process and a sufficiently precise detection of allele frequencies and variants.

### Links to other resources

The tumor cell content can be linked from both an NGS report and a molecular pathology report via `DiagnosticReport.result`. In addition, a rebiopsy can link to a tumor cell content Observation via `ServiceRequest.supportingInfo` if the reason for the rebiopsy is that the tumor cell content of the original specimen was too low.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, also in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Observation?_id=12345`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "identifier" MUST be supported:Examples:`GET [base]/Observation?identifier=123456`Usage notes: Further information on searching for "identifier" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "based-on" MUST be supported:Examples:`GET [base]/Observation?based-on=ServiceRequest/example`Usage notes: Further information on searching for "based-on" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "status" MUST be supported:Examples:`GET [base]/Observation?status=final`Usage notes: Further information on searching for "status" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "category" MUST be supported:Examples:`GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory`Usage notes: Further information on searching for "category" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Observation?code=http://loinc.org|93356-4`Usage notes: Further information on searching for "code" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Observation?subject=Patient/example`Usage notes: Further information on searching for "subject" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "date" MUST be supported:Examples:`GET [base]/Observation?date=eq2021-06-10`Usage notes: Further information on searching for "date" can be found in the [FHIR base specification - section "Date Search"](https://hl7.org/fhir/R4/search.html#date).
1. The search parameter "component-value-quantity" MUST be supported:Examples:`GET [base]/Observation?component-value-quantity=le20|http://unitsofmeasure.org|%`Usage notes: Further information on searching for "component-value-quantity" can be found in the [FHIR base specification - section "Quantity Search"](https://hl7.org/fhir/R4/search.html#quantity).
1. The search parameter "body-site" MUST be supported:Examples:`GET [base]/Observation?body-site=http://snomed.info/sct|430304001`Usage notes: Further information on searching for "body-site" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "method" MUST be supported:Examples:`GET [base]/Observation?method=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-bestimmungsmethode-tumorzellgehalt|histologic`Usage notes: Further information on searching for "method" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "specimen" MUST be supported:Examples:`GET [base]/Observation?specimen=Specimen/example`Usage notes: Further information on searching for "specimen" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "has-member" MUST be supported:Examples:`GET [base]/Observation?has-member=Observation/example`Usage notes: Further information on searching for "has-member" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "derived-from" MUST be supported:Examples:`GET [base]/Observation?derived-from=ImagingStudy/example`Usage notes: Further information on searching for "derived-from" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

Example: decision on the MTB case for Kim Musterperson dated 2023-03-28 (see [scenarios](guidance.md))

[mii-cs-mtb-bestimmungsmethode-tumorzellgehalt](CodeSystem-mii-cs-mtb-bestimmungsmethode-tumorzellgehalt.md)

**Usages:**

* Refer to this Profile: [MII PR MTB Biopsie Auftrag](StructureDefinition-mii-pr-mtb-biopsie-auftrag.md) and [MII PR MTB Histologie-Evaluation Auftrag](StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.md)
* Examples for this Profile: [Observation/mii-exa-mtb-kim-tumorzellgehalt-aszites](Observation-mii-exa-mtb-kim-tumorzellgehalt-aszites.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-tumorzellgehalt.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-tumorzellgehalt.csv), [Excel](../StructureDefinition-mii-pr-mtb-tumorzellgehalt.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-tumorzellgehalt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-tumorzellgehalt",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Tumorzellgehalt",
  "title" : "MII PR MTB Tumorzellgehalt",
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
  "description" : "Bestimmter Tumorzellgehalt",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
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
      "id" : "Observation.category.coding",
      "path" : "Observation.category.coding",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
        "code" : "laboratory",
        "display" : "Laboratory"
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "93356-4",
          "display" : "Cells with cytogenetic abnormality [#] in Blood or Tissue by Molecular genetics method"
        }]
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].value",
      "path" : "Observation.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "patternString" : "percent"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "patternCode" : "%"
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-bestimmungsmethode-tumorzellgehalt"
      }
    }]
  }
}

```
