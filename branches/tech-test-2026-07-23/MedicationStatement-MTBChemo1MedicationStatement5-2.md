# MTBChemo1MedicationStatement5-2 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTBChemo1MedicationStatement5-2**

## Example MedicationStatement: MTBChemo1MedicationStatement5-2

Profile: [MII PR Onkologie Systemische Therapie Medikation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation)

**partOf**: 

* [Procedure Chemotherapy](Procedure-MTBChemo1Procedure.md)
* [MedicationStatement: status = completed; medication[x] = ; effective[x] = 2023-04-26](MedicationStatement-MTBChemo1MedicationStatement5.md)

**status**: Completed

**medication**: Doxorubicin

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2023-04-26

**note**: 

> 

Z5 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1


> **dosage**

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 30 mg/m2 (Details: UCUM codemg/m2 = 'mg/m2') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "MTBChemo1MedicationStatement5-2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
  },
  "partOf" : [{
    "reference" : "Procedure/MTBChemo1Procedure"
  },
  {
    "reference" : "MedicationStatement/MTBChemo1MedicationStatement5"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "code" : "L01DB01"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectiveDateTime" : "2023-04-26",
  "note" : [{
    "text" : "Z5 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1"
  }],
  "dosage" : [{
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 30,
        "unit" : "mg/m2",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/m2"
      }
    }]
  }]
}

```
