# Lunresertib + Camonsertib - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lunresertib + Camonsertib**

## Example RequestGroup: Lunresertib + Camonsertib

-------

**English**

-------

Profile: [MII PR MTB Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md) version: 2026.0.1

**MII EX MTB Empfehlung Priorität**: 5

**MII EX MTB Empfehlung Evidenzgraduierung**: Predictive value of the biomarker or clinical effectiveness of the drug in a molecularly stratified cohort was demonstrated in a retrospective cohort or case–control study in the same tumor type.

**MII EX MTB Empfehlung Publikation**: `http://doi.org`/10.1158/1535-7163.TARG-23-PR008

**status**: Draft

**intent**: Proposal

**code**: zielgerichtete Substanzen

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**authoredOn**: 2023-03-28

### Actions

| | |
| :--- | :--- |
| - | **Resource** |
| * | [MedicationRequest: status = draft; intent = option; medication[x] = CAMONSERTIB; authoredOn = 2023-03-28](MedicationRequest-mii-exa-mtb-medication-request-camonsertib.md) |



## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "mii-exa-mtb-request-group-lunresertib-camonsertib",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination|2026.0.1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
    "valuePositiveInt" : 5
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
        "code" : "m1B"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
    "valueIdentifier" : {
      "system" : "http://doi.org",
      "value" : "10.1158/1535-7163.TARG-23-PR008"
    }
  }],
  "status" : "draft",
  "intent" : "proposal",
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "code" : "ZS",
      "display" : "zielgerichtete Substanzen"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "authoredOn" : "2023-03-28",
  "action" : [{
    "resource" : {
      "reference" : "MedicationRequest/mii-exa-mtb-medication-request-camonsertib"
    }
  }]
}

```
