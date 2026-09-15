# mii-exa-mtb-therapieplan-kombinationstherapie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-mtb-therapieplan-kombinationstherapie**

## Example CarePlan: mii-exa-mtb-therapieplan-kombinationstherapie

-------

**English**

-------

Profile: [MII PR MTB Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md) version: 2026.0.1

**status**: Active

**intent**: Plan

**category**: posttherapeutische Tumorkonferenz (manche Tumore werden nicht operiert)

**subject**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

**created**: 2024-08-09

### Activities

| | |
| :--- | :--- |
| - | **Reference** |
| * | [RequestGroup: extension = 1,https://doi.org#10.1002/gcc.23222,Case study or single unusual responder indicates the biomarker is associated with response to the drug in the same tumor type.; status = active; intent = proposal; authoredOn = 2024-01-01](RequestGroup-mii-exa-mtb-therapieempfehlung-kombinationstherapie.md) |



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-mtb-therapieplan-kombinationstherapie",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan|2026.0.1"]
  },
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "postth"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-mtb-patient"
  },
  "created" : "2024-08-09",
  "activity" : [{
    "reference" : {
      "reference" : "RequestGroup/mii-exa-mtb-therapieempfehlung-kombinationstherapie"
    }
  }]
}

```
