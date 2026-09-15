# PatientKimMusterperson-MolecularPathologyReport-1 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-MolecularPathologyReport-1**

## Example DiagnosticReport: PatientKimMusterperson-MolecularPathologyReport-1

-------

**English**

-------

Profile: [MII PR MTB Molecular Pathology Report](StructureDefinition-mii-pr-mtb-molecular-pathology-report.md) version: 2026.0.1

## Pathology synoptic report 

| | |
| :--- | :--- |
| Subject | Kim Musterperson (no stated gender), DoB: 1956-03-14 |

**Report Details**

* **Code**: [HER2 Ag [Presence] in Tissue by Immune stain](Observation-PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu.md)
  * **Value**: 2+
  * **Flags**: Final



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "PatientKimMusterperson-MolecularPathologyReport-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molecular-pathology-report|2026.0.1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "60568-3",
      "display" : "Pathology synoptic report"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "result" : [{
    "reference" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu"
  }]
}

```
