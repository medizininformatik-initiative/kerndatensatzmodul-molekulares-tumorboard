# MII CS Human-genetische Beratung Auftrag Begründung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Human-genetische Beratung Auftrag Begründung**

## CodeSystem: MII CS Human-genetische Beratung Auftrag Begründung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-auftrag-begruendung | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_MTB_AuftragBegruendung |

 
Begründung zum Auftrag zur (erneuten) Human-genetischen Beratung 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_MTB_AuftragBegruendung](ValueSet-mii-vs-mtb-auftrag-begruendung.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-auftrag-begruendung",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-auftrag-begruendung",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_AuftragBegruendung",
  "title" : "MII CS Human-genetische Beratung Auftrag Begründung",
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
  "description" : "Begründung zum Auftrag zur (erneuten) Human-genetischen Beratung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "family-anamnesis",
    "display" : "Familienanamnese",
    "definition" : "Aufklärung zur medizinischen Vorgeschichte von Familienmitgliedern"
  },
  {
    "code" : "self-anamnesis",
    "display" : "Eigenanamnese",
    "definition" : "Aufklärung zur persönlichen medizinischen Vorgeschichte"
  },
  {
    "code" : "secondary-tumor",
    "display" : "Zweittumor",
    "definition" : "Aufklärung zu weiteren diagnostiziertem Tumor"
  },
  {
    "code" : "other",
    "display" : "Andere",
    "definition" : "Andere Aufklärung"
  },
  {
    "code" : "unknown",
    "display" : "Unbekannt",
    "definition" : "Unbekannter Grund"
  }]
}

```
