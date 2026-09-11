# Adavosertib +/- Carboplatin - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adavosertib +/- Carboplatin**

## Example RequestGroup: Adavosertib +/- Carboplatin

-------

**English**

-------

Profile: [MII PR MTB Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md) version: 2026.0.1

**MII EX MTB Empfehlung Priorität**: 4

**MII EX MTB Empfehlung Evidenzgraduierung**: Predictive value of the biomarker or clinical effectiveness of the drug in a molecularly stratified cohort was demonstrated in a retrospective cohort or case–control study in the same tumor type.

**MII EX MTB Empfehlung Publikation**: `http://www.ncbi.nlm.nih.gov/pubmed`/37236033

**status**: Draft

**intent**: Proposal

**code**: Chemotherapie + zielgerichtete Substanzen

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**authoredOn**: 2023-03-28

### Actions

| | |
| :--- | :--- |
| - | **Resource** |
| * | [MedicationRequest: status = draft; intent = option; medication[x] = Carboplatin; authoredOn = 2023-03-28](MedicationRequest-mii-exa-mtb-medication-request-carboplatin.md) |



## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "mii-exa-mtb-request-group-adavosertib-carboplatin",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination|2026.0.1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
    "valuePositiveInt" : 4
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
        "code" : "m1B"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
    "valueIdentifier" : {
      "system" : "http://www.ncbi.nlm.nih.gov/pubmed",
      "value" : "37236033"
    }
  }],
  "status" : "draft",
  "intent" : "proposal",
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "code" : "CZ",
      "display" : "Chemotherapie + zielgerichtete Substanzen"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "authoredOn" : "2023-03-28",
  "action" : [{
    "resource" : {
      "reference" : "MedicationRequest/mii-exa-mtb-medication-request-carboplatin"
    }
  }]
}

```
