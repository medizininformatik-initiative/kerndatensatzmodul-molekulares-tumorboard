# MII VS Tumorausbreitung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Tumorausbreitung**

## ValueSet: MII VS Tumorausbreitung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-tumorausbreitung | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_MTB_Tumorausbreitung |

 
ValueSet zur Angabe der Tumorausbreitung 

 **References** 

* [MII PR MTB Tumorausbreitung](StructureDefinition-mii-pr-mtb-tumorausbreitung.md)

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
  "id" : "mii-vs-mtb-tumorausbreitung",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-tumorausbreitung",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Tumorausbreitung",
  "title" : "MII VS Tumorausbreitung",
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
  "description" : "ValueSet zur Angabe der Tumorausbreitung",
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
        "code" : "58899004",
        "display" : "No evidence of tumor"
      },
      {
        "code" : "255127006",
        "display" : "Local tumor spread"
      },
      {
        "code" : "128462008",
        "display" : "Metastases"
      },
      {
        "code" : "261665006",
        "display" : "Unknown"
      }]
    }]
  }
}

```
