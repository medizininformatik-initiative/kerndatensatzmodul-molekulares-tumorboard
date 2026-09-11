# PatientKimMusterperson-MolecularPathologyObservation-3-WT1 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-MolecularPathologyObservation-3-WT1**

## Example Observation: PatientKimMusterperson-MolecularPathologyObservation-3-WT1

-------

**English**

-------

Profile: [MII PR MTB Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, A characterization of a given biomarker observation.

**code**: Observation using immunohistochemistry (observable entity)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**value**: Tumorzellen durchgehend nukleär für WT1

**bodySite**: Nukleär

**specimen**: [Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)](Specimen-PatientKimMusterperson-AscitesSpecimen-2.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Gene studied [ID] | WT1 |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-MolecularPathologyObservation-3-WT1",
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
      "system" : "http://snomed.info/sct",
      "code" : "1234806008",
      "display" : "Observation using immunohistochemistry (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA6576-8",
      "display" : "Positive"
    }],
    "text" : "Tumorzellen durchgehend nukleär für WT1"
  },
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "84640000",
      "display" : "Nucleus (cell structure)"
    }],
    "text" : "Nukleär"
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
        "code" : "HGNC:12796",
        "display" : "WT1"
      },
      {
        "system" : "http://loinc.org",
        "code" : "LP65352-4",
        "display" : "WT-1 Ag"
      }]
    }
  }]
}

```
