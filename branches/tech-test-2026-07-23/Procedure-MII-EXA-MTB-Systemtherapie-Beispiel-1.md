# Beispiel fuer eine Systemtherapie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel fuer eine Systemtherapie**

## Example Procedure: Beispiel fuer eine Systemtherapie

Profile: [MII PR MTB Systemische Therapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md) version: 2026.0.1

**MII EX Onko Systemische Therapie Intention**: kurativ

**Procedure Caused By**: [MedicationRequest/Example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/MedicationRequest/Example)

**basedOn**: [CarePlan/Example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/CarePlan/Example)

**status**: Completed

**statusReason**: regular-completion

**category**: Chemotherapy (procedure)

**code**: Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie

**subject**: [Patient/Example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/Example)

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
      "reference" : "MedicationRequest/Example"
    }
  }],
  "basedOn" : [{
    "reference" : "CarePlan/Example"
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
    "reference" : "Patient/Example"
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
