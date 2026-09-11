# MII VS Follow-Up Grund Nicht-Umsetzung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Follow-Up Grund Nicht-Umsetzung**

## ValueSet: MII VS Follow-Up Grund Nicht-Umsetzung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-follow-up-grund-nicht-umsetzung | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_VS_MTB_Follow_Up_Grund_Nicht_Umsetzung |

 
ValueSet zum Follow-Up Grund Nicht-Umsetzung des Therapieplans. Abgeleitet von mii-cs-mtb-systemische-therapie-status-grund 

 **References** 

* [MII PR MTB Clinical Impresssion](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-follow-grund-nicht-umsetzung",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-follow-up-grund-nicht-umsetzung",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Follow_Up_Grund_Nicht_Umsetzung",
  "title" : "MII VS Follow-Up Grund Nicht-Umsetzung",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T14:44:50+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "ValueSet zum Follow-Up Grund Nicht-Umsetzung des Therapieplans. Abgeleitet von mii-cs-mtb-systemische-therapie-status-grund",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-systemische-therapie-status-grund",
      "concept" : [{
        "code" : "payment-refused"
      },
      {
        "code" : "payment-pending"
      },
      {
        "code" : "payment-ended"
      },
      {
        "code" : "no-indication"
      },
      {
        "code" : "medical-reason"
      },
      {
        "code" : "patient-refusal"
      },
      {
        "code" : "patient-wish"
      },
      {
        "code" : "patient-death"
      },
      {
        "code" : "lost-to-fu"
      },
      {
        "code" : "chronic-remission"
      },
      {
        "code" : "progression"
      },
      {
        "code" : "toxicity"
      },
      {
        "code" : "other-therapy-chosen"
      },
      {
        "code" : "best-supportive-care"
      },
      {
        "code" : "deterioration"
      },
      {
        "code" : "other"
      },
      {
        "code" : "unknown"
      }]
    }]
  }
}

```
