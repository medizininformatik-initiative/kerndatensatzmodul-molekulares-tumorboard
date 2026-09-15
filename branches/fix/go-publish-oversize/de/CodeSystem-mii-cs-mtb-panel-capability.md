# MII CS MTB Panel Capability - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2027.0.0-ballot.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS MTB Panel Capability**

## CodeSystem: MII CS MTB Panel Capability 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability | *Version*:2027.0.0-ballot.1 |
| Active Stand: 2026-09-15 | *Maschinenlesbarer Name*:MII_CS_MTB_Panel_Capability |

 
Analytische Faehigkeiten eines Sequenzier-Panels (aus dem Panel-Metadatenkatalog abgeleitet). TODO:REVIEW 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS MTB Panel Capability](ValueSet-mii-vs-mtb-panel-capability.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-panel-capability",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability",
  "version" : "2027.0.0-ballot.1",
  "name" : "MII_CS_MTB_Panel_Capability",
  "title" : "MII CS MTB Panel Capability",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-15T16:20:22+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Analytische Faehigkeiten eines Sequenzier-Panels (aus dem Panel-Metadatenkatalog abgeleitet). TODO:REVIEW",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "snv-detection",
    "display" : "SNV-Detektion",
    "definition" : "Detektion einfacher Varianten (SNVs/kleine Indels)"
  },
  {
    "code" : "fusion-detection",
    "display" : "Fusions-Detektion",
    "definition" : "Detektion von Genfusionen"
  },
  {
    "code" : "deletion-detection",
    "display" : "Deletions-Detektion",
    "definition" : "Detektion von Deletionen"
  },
  {
    "code" : "amplification-detection",
    "display" : "Amplifikations-Detektion",
    "definition" : "Detektion von Amplifikationen"
  },
  {
    "code" : "overexpression-detection",
    "display" : "Ueberexpressions-Detektion",
    "definition" : "Detektion von Ueberexpression"
  },
  {
    "code" : "signature-detection",
    "display" : "Signatur-Detektion",
    "definition" : "Detektion genomischer Signaturen (z. B. TMB, HRD)"
  }]
}

```
