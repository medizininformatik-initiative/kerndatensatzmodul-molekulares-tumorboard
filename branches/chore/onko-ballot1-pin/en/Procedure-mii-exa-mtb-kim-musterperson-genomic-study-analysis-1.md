# MTB-NGS-Bericht Kim Musterperson - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB-NGS-Bericht Kim Musterperson**

## Example Procedure: MTB-NGS-Bericht Kim Musterperson

-------

**English**

-------

Profile: [MII PR MTB Genomic Study Analysis](StructureDefinition-mii-pr-mtb-genomic-study-analysis.md) version: 2026.0.1

**Genomic Study Analysis Method Type**: Next-Generation (NGS)/Massively parallel sequencing (MPS)

**Genomic Study Analysis Change Type**: SNV

**Genomic Study Analysis Change Type**: SNV

**Genomic Study Analysis Genome Build**: GRCh38

**status**: Completed

**category**: Laboratory

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-mtb-kim-musterperson-genomic-study-analysis-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis|2026.0.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs",
        "code" : "ngs-mps",
        "display" : "Next-Generation (NGS)/Massively parallel sequencing (MPS)"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-change-type",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.sequenceontology.org",
        "code" : "SO:0001483",
        "display" : "SNV"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-change-type",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.sequenceontology.org",
        "code" : "SO:0001483",
        "display" : "SNV"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-genome-build",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA26806-2",
        "display" : "GRCh38"
      }]
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  }
}

```
