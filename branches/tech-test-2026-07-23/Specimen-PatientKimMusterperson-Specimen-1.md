# PatientKimMusterperson-Specimen-1 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Specimen-1**

## Example Specimen: PatientKimMusterperson-Specimen-1

Profile: [MII PR Patho Specimen](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen)

**identifier**: Z 230201/23

**accessionIdentifier**: Z 230201/23

**status**: Available

**type**: Ascitic fluid specimen

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

### Collections

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Collected[x]** | **Quantity** | **Method** |
| * | 2023-01-02 | 20 mL (Details: UCUM codemL = 'mL') | Percutaneous drainage of ascites |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "PatientKimMusterperson-Specimen-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen"]
  },
  "identifier" : [{
    "value" : "Z 230201/23"
  }],
  "accessionIdentifier" : {
    "value" : "Z 230201/23"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "309201001",
      "display" : "Ascitic fluid specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "collection" : {
    "collectedDateTime" : "2023-01-02",
    "quantity" : {
      "value" : 20,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    },
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "178012008"
      }]
    }
  }
}

```
