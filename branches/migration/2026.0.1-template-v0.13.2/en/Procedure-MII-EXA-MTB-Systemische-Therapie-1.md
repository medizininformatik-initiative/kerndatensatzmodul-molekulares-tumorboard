# 24.06.2023 - 12.10.2023 Mirvetuximab soravtansine - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **24.06.2023 - 12.10.2023 Mirvetuximab soravtansine**

## Example Procedure: 24.06.2023 - 12.10.2023 Mirvetuximab soravtansine

-------

**English**

-------

Profile: [MII PR MTB Systemische Therapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md) version: 2026.0.1

**MII EX Onko Systemische Therapie Intention**: kurativ

**basedOn**: [CarePlan: status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2023-03-28](CarePlan-mii-exa-mtb-kim-musterperson-therapieplan.md)

**status**: Completed

**statusReason**: regular-completion

**category**: Chemotherapy (procedure)

**code**: Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**performed**: 2023-06-24 --> 2023-10-12



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "MII-EXA-MTB-Systemische-Therapie-1",
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
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-mtb-kim-musterperson-therapieplan"
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
    "reference" : "Patient/PatientKimMusterperson"
  },
  "performedPeriod" : {
    "start" : "2023-06-24",
    "end" : "2023-10-12"
  }
}

```
