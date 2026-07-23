# MTB-NGS-Bericht Kim Musterperson - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB-NGS-Bericht Kim Musterperson**

## Example Procedure: MTB-NGS-Bericht Kim Musterperson

Profile: [MII PR MTB Genomic Study](StructureDefinition-mii-pr-mtb-genomic-study.md) version: 2026.0.1

**Genomic Study Analysis Extension**: [Procedure: extension = Next-Generation (NGS)/Massively parallel sequencing (MPS),SNV,SNV,GRCh38; status = completed; category = Laboratory](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-1.md)

**Genomic Study Analysis Extension**: [Procedure: status = completed; category = Laboratory](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-2.md)

**Genomic Study Analysis Extension**: [Procedure: extension = Immunohistochemistry; status = completed; category = Laboratory](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-3.md)

**status**: Completed

**category**: Laboratory

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-mtb-kim-musterperson-genomic-study",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study|2026.0.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext",
    "valueReference" : {
      "reference" : "Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-1"
    }
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext",
    "valueReference" : {
      "reference" : "Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-2"
    }
  },
  {
    "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext",
    "valueReference" : {
      "reference" : "Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-3"
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
