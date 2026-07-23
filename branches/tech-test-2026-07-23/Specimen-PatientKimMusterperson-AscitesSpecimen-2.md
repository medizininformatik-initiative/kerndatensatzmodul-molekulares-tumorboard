# PatientKimMusterperson-AscitesSpecimen-2 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-AscitesSpecimen-2**

## Example Specimen: PatientKimMusterperson-AscitesSpecimen-2

Profile: [MII PR Onkologie Specimen](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)

**accessionIdentifier**: Z230201/23

**type**: Ascitic fluid specimen (specimen)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2023-02-01 |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "PatientKimMusterperson-AscitesSpecimen-2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen"]
  },
  "accessionIdentifier" : {
    "value" : "Z230201/23"
  },
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "309201001",
      "display" : "Ascitic fluid specimen (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "collection" : {
    "collectedDateTime" : "2023-02-01"
  }
}

```
