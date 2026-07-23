# MII VS MTB ISH Method - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS MTB ISH Method**

## ValueSet: MII VS MTB ISH Method 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-ish-method | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_MTB_ISH_Method |

 
In Situ Hybridization technique methods (FISH, CISH, SISH) 

 **References** 

* [MII PR MTB In Situ Hybridization](StructureDefinition-mii-pr-mtb-insituhybridization.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "mii-vs-mtb-ish-method",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-ish-method",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_ISH_Method",
  "title" : "MII VS MTB ISH Method",
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
  "description" : "In Situ Hybridization technique methods (FISH, CISH, SISH)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "1363313004",
        "display" : "In situ hybridization technique (qualifier value)"
      },
      {
        "code" : "1303773004",
        "display" : "Fluorescence in situ hybridization technique (qualifier value)"
      },
      {
        "code" : "787997001",
        "display" : "Chromogenic in situ hybridization (qualifier value)"
      },
      {
        "code" : "787998006",
        "display" : "Silver in situ hybridization (qualifier value)"
      }]
    }]
  }
}

```
