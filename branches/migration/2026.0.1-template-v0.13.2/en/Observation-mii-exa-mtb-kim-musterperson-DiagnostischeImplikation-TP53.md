# TP53 Diagnostische Implikation - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TP53 Diagnostische Implikation**

## Example Observation: TP53 Diagnostische Implikation

-------

**English**

-------

Profile: [MII PR MTB Diagnostische Implikation](StructureDefinition-mii-pr-mtb-diagnostische-implikation.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, Genetics

**code**: Diagnostic Implication

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**derivedFrom**: [Observation Genetic variant assessment](Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Genetic variation clinical significance [Imp] | Pathogenic |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnostische-implikation|2026.0.1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "GE"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
      "code" : "diagnostic-implication",
      "display" : "Diagnostic Implication"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "53037-8"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6668-3",
        "display" : "Pathogenic"
      }]
    }
  }]
}

```
