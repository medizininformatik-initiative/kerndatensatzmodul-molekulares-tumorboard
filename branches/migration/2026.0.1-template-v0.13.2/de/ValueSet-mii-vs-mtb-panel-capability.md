# MII VS MTB Panel Capability - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS MTB Panel Capability**

## ValueSet: MII VS MTB Panel Capability 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-capability | *Version*:2026.0.1 |
| Active Stand: 2026-09-14 | *Maschinenlesbarer Name*:MII_VS_MTB_Panel_Capability |

 
Analytische Faehigkeiten eines Sequenzier-Panels. 

 **References** 

* [MII EX MTB Panel Gene List](StructureDefinition-mii-ex-mtb-panel-gene-list.md)
* [MII PR MTB Panel DeviceDefinition](StructureDefinition-mii-pr-mtb-panel-devicedefinition.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-panel-capability",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-capability",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Panel_Capability",
  "title" : "MII VS MTB Panel Capability",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-14T12:53:39+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Analytische Faehigkeiten eines Sequenzier-Panels.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability"
    }]
  }
}

```
