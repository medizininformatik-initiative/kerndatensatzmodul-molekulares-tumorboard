# mii-exa-mtb-therapieempfehlung-kombinationstherapie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-mtb-therapieempfehlung-kombinationstherapie**

## Beispiel RequestGroup: mii-exa-mtb-therapieempfehlung-kombinationstherapie

-------

**German**

-------

Profile: [MII PR MTB Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md) version: 2026.0.1

**MII EX MTB Empfehlung Priorität**: 1

**MII EX MTB Empfehlung Publikation**: `https://doi.org`/10.1002/gcc.23222

**MII EX MTB Empfehlung Evidenzgraduierung**: m1C

**status**: Active

**intent**: Proposal

**subject**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

**authoredOn**: 2024-01-01

> **action****title**: Therapieempfehlung für Dabrafenib**resource**: [MedicationRequest: status = active; intent = option; medication[x] = Dabrafenib; authoredOn = 2024-01-01](MedicationRequest-mii-exa-mtb-therapieempfehlung-dabrafenib.md)

> **action****title**: Therapieempfehlung für Trametinib**resource**: [MedicationRequest: status = active; intent = option; medication[x] = Trametinib; authoredOn = 2024-01-01](MedicationRequest-mii-exa-mtb-therapieempfehlung-trametinib.md)



## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "mii-exa-mtb-therapieempfehlung-kombinationstherapie",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination|2026.0.1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
    "valuePositiveInt" : 1
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
    "valueIdentifier" : {
      "system" : "https://doi.org",
      "value" : "10.1002/gcc.23222"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
        "code" : "m1C"
      }]
    }
  }],
  "status" : "active",
  "intent" : "proposal",
  "subject" : {
    "reference" : "Patient/mii-exa-mtb-patient"
  },
  "authoredOn" : "2024-01-01",
  "action" : [{
    "title" : "Therapieempfehlung für Dabrafenib",
    "resource" : {
      "reference" : "MedicationRequest/mii-exa-mtb-therapieempfehlung-dabrafenib"
    }
  },
  {
    "title" : "Therapieempfehlung für Trametinib",
    "resource" : {
      "reference" : "MedicationRequest/mii-exa-mtb-therapieempfehlung-trametinib"
    }
  }]
}

```
