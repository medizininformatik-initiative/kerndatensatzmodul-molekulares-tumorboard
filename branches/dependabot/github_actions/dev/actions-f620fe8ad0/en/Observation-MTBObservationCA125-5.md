# CA 125 Tumor Marker Observation 5 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CA 125 Tumor Marker Observation 5**

## Example Observation: CA 125 Tumor Marker Observation 5

-------

**English**

-------

**status**: Final

**category**: Laboratory studies (set), Laboratory

**code**: Cancer Ag 125 [Units/volume] in Body fluid

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2023-03-24

**value**: 43.7 IU/ml (Details: UCUM code[iU]/ml = '[iU]/ml')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MTBObservationCA125-5",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "26436-6",
      "display" : "Laboratory studies (set)"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11210-2",
      "display" : "Cancer Ag 125 [Units/volume] in Body fluid"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectiveDateTime" : "2023-03-24",
  "valueQuantity" : {
    "value" : 43.7,
    "unit" : "IU/ml",
    "system" : "http://unitsofmeasure.org",
    "code" : "[iU]/ml"
  }
}

```
