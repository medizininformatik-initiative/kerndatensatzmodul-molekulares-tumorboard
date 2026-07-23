# MII VS MTB Immunhistochemistry Specific Codes - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS MTB Immunhistochemistry Specific Codes**

## ValueSet: MII VS MTB Immunhistochemistry Specific Codes 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-immunohistochemistry-specific-codes | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_MTB_Immunhistochemistry_Specific_Codes |

 
Spezifische LOINC und SNOMED Codes für immunhistochemische Untersuchungen. Diese Codes werden für das Slice 'spezifisch' im Immunohistochemistry Profil verwendet. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "mii-vs-mtb-immunohistochemistry-specific-codes",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-immunohistochemistry-specific-codes",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Immunhistochemistry_Specific_Codes",
  "title" : "MII VS MTB Immunhistochemistry Specific Codes",
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
  "description" : "Spezifische LOINC und SNOMED Codes für immunhistochemische Untersuchungen. Diese Codes werden für das Slice 'spezifisch' im Immunohistochemistry Profil verwendet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "1234806008"
      }]
    },
    {
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "55229-9",
        "display" : "Immune stain study"
      },
      {
        "code" : "18474-7",
        "display" : "HER2 Ag [Presence] in Tissue by Immune stain"
      },
      {
        "code" : "48676-1",
        "display" : "HER2 [Interpretation] in Tissue"
      },
      {
        "code" : "85319-2",
        "display" : "HER2 [Presence] in Breast cancer specimen by Immune stain"
      },
      {
        "code" : "14228-1",
        "display" : "Cells.estrogen receptor/cells in Tissue by Immune stain"
      },
      {
        "code" : "14230-7",
        "display" : "Cells.progesterone receptor/cells in Tissue by Immune stain"
      },
      {
        "code" : "29593-1",
        "display" : "Cells.Ki-67 nuclear Ag/cells in Tissue by Immune stain"
      },
      {
        "code" : "33055-5",
        "display" : "Ki-67 nuclear Ag [Presence] in Tissue by Immune stain"
      },
      {
        "code" : "85330-9",
        "display" : "Cells.Ki-67 nuclear Ag/cells in Breast cancer specimen by Immune stain"
      },
      {
        "code" : "83052-1",
        "display" : "PD-L1 by clone 22C3 [Presence] in Tissue by Immune stain"
      },
      {
        "code" : "83055-4",
        "display" : "PD-L1 by clone 28-8 [Presence] in Tissue by Immune stain"
      },
      {
        "code" : "83057-0",
        "display" : "PD-L1 by clone SP142 [Presence] in Tissue by Immune stain"
      },
      {
        "code" : "81691-8",
        "display" : "DNA mismatch repair protein Mlh1 [Presence] in Cancer specimen by Immune stain"
      },
      {
        "code" : "81692-6",
        "display" : "DNA mismatch repair protein Msh2 [Presence] in Cancer specimen by Immune stain"
      },
      {
        "code" : "81693-4",
        "display" : "DNA mismatch repair protein Msh6 [Presence] in Cancer specimen by Immune stain"
      },
      {
        "code" : "81694-2",
        "display" : "Mismatch repair endonuclease PMS2 [Presence] in Cancer specimen by Immune stain"
      },
      {
        "code" : "14229-9",
        "display" : "P53 protein Ag [Presence] in Tissue by Immune stain"
      },
      {
        "code" : "47303-3",
        "display" : "Anaplastic lymphoma kinase Ag [Presence] in Tissue by Immune stain"
      },
      {
        "code" : "47021-1",
        "display" : "CDX2 Ag [Presence] in Tissue by Immune stain"
      },
      {
        "code" : "73910-2",
        "display" : "PAX8 Ag [Presence] in Tissue by Immune stain"
      },
      {
        "code" : "48677-9",
        "display" : "Cancer Ag 125 [Presence] in Tissue by Immune stain"
      }]
    }]
  }
}

```
