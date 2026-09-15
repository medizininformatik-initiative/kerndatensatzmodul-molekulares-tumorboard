# PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2**

## Beispiel Observation: PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2

-------

**German**

-------

Profile: [MII PR MTB Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, A characterization of a given biomarker observation.

**code**: Immune stain study

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**value**: Positive

**specimen**: [Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)](Specimen-PatientKimMusterperson-AscitesSpecimen-2.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Gene studied [ID] | TACSTD2 |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2",
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
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA6576-8",
      "display" : "Positive"
    }]
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
        "code" : "HGNC:11530",
        "display" : "TACSTD2"
      },
      {
        "system" : "http://www.uniprot.org",
        "code" : "P09758",
        "display" : "Tumor-associated calcium signal transducer 2"
      }]
    }
  }]
}

```
