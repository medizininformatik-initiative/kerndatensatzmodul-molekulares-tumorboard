# MTBChemo1MedicationStatement2-1 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTBChemo1MedicationStatement2-1**

## Example MedicationStatement: MTBChemo1MedicationStatement2-1

-------

**English**

-------

Profile: [MII PR Onkologie Systemische Therapie Medikation](https://medizininformatik-initiative.github.io/kerndatensatzmodul-onkologie/2027.0.0-ballot.1/StructureDefinition-mii-pr-onko-systemische-therapie-medikation.html)

**partOf**: 

* [Procedure 367336001](Procedure-MTBChemo1Procedure.md)
* [MedicationStatement: status = completed; medication[x] = ; effective[x] = 2023-02-01](MedicationStatement-MTBChemo1MedicationStatement2.md)

**status**: Completed

**medication**: L01XA02

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2023-02-01

**note**: 

> 

Z2 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1


> **dosage****timing**: Events: 2023-02-01 

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 5 AUC (Details: UCUM codemg.min/ml = 'mg.min/ml') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "MTBChemo1MedicationStatement2-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
  },
  "partOf" : [{
    "reference" : "Procedure/MTBChemo1Procedure"
  },
  {
    "reference" : "MedicationStatement/MTBChemo1MedicationStatement2"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "code" : "L01XA02"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectiveDateTime" : "2023-02-01",
  "note" : [{
    "text" : "Z2 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1"
  }],
  "dosage" : [{
    "timing" : {
      "event" : ["2023-02-01"]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 5,
        "unit" : "AUC",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg.min/ml"
      }
    }]
  }]
}

```
