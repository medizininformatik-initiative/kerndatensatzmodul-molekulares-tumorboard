# MII CS Kostenuebernahme Ablehnungsgrund - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Kostenuebernahme Ablehnungsgrund**

## CodeSystem: MII CS Kostenuebernahme Ablehnungsgrund 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_MTB_Antwort_Kostenuebernahme_Ablehnungsgrund |

 
Codesystem zum Grund der Ablehnung der Kostenuebernahme nach DNPM 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_MTB_Antwort_Kostenuebernahme_Ablehnungsgrund](ValueSet-mii-vs-mtb-antwort-kostenuebernahme-ablehnungsgrund.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Antwort_Kostenuebernahme_Ablehnungsgrund",
  "title" : "MII CS Kostenuebernahme Ablehnungsgrund",
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
  "description" : "Codesystem zum Grund der Ablehnung der Kostenuebernahme nach DNPM",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "insufficient-evidence",
    "display" : "Nicht ausreichende Evidenz"
  },
  {
    "code" : "standard-therapy-not-exhausted-temporary",
    "display" : "Standardtherapie nicht ausgeschöpft (Neuantrag erforderlich)"
  },
  {
    "code" : "standard-therapy-not-exhausted-definite",
    "display" : "Standardtherapie nicht ausgeschöpft (kein Neuantrag erforderlich)"
  },
  {
    "code" : "formal-reasons",
    "display" : "Inhaltliche Gründe"
  },
  {
    "code" : "other-therapy-recommended",
    "display" : "Andere Therapie vorgeschlagen"
  },
  {
    "code" : "inclusion-in-study",
    "display" : "Studieneinschluss"
  },
  {
    "code" : "approval-revocation",
    "display" : "Rücknahme der Zulassung"
  },
  {
    "code" : "other",
    "display" : "Weitere Gründe"
  },
  {
    "code" : "unknown",
    "display" : "Unbekannt"
  }]
}

```
