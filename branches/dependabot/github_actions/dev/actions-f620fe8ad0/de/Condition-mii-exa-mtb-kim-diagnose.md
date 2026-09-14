# Bestätigte Primärdiagnose - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Bestätigte Primärdiagnose**

## Beispiel Condition: Bestätigte Primärdiagnose

-------

**German**

-------

Profile: [MII PR MTB Diagnose Primärtumor](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md) version: 2026.0.1

**Condition Asserted Date**: 2021-06-10

**clinicalStatus**: Active

**verificationStatus**: Unconfirmed

**code**: Bösartige Neubildung: Peritoneum, nicht näher bezeichnet

**bodySite**: Ovar

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**recordedDate**: 2021-06-10

> **stage****assessment**: [Observation Tumor stage](Observation-mii-exa-mtb-kim-tumorausbreitung.md)**type**: Stage at Diagnosis

> **stage****assessment**: [Observation Histologic grade of neoplasm (observable entity)](Observation-mii-exa-mtb-kim-oncotree.md)**type**: Histologic type of proliferative mass



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-mtb-kim-diagnose",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor|2026.0.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2021-06-10"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "unconfirmed"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung",
      "code" : "2"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2023",
      "code" : "C48.2",
      "display" : "Bösartige Neubildung: Peritoneum, nicht näher bezeichnet"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C56.9",
      "display" : "Ovar"
    }]
  }],
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "recordedDate" : "2021-06-10",
  "stage" : [{
    "assessment" : [{
      "reference" : "Observation/mii-exa-mtb-kim-tumorausbreitung"
    }],
    "type" : {
      "coding" : [{
        "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
        "code" : "C19251",
        "display" : "Stage at Diagnosis"
      }]
    }
  },
  {
    "assessment" : [{
      "reference" : "Observation/mii-exa-mtb-kim-oncotree"
    }],
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "371441004",
        "display" : "Histologic type of proliferative mass"
      }]
    }
  }]
}

```
