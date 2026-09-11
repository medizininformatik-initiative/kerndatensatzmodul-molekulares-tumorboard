# MTBChemo1MedicationStatement3 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTBChemo1MedicationStatement3**

## Example MedicationStatement: MTBChemo1MedicationStatement3

-------

**English**

-------

Profile: [MII PR Medikation MedicationStatement](https://medizininformatik-initiative.github.io/kerndatensatzmodul-medikation/2027.0.0-ballot.rc5/StructureDefinition-mii-pr-medikation-medication-statement.html)

**partOf**: [Procedure Chemotherapy](Procedure-MTBChemo1Procedure.md)

**status**: Completed

**medication**: Z3 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2023-03-01



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "MTBChemo1MedicationStatement3",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
  },
  "partOf" : [{
    "reference" : "Procedure/MTBChemo1Procedure"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "text" : "Z3 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectiveDateTime" : "2023-03-01"
}

```
