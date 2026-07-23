# Empfehlung Human-genetische Beratung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Empfehlung Human-genetische Beratung**

## Example ServiceRequest: Empfehlung Human-genetische Beratung

Profile: [MII PR MTB Human-genetische Beratung Auftrag](StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.md) version: 2026.0.1

**status**: Completed

**intent**: Proposal

**code**: Genetic consultation (procedure)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**reasonCode**: Zweittumor

**specimen**: [Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)](Specimen-PatientKimMusterperson-AscitesSpecimen-2.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-mtb-kim-humangenetische-beratung-aszites",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag|2026.0.1"]
  },
  "status" : "completed",
  "intent" : "proposal",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "788339009",
      "display" : "Genetic consultation (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-auftrag-begruendung",
      "code" : "secondary-tumor"
    }]
  }],
  "specimen" : [{
    "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
  }]
}

```
