# Empfehlung Biopsie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Empfehlung Biopsie**

## Example ServiceRequest: Empfehlung Biopsie

-------

**English**

-------

Profile: [MII PR MTB Biopsie Auftrag](StructureDefinition-mii-pr-mtb-biopsie-auftrag.md) version: 2026.0.1

**status**: Completed

**intent**: Proposal

**code**: Biopsy (procedure)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**reasonReference**: [Observation Cells with cytogenetic abnormality [#] in Blood or Tissue by Molecular genetics method](Observation-mii-exa-mtb-kim-tumorzellgehalt-aszites.md)

**specimen**: [Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)](Specimen-PatientKimMusterperson-AscitesSpecimen-2.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-mtb-kim-rebiopsie-aszites",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag|2026.0.1"]
  },
  "status" : "completed",
  "intent" : "proposal",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "86273004",
      "display" : "Biopsy (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "reasonReference" : [{
    "reference" : "Observation/mii-exa-mtb-kim-tumorzellgehalt-aszites"
  }],
  "specimen" : [{
    "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
  }]
}

```
