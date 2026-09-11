# MTBChemo2MedicationStatement5 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MTBChemo2MedicationStatement5**

## Beispiel MedicationStatement: MTBChemo2MedicationStatement5

-------

**German**

-------

Profile: [MII PR Medikation MedicationStatement](https://medizininformatik-initiative.github.io/kerndatensatzmodul-medikation/2027.0.0-ballot.rc5/StructureDefinition-mii-pr-medikation-medication-statement.html)

**basedOn**: [MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28](MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.md)

**partOf**: [Procedure Chemotherapy](Procedure-MTBChemo2Procedure.md)

**status**: Completed

**medication**: MIRVETUXIMAB SORAVTANSINE

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2023-09-20

**note**: 

> 

Z5 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22


> **dosage****timing**: Events: 2023-09-20 

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 6 mg/kg KG (Details: UCUM codemg/kg{KG} = 'mg/kg{KG}') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "MTBChemo2MedicationStatement5",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
  },
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
  }],
  "partOf" : [{
    "reference" : "Procedure/MTBChemo2Procedure"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fdasis.nlm.nih.gov",
      "code" : "98DE7VN88D",
      "display" : "MIRVETUXIMAB SORAVTANSINE"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2025",
      "code" : "L01FX26",
      "display" : "Mirvetuximab soravtansin"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectiveDateTime" : "2023-09-20",
  "note" : [{
    "text" : "Z5 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
  }],
  "dosage" : [{
    "timing" : {
      "event" : ["2023-09-20"]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 6,
        "unit" : "mg/kg KG",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/kg{KG}"
      }
    }]
  }]
}

```
