# Beispiel fuer eine Systemtherapie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel fuer eine Systemtherapie**

## Example Procedure: Beispiel fuer eine Systemtherapie

-------

**English**

-------

Profile: [MII PR MTB Systemische Therapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md) version: 2026.0.1

**MII EX Onko Systemische Therapie Intention**: kurativ

**Procedure Caused By**: [MedicationRequest: status = active; intent = option; medication[x] = Dabrafenib; authoredOn = 2024-01-01](MedicationRequest-mii-exa-mtb-therapieempfehlung-dabrafenib.md)

**basedOn**: [CarePlan: status = active; intent = plan; category = posttherapeutische Tumorkonferenz (manche Tumore werden nicht operiert); created = 2024-08-09](CarePlan-mii-exa-mtb-therapieplan-kombinationstherapie.md)

**status**: Completed

**statusReason**: regular-completion

**category**: Chemotherapy (procedure)

**code**: Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie

**subject**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

**performed**: 2014-02-12 --> 2014-02-12

**note**: 

> 

Test Text!




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "MII-EXA-MTB-Systemtherapie-Beispiel-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie|2026.0.1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/procedure-causedBy",
    "valueReference" : {
      "reference" : "MedicationRequest/mii-exa-mtb-therapieempfehlung-dabrafenib"
    }
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-mtb-therapieplan-kombinationstherapie"
  }],
  "status" : "completed",
  "statusReason" : {
    "coding" : [{
      "code" : "regular-completion"
    }]
  },
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "367336001",
      "display" : "Chemotherapy (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "code" : "CH"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2023",
      "code" : "8-54",
      "display" : "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mtb-patient"
  },
  "performedPeriod" : {
    "start" : "2014-02-12",
    "end" : "2014-02-12"
  },
  "note" : [{
    "text" : "Test Text!"
  }]
}

```
