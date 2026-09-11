# MII VS Mismatch Repair Protein Proficiency - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mismatch Repair Protein Proficiency**

## ValueSet: MII VS Mismatch Repair Protein Proficiency 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-mmr-proficiency | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_VS_MTB_MMR_Proficiency |

 
ValueSet zum MMR-Protein-Proficiency auf Basis von Immunhistochemie 

 **References** 

* [MII PR MTB Immunohistochemistry Mismatch Repair Status](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-mmr-proficiency",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-mmr-proficiency",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_MMR_Proficiency",
  "title" : "MII VS Mismatch Repair Protein Proficiency",
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
  "description" : "ValueSet zum MMR-Protein-Proficiency auf Basis von Immunhistochemie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
      "concept" : [{
        "code" : "C137827",
        "display" : "Mismatch Repair Protein Deficiency"
      },
      {
        "code" : "C131458",
        "display" : "Mismatch Repair Protein Proficiency"
      }]
    }]
  }
}

```
