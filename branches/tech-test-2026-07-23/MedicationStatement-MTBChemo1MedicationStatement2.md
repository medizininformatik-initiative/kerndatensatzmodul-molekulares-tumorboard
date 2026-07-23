# MTBChemo1MedicationStatement2 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTBChemo1MedicationStatement2**

## Example MedicationStatement: MTBChemo1MedicationStatement2

Profile: [MII PR Medikation MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement)

**partOf**: [Procedure Chemotherapy](Procedure-MTBChemo1Procedure.md)

**status**: Completed

**medication**: Z2 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2023-02-01



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "MTBChemo1MedicationStatement2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
  },
  "partOf" : [{
    "reference" : "Procedure/MTBChemo1Procedure"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "text" : "Z2 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectiveDateTime" : "2023-02-01"
}

```
