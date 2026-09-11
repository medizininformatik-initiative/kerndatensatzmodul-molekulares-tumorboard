# Beispiel fuer einen Response Befund - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel fuer einen Response Befund**

## Example Observation: Beispiel fuer einen Response Befund

-------

**English**

-------

Profile: [MII PR MTB Response Befund](StructureDefinition-mii-pr-mtb-response-befund.md) version: 2026.0.1

**partOf**: [Procedure/Example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/Example)

**status**: Registered

**code**: Status of regression of tumor (observable entity)

**subject**: [Patient/Example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/Example)

**focus**: [Condition/Example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Condition/Example)

**effective**: 2014-02-12

**value**: Progressive Disease

**method**: RECIST

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Status of residual neoplasm (observable entity) | Kein Tumor nachweisbar |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MII-EXA-MTB-Response-Befund-Beispiel-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund|2026.0.1"]
  },
  "partOf" : [{
    "reference" : "Procedure/Example"
  }],
  "status" : "registered",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "396432002",
      "display" : "Status of regression of tumor (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/Example"
  },
  "focus" : [{
    "reference" : "Condition/Example"
  }],
  "effectiveDateTime" : "2014-02-12",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung",
      "code" : "PD",
      "display" : "Progressive Disease"
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
        "code" : "445200009",
        "display" : "Status of residual neoplasm (observable entity)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor",
        "code" : "K",
        "display" : "Kein Tumor nachweisbar"
      }]
    }
  }]
}

```
