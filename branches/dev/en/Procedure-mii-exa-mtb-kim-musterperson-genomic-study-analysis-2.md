# MTB-NGS-Bericht Kim Musterperson HLA Status - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB-NGS-Bericht Kim Musterperson HLA Status**

## Example Procedure: MTB-NGS-Bericht Kim Musterperson HLA Status

-------

**English**

-------

Profile: [MII PR MTB Genomic Study Analysis](StructureDefinition-mii-pr-mtb-genomic-study-analysis.md) version: 2026.0.1

**status**: Completed

**category**: Laboratory

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-mtb-kim-musterperson-genomic-study-analysis-2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis|2026.0.1"]
  },
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
