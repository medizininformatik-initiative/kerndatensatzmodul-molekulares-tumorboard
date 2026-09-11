# NCT04503278 Age Group - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **NCT04503278 Age Group**

## Beispiel Group: NCT04503278 Age Group

-------

**German**

-------

**type**: Person

**actual**: false

> **characteristic****code**: Age Group (Adult)**value**: Adulthood (qualifier value)**exclude**: false

> **characteristic****code**: Age Group (Older Adult)**value**: Old age (qualifier value)**exclude**: false



## Resource Content

```json
{
  "resourceType" : "Group",
  "id" : "mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups",
  "type" : "person",
  "actual" : false,
  "characteristic" : [{
    "code" : {
      "text" : "Age Group (Adult)"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "41847000",
        "display" : "Adulthood (qualifier value)"
      }]
    },
    "exclude" : false
  },
  {
    "code" : {
      "text" : "Age Group (Older Adult)"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "271872005",
        "display" : "Old age (qualifier value)"
      }]
    },
    "exclude" : false
  }]
}

```
