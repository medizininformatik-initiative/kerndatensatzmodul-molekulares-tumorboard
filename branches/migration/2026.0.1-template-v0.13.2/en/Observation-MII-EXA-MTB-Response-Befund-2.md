# 22.10.2023 CT T/A - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **22.10.2023 CT T/A**

## Example Observation: 22.10.2023 CT T/A

-------

**English**

-------

Profile: [MII PR MTB Response Befund](StructureDefinition-mii-pr-mtb-response-befund.md) version: 2026.0.1

**partOf**: [Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie](Procedure-MII-EXA-MTB-Systemische-Therapie-1.md)

**status**: Final

**code**: Status of regression of tumor (observable entity)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**focus**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md)

**effective**: 2023-10-22

**value**: Partial Response

**method**: RECIST

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Presence of metastatic neoplasm in regional lymph node (observable entity) | kein Lymphknotenbefall nachweisbar |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MII-EXA-MTB-Response-Befund-2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund|2026.0.1"]
  },
  "partOf" : [{
    "reference" : "Procedure/MII-EXA-MTB-Systemische-Therapie-1"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "396432002",
      "display" : "Status of regression of tumor (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "focus" : [{
    "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
  }],
  "effectiveDateTime" : "2023-10-22",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung",
      "code" : "PR",
      "display" : "Partial Response"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilungsmethode",
      "code" : "RECIST",
      "display" : "RECIST"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "399656008",
        "display" : "Presence of metastatic neoplasm in regional lymph node (observable entity)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten",
        "code" : "K",
        "display" : "kein Lymphknotenbefall nachweisbar"
      }]
    }
  }]
}

```
