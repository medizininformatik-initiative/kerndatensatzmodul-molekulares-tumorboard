# Cobimetinib - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cobimetinib**

## Example MedicationRequest: Cobimetinib

-------

**English**

-------

Profile: [MII PR MTB Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-mtb-therapieempfehlung.md) version: 2026.0.1

**MII EX MTB Empfehlung Priorität**: 6

**MII EX MTB Empfehlung Evidenzgraduierung**: Preclinical data (in vitro, in vivo models or functional genomics studies) demonstrate that the biomarker predicts response to a specific drug treatment, supported by scientific rationale.

**MII EX MTB Empfehlung Publikation**: `http://www.ncbi.nlm.nih.gov/pubmed`/31209687

**status**: Draft

**intent**: Option

**medication**: COBIMETINIB

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**authoredOn**: 2023-03-28

**reasonReference**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md)



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-mtb-medication-request-cobimetinib",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung|2026.0.1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
    "valuePositiveInt" : 6
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
        "code" : "m3"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
    "valueIdentifier" : {
      "system" : "http://www.ncbi.nlm.nih.gov/pubmed",
      "value" : "31209687"
    }
  }],
  "status" : "draft",
  "intent" : "option",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fdasis.nlm.nih.gov",
      "code" : "ER29L26N1X",
      "display" : "COBIMETINIB"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "authoredOn" : "2023-03-28",
  "reasonReference" : [{
    "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
  }]
}

```
