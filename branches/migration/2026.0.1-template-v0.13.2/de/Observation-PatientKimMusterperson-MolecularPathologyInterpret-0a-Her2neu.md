# PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu**

## Beispiel Observation: PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu

-------

**German**

-------

Profile: [MII PR MTB Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, A characterization of a given biomarker observation.

**code**: HER2 [Interpretation] in Tissue

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**value**: HER2-low (IHC 2+/ISH negative)

**specimen**: [Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)](Specimen-PatientKimMusterperson-AscitesSpecimen-2.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Gene studied [ID] | ERBB2 |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu",
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
      "code" : "48676-1",
      "display" : "HER2 [Interpretation] in Tissue"
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
      "system" : "http://snomed.info/sct",
      "code" : "1381317004",
      "display" : "Human epidermal growth factor receptor 2 low"
    }],
    "text" : "HER2-low (IHC 2+/ISH negative)"
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
        "code" : "HGNC:3430",
        "display" : "ERBB2"
      }]
    }
  }]
}

```
