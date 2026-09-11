# PatientKimMusterperson-Procedure-7 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Procedure-7**

## Beispiel Procedure: PatientKimMusterperson-Procedure-7

-------

**German**

-------

Profile: [MII PR Prozedur Procedure](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-prozedur-procedure.html)

**status**: Completed

**category**: Radiographic imaging procedure

**code**: Computertomographie [CT], nativ

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**performed**: 2023-10-22

**bodySite**: Abdomen, Thoracic structure



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "PatientKimMusterperson-Procedure-7",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"]
  },
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363680008",
      "display" : "Radiographic imaging procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2025",
      "code" : "3-20",
      "display" : "Computertomographie [CT], nativ"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "performedDateTime" : "2023-10-22",
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "818983003",
      "display" : "Abdomen"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "51185008",
      "display" : "Thoracic structure"
    }]
  }]
}

```
