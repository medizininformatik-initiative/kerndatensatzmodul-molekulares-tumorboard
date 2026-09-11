# PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra**

## Example Observation: PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra

-------

**English**

-------

Profile: [MII PR MTB Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, A characterization of a given biomarker observation.

**code**: Immune stain study

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**value**: 70 % (Details: UCUM code{/100} = '{/100}')

**specimen**: [Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)](Specimen-PatientKimMusterperson-AscitesSpecimen-2.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Gene studied [ID] | FOLR1 |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry|2026.0.1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  },
  {
    "coding" : [{
      "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
      "code" : "biomarker-category"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "55229-9",
      "display" : "Immune stain study"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "1234806008",
      "display" : "Observation using immunohistochemistry (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "valueQuantity" : {
    "value" : 70,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "{/100}"
  },
  "specimen" : {
    "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48018-6",
        "display" : "Gene studied [ID]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.genenames.org/geneId",
        "code" : "HGNC:3791",
        "display" : "FOLR1"
      },
      {
        "system" : "http://loinc.org",
        "code" : "LP440974-6",
        "display" : "Folate receptor alpha"
      }]
    }
  }]
}

```
