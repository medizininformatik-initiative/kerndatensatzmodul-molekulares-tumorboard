# 24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22**

## Example MedicationStatement: 24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22

Profiles: [MII PR MTB Systemtherapie Medication Statement](StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.md), [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1)

**basedOn**: [MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28](MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.md)

**partOf**: [Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie](Procedure-MII-EXA-MTB-Systemische-Therapie-1.md)

**status**: Completed

**medication**: MIRVETUXIMAB SORAVTANSINE

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2023-06-24 --> 2023-06-24

**note**: 

> 

24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22


> **dosage**

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Dose[x]** |
| * | volle-Dosis | 6 mg/kg KG (Details: UCUM codemg/kg{KG} = 'mg/kg{KG}') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement",
    "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1"]
  },
  "basedOn" : [{
    "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
  }],
  "partOf" : [{
    "reference" : "Procedure/MII-EXA-MTB-Systemische-Therapie-1"
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
  "effectivePeriod" : {
    "start" : "2023-06-24",
    "end" : "2023-06-24"
  },
  "note" : [{
    "text" : "24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
  }],
  "dosage" : [{
    "doseAndRate" : [{
      "type" : {
        "coding" : [{
          "code" : "volle-Dosis"
        }]
      },
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
