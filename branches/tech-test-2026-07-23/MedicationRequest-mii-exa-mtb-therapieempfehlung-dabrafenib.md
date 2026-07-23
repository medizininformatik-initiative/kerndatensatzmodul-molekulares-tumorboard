# mii-exa-mtb-therapieempfehlung-dabrafenib - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-mtb-therapieempfehlung-dabrafenib**

## Example MedicationRequest: mii-exa-mtb-therapieempfehlung-dabrafenib

Profile: [MII PR MTB Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-mtb-therapieempfehlung.md) version: 2026.0.1

**status**: Active

**intent**: Option

**medication**: Dabrafenib

**subject**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

**authoredOn**: 2024-01-01

**reasonReference**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md)



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-mtb-therapieempfehlung-dabrafenib",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung|2026.0.1"]
  },
  "status" : "active",
  "intent" : "option",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2025",
      "code" : "L01EC02",
      "display" : "Dabrafenib"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mtb-patient"
  },
  "authoredOn" : "2024-01-01",
  "reasonReference" : [{
    "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
  }]
}

```
