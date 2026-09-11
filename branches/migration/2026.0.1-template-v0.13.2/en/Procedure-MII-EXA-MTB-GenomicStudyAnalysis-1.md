# Beispiel fuer einen GenomicStudyAnalysis - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel fuer einen GenomicStudyAnalysis**

## Example Procedure: Beispiel fuer einen GenomicStudyAnalysis

-------

**English**

-------

Profile: [MII PR MTB Genomic Study Analysis](StructureDefinition-mii-pr-mtb-genomic-study-analysis.md) version: 2026.0.1

**Genomic Study Analysis Method Type**: Next-Generation (NGS)/Massively parallel sequencing (MPS)

**Genomic Study Analysis Focus**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

> **Genomic Study Analysis Device**
* device: [Device: manufacturer = Illumina](Device-MII-EXA-MTB-Device-Sequencer-1.md)
* function: Sequenziergerät

> **Genomic Study Analysis Device**
* device: [Device: manufacturer = Illumina](Device-MII-EXA-MTB-Device-SequencingKit-1.md)
* function: Sequenzier-Kit

> **Genomic Study Analysis Device**
* device: [Device: manufacturer = Illumina](Device-MII-EXA-MTB-Device-LibraryPreparation-Kit-1.md)
* function: Library-Preparation Kit

**Genomic Study Analysis Genome Build**: GRCh38

**status**: Completed

**category**: Laboratory

**subject**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "MII-EXA-MTB-GenomicStudyAnalysis-1",
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
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-focus",
    "valueReference" : {
      "reference" : "Patient/mii-exa-mtb-patient"
    }
  },
  {
    "extension" : [{
      "url" : "device",
      "valueReference" : {
        "reference" : "Device/MII-EXA-MTB-Device-Sequencer-1"
      }
    },
    {
      "url" : "function",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-genomicanalysis-devicefunction",
          "code" : "sequencing-device"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-device"
  },
  {
    "extension" : [{
      "url" : "device",
      "valueReference" : {
        "reference" : "Device/MII-EXA-MTB-Device-SequencingKit-1"
      }
    },
    {
      "url" : "function",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-genomicanalysis-devicefunction",
          "code" : "sequencing-kit"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-device"
  },
  {
    "extension" : [{
      "url" : "device",
      "valueReference" : {
        "reference" : "Device/MII-EXA-MTB-Device-LibraryPreparation-Kit-1"
      }
    },
    {
      "url" : "function",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-genomicanalysis-devicefunction",
          "code" : "library-preparation-kit"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-device"
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
    "reference" : "Patient/mii-exa-mtb-patient"
  }
}

```
