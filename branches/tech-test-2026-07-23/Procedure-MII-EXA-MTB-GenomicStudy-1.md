# Beispiel fuer einen GenomicStudy - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel fuer einen GenomicStudy**

## Example Procedure: Beispiel fuer einen GenomicStudy

Profile: [MII PR MTB Genomic Study](StructureDefinition-mii-pr-mtb-genomic-study.md) version: 2026.0.1

**Genomic Study Analysis Extension**: 

**Exception Generating Narrative: Cannot invoke "org.hl7.fhir.r5.renderers.utils.ResourceWrapper.fhirType()" because "resource" is null **



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "MII-EXA-MTB-GenomicStudy-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study|2026.0.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext",
    "valueReference" : {
      "reference" : "Procedure/MII-EXA-MTB-GenomicStudyAnalysis-1"
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
    "reference" : "Patient/example"
  },
  "reasonReference" : [{
    "reference" : "Condition/Primary_Tumor"
  }]
}

```
