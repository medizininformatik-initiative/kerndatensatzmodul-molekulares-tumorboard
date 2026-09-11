# MyHospital - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MyHospital**

## Beispiel Organization: MyHospital

-------

**German**

-------

**type**: Healthcare Provider

**name**: Example General Hospital

**address**: 1234 Health St Medicity CareState 12345 DE 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "MyHospital",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "prov",
      "display" : "Healthcare Provider"
    }]
  }],
  "name" : "Example General Hospital",
  "address" : [{
    "line" : ["1234 Health St"],
    "city" : "Medicity",
    "state" : "CareState",
    "postalCode" : "12345",
    "country" : "DE"
  }]
}

```
