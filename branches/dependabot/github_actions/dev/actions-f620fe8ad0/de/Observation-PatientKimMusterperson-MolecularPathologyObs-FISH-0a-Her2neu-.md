# Example In Situ Hybridization HER2/ERBB2 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Example In Situ Hybridization HER2/ERBB2**

## Beispiel Observation: Example In Situ Hybridization HER2/ERBB2

-------

**German**

-------

Profile: [MII PR MTB In Situ Hybridization HER2](StructureDefinition-mii-pr-mtb-insituhybridization-her2.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, A characterization of a given biomarker observation.

**code**: ERBB2 gene copy number/Chromosome 17 copy number in Tissue by FISH

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**value**: 1.2/1

**interpretation**: Negative (qualifier value)

**method**: Fluorescence in situ hybridization technique (qualifier value)

**specimen**: [Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)](Specimen-PatientKimMusterperson-AscitesSpecimen-2.md)

> **component****code**: ERBB2 gene copy number/nucleus in Tissue by FISH**value**: 2.4 #

> **component****code**: Chromosome 17 copy number/nucleus in Tissue by FISH**value**: 2 #

> **component****code**: Cells counted [#]**value**: 50 #



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-MolecularPathologyObs-FISH-0a-Her2neu-",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization-her2|2026.0.1"]
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
      "code" : "49683-6",
      "display" : "ERBB2 gene copy number/Chromosome 17 copy number in Tissue by FISH"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "51864006",
      "display" : "Nucleic acid hybridization, function (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "valueRatio" : {
    "numerator" : {
      "value" : 1.2
    },
    "denominator" : {
      "value" : 1
    }
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "260385009",
      "display" : "Negative (qualifier value)"
    }]
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1303773004",
      "display" : "Fluorescence in situ hybridization technique (qualifier value)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "74860-8",
        "display" : "ERBB2 gene copy number/nucleus in Tissue by FISH"
      }]
    },
    "valueQuantity" : {
      "value" : 2.4,
      "unit" : "#"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "74861-6",
        "display" : "Chromosome 17 copy number/nucleus in Tissue by FISH"
      }]
    },
    "valueQuantity" : {
      "value" : 2,
      "unit" : "#"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "62361-1",
        "display" : "Cells counted [#]"
      }]
    },
    "valueQuantity" : {
      "value" : 50,
      "unit" : "#"
    }
  }]
}

```
