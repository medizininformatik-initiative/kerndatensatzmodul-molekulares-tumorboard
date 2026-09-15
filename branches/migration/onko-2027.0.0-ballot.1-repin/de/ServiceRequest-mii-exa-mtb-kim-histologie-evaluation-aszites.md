# Empfehlung Histologie-Evaluation - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Empfehlung Histologie-Evaluation**

## Beispiel ServiceRequest: Empfehlung Histologie-Evaluation

-------

**German**

-------

Profile: [MII PR MTB Histologie-Evaluation Auftrag](StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.md) version: 2026.0.1

**status**: Draft

**intent**: Proposal

**code**: Refer for histology (procedure)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**reasonReference**: [Observation Cells with cytogenetic abnormality [#] in Blood or Tissue by Molecular genetics method](Observation-mii-exa-mtb-kim-tumorzellgehalt-aszites.md)

**specimen**: [Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)](Specimen-PatientKimMusterperson-AscitesSpecimen-2.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-mtb-kim-histologie-evaluation-aszites",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag|2026.0.1"]
  },
  "status" : "draft",
  "intent" : "proposal",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "183825009",
      "display" : "Refer for histology (procedure)"
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
