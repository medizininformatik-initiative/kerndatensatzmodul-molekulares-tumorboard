# MII VS Mismatch Repair Proteins Expression - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mismatch Repair Proteins Expression**

## ValueSet: MII VS Mismatch Repair Proteins Expression 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-mmr-expression | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_VS_MTB_MMR_Expression |

 

| | | |
| :--- | :--- | :--- |
| ValueSet zum MMR-Protein-Expression auf Basis von Immunhistochemie, basierend auf der LOINC-AnswerList LL3993-4 Intact nuc express | Loss of nuc express | Undet |

 

 **References** 

* [MII PR MTB Immunohistochemistry Mismatch Repair Status](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-mmr-expression",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-mmr-expression",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_MMR_Expression",
  "title" : "MII VS Mismatch Repair Proteins Expression",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T15:11:15+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "ValueSet zum MMR-Protein-Expression auf Basis von Immunhistochemie, basierend auf der LOINC-AnswerList LL3993-4 Intact nuc express|Loss of nuc express|Undet",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA26197-6",
        "display" : "Intact nuclear expression"
      },
      {
        "code" : "LA26198-4",
        "display" : "Loss of nuclear expression"
      },
      {
        "code" : "LA14100-4",
        "display" : "Undetermined"
      }]
    }]
  }
}

```
