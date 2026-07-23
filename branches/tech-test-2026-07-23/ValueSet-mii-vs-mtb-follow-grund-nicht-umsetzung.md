# MII VS Follow-Up Grund Nicht-Umsetzung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Follow-Up Grund Nicht-Umsetzung**

## ValueSet: MII VS Follow-Up Grund Nicht-Umsetzung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-follow-up-grund-nicht-umsetzung | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_MTB_Follow_Up_Grund_Nicht_Umsetzung |

 
ValueSet zum Follow-Up Grund Nicht-Umsetzung des Therapieplans. Abgeleitet von mii-cs-mtb-systemische-therapie-status-grund 

 **References** 

* [MII PR MTB Clinical Impresssion](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



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
  "date" : "2026-07-23T12:42:46+00:00",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
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
