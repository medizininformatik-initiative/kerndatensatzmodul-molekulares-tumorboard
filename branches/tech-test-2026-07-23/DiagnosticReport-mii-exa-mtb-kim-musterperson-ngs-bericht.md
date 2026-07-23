# MTB-NGS-Bericht Kim Musterperson - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB-NGS-Bericht Kim Musterperson**

## Example DiagnosticReport: MTB-NGS-Bericht Kim Musterperson

Profile: [MII PR MTB NGS-Bericht](StructureDefinition-mii-pr-mtb-ngs-bericht.md) version: 2026.0.1

## Genetic analysis report (Genetics) 

| | |
| :--- | :--- |
| Subject | Kim Musterperson (no stated gender), DoB: 1956-03-14 |
| Reported | 2023-03-28 00:00:00+0000 |

**Report Details**

* **Code**: [Genetic variant assessment](Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53.md)
  * **Value**: Present
  * **Flags**: Final
* **Code**: [Genetic variant assessment](Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1.md)
  * **Value**: Present
  * **Flags**: Final
* **Code**: [Genetic variant assessment](Observation-mii-exa-mtb-kim-musterperson-CNVariante-CCNE1.md)
  * **Value**: Present
  * **Flags**: Final



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-mtb-kim-musterperson-ngs-bericht",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht|2026.0.1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "GE",
      "display" : "Genetics"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "51969-4",
      "display" : "Genetic analysis report"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "issued" : "2023-03-28T00:00:00.000Z",
  "specimen" : [{
    "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53"
  },
  {
    "reference" : "Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1"
  },
  {
    "reference" : "Observation/mii-exa-mtb-kim-musterperson-CNVariante-CCNE1"
  }]
}

```
