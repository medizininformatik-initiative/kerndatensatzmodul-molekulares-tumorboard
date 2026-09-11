# MII VS Mikrosatelliteninstabilität - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrosatelliteninstabilität**

## ValueSet: MII VS Mikrosatelliteninstabilität 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-msi | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_VS_MTB_Microsatellite_Instability |

 

| | | |
| :--- | :--- | :--- |
| ValueSet zum MSI-Status auf Basis von Immunhistochemie, basierend auf der LOINC-AnswerList LL1057-0 Stable | Unstable | Indeterminate |

 

 **References** 

* [MII PR MTB Mikrosatelliteninstabilität](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-msi",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-msi",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Microsatellite_Instability",
  "title" : "MII VS Mikrosatelliteninstabilität",
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
  "description" : "ValueSet zum MSI-Status auf Basis von Immunhistochemie, basierend auf der LOINC-AnswerList LL1057-0 Stable|Unstable|Indeterminate",
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
        "code" : "LA14122-8",
        "display" : "Stable"
      },
      {
        "code" : "LA14123-6",
        "display" : "Instable"
      },
      {
        "code" : "LA11884-6",
        "display" : "Indeterminate"
      },
      {
        "code" : "LA26202-4",
        "display" : "MSI-L"
      },
      {
        "code" : "LA26203-2",
        "display" : "MSI-H"
      }]
    }]
  }
}

```
