# MyInsurer - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MyInsurer**

## Example Organization: MyInsurer

**type**: Insurance Company

**name**: Example Health Insurance Co.

**address**: 789 Insurance Blvd Policytown InsureState 98765 DE 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "MyInsurer",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "ins",
      "display" : "Insurance Company"
    }]
  }],
  "name" : "Example Health Insurance Co.",
  "address" : [{
    "line" : ["789 Insurance Blvd"],
    "city" : "Policytown",
    "state" : "InsureState",
    "postalCode" : "98765",
    "country" : "DE"
  }]
}

```
