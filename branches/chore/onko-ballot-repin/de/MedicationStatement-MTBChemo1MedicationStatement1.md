# MTBChemo1MedicationStatement1 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MTBChemo1MedicationStatement1**

## Beispiel MedicationStatement: MTBChemo1MedicationStatement1

-------

**German**

-------

Profile: [MII PR Medikation MedicationStatement](https://medizininformatik-initiative.github.io/kerndatensatzmodul-medikation/2027.0.0-ballot.rc5/StructureDefinition-mii-pr-medikation-medication-statement.html)

**partOf**: [Procedure Chemotherapy](Procedure-MTBChemo1Procedure.md)

**status**: Completed

**medication**: Z1 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2023-01-04



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "MTBChemo1MedicationStatement1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
  },
  "partOf" : [{
    "reference" : "Procedure/MTBChemo1Procedure"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "text" : "Z1 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectiveDateTime" : "2023-01-04"
}

```
