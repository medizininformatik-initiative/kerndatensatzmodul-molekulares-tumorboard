# MII VS Auftrag Begründung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Auftrag Begründung**

## ValueSet: MII VS Auftrag Begründung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-auftrag-begruendung | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_VS_MTB_AuftragBegruendung |

 
ValueSet für Begründung zum Auftrag zur (erneuten) Untersuchung oder Diagnostik 

 **References** 

* [MII PR MTB Human-genetische Beratung Auftrag](StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-auftrag-begruendung",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-auftrag-begruendung",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_AuftragBegruendung",
  "title" : "MII VS Auftrag Begründung",
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
  "description" : "ValueSet für Begründung zum Auftrag zur (erneuten) Untersuchung oder Diagnostik",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-auftrag-begruendung"
    }]
  }
}

```
