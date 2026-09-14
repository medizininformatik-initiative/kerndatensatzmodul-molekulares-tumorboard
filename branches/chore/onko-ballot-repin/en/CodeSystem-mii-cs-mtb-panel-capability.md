# MII CS MTB Panel Capability - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS MTB Panel Capability**

## CodeSystem: MII CS MTB Panel Capability 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability | *Version*:2026.0.1 |
| Active as of 2026-09-14 | *Computable Name*:MII_CS_MTB_Panel_Capability |

 
Analytische Faehigkeiten eines Sequenzier-Panels (aus dem Panel-Metadatenkatalog abgeleitet). TODO:REVIEW 

This Code system is referenced in the definition of the following value sets:

* [MII VS MTB Panel Capability](ValueSet-mii-vs-mtb-panel-capability.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-panel-capability",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Panel_Capability",
  "title" : "MII CS MTB Panel Capability",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-14T22:51:17+00:00",
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
