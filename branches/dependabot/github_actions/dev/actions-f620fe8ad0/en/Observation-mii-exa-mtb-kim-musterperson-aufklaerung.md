# Einwilligung zur MTB-Besprechung Kim Musterperson - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Einwilligung zur MTB-Besprechung Kim Musterperson**

## Example Observation: Einwilligung zur MTB-Besprechung Kim Musterperson

-------

**English**

-------

Profile: [MII PR MTB Consent](StructureDefinition-mii-pr-mtb-consent-given.md) version: 2026.0.1

**status**: Final

**code**: Was consent given

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2023-01-02

**value**: Yes (qualifier value)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mtb-kim-musterperson-aufklaerung",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-consent-given|2026.0.1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "105511-0",
      "display" : "Was consent given"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectiveDateTime" : "2023-01-02",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "373066001",
      "display" : "Yes (qualifier value)"
    }]
  }
}

```
