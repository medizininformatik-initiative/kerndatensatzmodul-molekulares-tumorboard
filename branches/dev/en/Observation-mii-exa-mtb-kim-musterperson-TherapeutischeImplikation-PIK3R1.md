# PIK3R1 Therapeutische Implikation - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PIK3R1 Therapeutische Implikation**

## Example Observation: PIK3R1 Therapeutische Implikation

-------

**English**

-------

Profile: [MII PR MTB Therapeutische Implikation](StructureDefinition-mii-pr-mtb-therapeutische-implikation.md) version: 2026.0.1

**MII EX MTB Empfehlung Evidenzgraduierung**: Preclinical data (in vitro, in vivo models or functional genomics studies) demonstrate that the biomarker predicts response to a specific drug treatment, supported by scientific rationale.

**status**: Final

**category**: Laboratory, Genetics

**code**: Therapeutic Implication

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**derivedFrom**: [Observation Genetic variant assessment](Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1.md)

> **component****code**: Conclusion Text**value**: Ausweislich praeklinischer Daten liegt ein Ansprechen auf MEK-Inhibition nahe (PMID: 31209687, EL m3).

> **component****code**: Medication assessed [ID]**value**: Mitogen-aktivierte Proteinkinase (MEK)-Inhibitoren



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapeutische-implikation|2026.0.1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
        "code" : "m3"
      }]
    }
  }],
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
      "code" : "therapeutic-implication",
      "display" : "Therapeutic Implication"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
        "code" : "conclusion-string"
      }]
    },
    "valueString" : "Ausweislich praeklinischer Daten liegt ein Ansprechen auf MEK-Inhibition nahe (PMID: 31209687, EL m3)."
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "51963-7",
        "display" : "Medication assessed [ID]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/bfarm/atc",
        "code" : "L01EE",
        "display" : "Mitogen-aktivierte Proteinkinase (MEK)-Inhibitoren"
      }]
    }
  }]
}

```
