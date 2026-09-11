# High-Grade Neuroendocrine Carcinoma of the Ovary - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **High-Grade Neuroendocrine Carcinoma of the Ovary**

## Beispiel Observation: High-Grade Neuroendocrine Carcinoma of the Ovary

-------

**German**

-------

Profile: [MII PR MTB Oncotree Klassifikation](StructureDefinition-mii-pr-mtb-oncotree.md) version: 2026.0.1

**status**: Final

**code**: Histologic grade of neoplasm (observable entity)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2021-06-10

**value**: HGONEC



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mtb-kim-oncotree",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-oncotree|2026.0.1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "371469007",
      "display" : "Histologic grade of neoplasm (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectiveDateTime" : "2021-06-10",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.mskcc.org/ontologies/oncotree",
      "code" : "HGONEC"
    }]
  }
}

```
