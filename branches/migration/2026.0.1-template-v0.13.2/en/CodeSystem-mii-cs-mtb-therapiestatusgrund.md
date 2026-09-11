# MII CS Therapiestatusgrund - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Therapiestatusgrund**

## CodeSystem: MII CS Therapiestatusgrund 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_CS_MTB_Therapiestatusgrund |

 
Codesystem zum Status Grund der Systemischen Therapie nach DNPM 

This Code system is referenced in the definition of the following value sets:

* [MII VS Therapiestatusgrund](ValueSet-mii-vs-mtb-therapiestatusgrund.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-therapiestatusgrund",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Therapiestatusgrund",
  "title" : "MII CS Therapiestatusgrund",
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
  "description" : "Codesystem zum Status Grund der Systemischen Therapie nach DNPM",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 20,
  "concept" : [{
    "code" : "payment-refused",
    "display" : "Kostenübernahme abgelehnt",
    "definition" : "Kostenübernahme abgelehnt"
  },
  {
    "code" : "payment-pending",
    "display" : "Kostenübernahme noch ausstehend",
    "definition" : "Kostenübernahme noch ausstehend"
  },
  {
    "code" : "payment-ended",
    "display" : "Ende der Kostenübernahme",
    "definition" : "Ende der Kostenübernahme"
  },
  {
    "code" : "no-indication",
    "display" : "Klinisch keine Indikation",
    "definition" : "Klinisch keine Indikation"
  },
  {
    "code" : "medical-reasons",
    "display" : "Medizinische Gründe",
    "definition" : "Medizinische Gründe"
  },
  {
    "code" : "patient-refusal",
    "display" : "Therapie durch Patient abgelehnt",
    "definition" : "Therapie durch Patient abgelehnt"
  },
  {
    "code" : "patient-wish",
    "display" : "Auf Wunsch des Patienten",
    "definition" : "Auf Wunsch des Patienten"
  },
  {
    "code" : "patient-death",
    "display" : "Tod",
    "definition" : "Tod"
  },
  {
    "code" : "lost-to-fu",
    "display" : "Lost to follow-up",
    "definition" : "Lost to follow-up"
  },
  {
    "code" : "chronic-remission",
    "display" : "Anhaltende Remission",
    "definition" : "Anhaltende Remission"
  },
  {
    "code" : "progression",
    "display" : "Progression",
    "definition" : "Progression"
  },
  {
    "code" : "toxicity",
    "display" : "Toxizität",
    "definition" : "Toxizität"
  },
  {
    "code" : "other-therapy-chosen",
    "display" : "Wahl einer anderen Therapie durch Behandler",
    "definition" : "Wahl einer anderen Therapie durch Behandler"
  },
  {
    "code" : "best-supportive-care",
    "display" : "Best Supportive Care",
    "definition" : "Best Supportive Care"
  },
  {
    "code" : "deterioration",
    "display" : "Zustandsverschlechterung",
    "definition" : "Zustandsverschlechterung"
  },
  {
    "code" : "regular-completion",
    "display" : "Reguläres Ende",
    "definition" : "Reguläres Ende"
  },
  {
    "code" : "regular-completion-with-dosage-reduction",
    "display" : "Reguläres Ende mit Dosisreduktion",
    "definition" : "Reguläres Ende mit Dosisreduktion"
  },
  {
    "code" : "regular-completion-with-substance-change",
    "display" : "Reguläres Ende mit Substanzwechsel",
    "definition" : "Reguläres Ende mit Substanzwechsel"
  },
  {
    "code" : "other",
    "display" : "Weitere Gründe",
    "definition" : "Weitere Gründe"
  },
  {
    "code" : "unknown",
    "display" : "Unbekannt",
    "definition" : "Unbekannt"
  }]
}

```
