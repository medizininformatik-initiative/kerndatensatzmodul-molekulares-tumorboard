# MII PR MTB WHO Grad Tumor ZNS - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB WHO Grad Tumor ZNS**

## Example Observation: MII PR MTB WHO Grad Tumor ZNS

-------

**English**

-------

Profile: [MII PR MTB WHO Grad Tumor ZNS](StructureDefinition-mii-pr-mtb-who-grad-tumor-zns.md) version: 2026.0.1

**status**: Final

**code**: WHO grade finding for central nervous system tumor

**subject**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

**effective**: 2023-03-01

**value**: World Health Organization grade III central nervous system tumor (finding)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mtb-who-grad-tumor-zns-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-who-grad-tumor-zns|2026.0.1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "396921005",
      "display" : "WHO grade finding for central nervous system tumor"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mtb-patient"
  },
  "effectiveDateTime" : "2023-03-01",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "396924002",
      "display" : "World Health Organization grade III central nervous system tumor (finding)"
    }]
  }
}

```
