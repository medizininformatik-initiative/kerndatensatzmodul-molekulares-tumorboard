# Beispiel fuer BRAF Mutation MTB Diagnostische Implikation - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel fuer BRAF Mutation MTB Diagnostische Implikation**

## Example Observation: Beispiel fuer BRAF Mutation MTB Diagnostische Implikation

-------

**English**

-------

Profile: [MII PR MTB Diagnostische Implikation](StructureDefinition-mii-pr-mtb-diagnostische-implikation.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, Genetics

**code**: Diagnostic Implication

**subject**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

**performer**: [Practitioner/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Practitioner/example)

**derivedFrom**: [Observation/EinfacheVarianteExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/EinfacheVarianteExample)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Genetic variation clinical significance [Imp] | Pathogenic |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MII-EXA-MTB-Diagnostische-Implikation-1",
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
    "reference" : "Patient/mii-exa-mtb-patient"
  },
  "performer" : [{
    "reference" : "Practitioner/example"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/EinfacheVarianteExample"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "53037-8",
        "display" : "Genetic variation clinical significance [Imp]"
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
