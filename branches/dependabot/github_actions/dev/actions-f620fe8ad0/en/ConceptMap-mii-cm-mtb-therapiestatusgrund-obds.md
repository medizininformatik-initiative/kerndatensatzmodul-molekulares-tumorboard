# MII CM MTB Therapiestatusgrund oBDS Mapping - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM MTB Therapiestatusgrund oBDS Mapping**

## ConceptMap: MII CM MTB Therapiestatusgrund oBDS Mapping 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ConceptMap/mii-cm-mtb-therapiestatusgrund-obds | *Version*:2026.0.1 |
| Active as of 2025-05-01 | *Computable Name*:MII CM MTB Therapiestatusgrund oBDS Mapping |

 
Mapping der Codes zur Begründung des Therapiestatus nach oBDS 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-mtb-therapiestatusgrund-obds",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ConceptMap/mii-cm-mtb-therapiestatusgrund-obds",
  "version" : "2026.0.1",
  "name" : "MII CM MTB Therapiestatusgrund oBDS Mapping",
  "title" : "MII CM MTB Therapiestatusgrund oBDS Mapping",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-05-01",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Mapping der Codes zur Begründung des Therapiestatus nach oBDS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Technische Mappings zur Transformation der Therapiestatusgründe nach oBDS",
  "sourceUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-therapiestatusgrund",
  "targetUri" : "https://basisdatensatz.de",
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund",
    "target" : "https://basisdatensatz.de",
    "element" : [{
      "code" : "patient-refusal",
      "display" : "Therapie durch Patient abgelehnt",
      "target" : [{
        "code" : "V",
        "display" : "Patient verweigert weitere Therapie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "patient-death",
      "display" : "Tod",
      "target" : [{
        "code" : "T",
        "display" : "Patient verstorben",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "chronic-remission",
      "display" : "Anhaltende Remission",
      "target" : [{
        "code" : "S",
        "display" : "Abbruch aus sonstigen Gründen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "progression",
      "display" : "Progression",
      "target" : [{
        "code" : "P",
        "display" : "Abbruch wegen Progress",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "toxicity",
      "display" : "Toxizität",
      "target" : [{
        "code" : "A",
        "display" : "Abbruch wegen Nebenwirkungen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "deterioration",
      "display" : "Zustandsverschlechterung",
      "target" : [{
        "code" : "S",
        "display" : "Abbruch aus sonstigen Gründen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "regular-completion",
      "display" : "Reguläres Ende",
      "target" : [{
        "code" : "E",
        "display" : "reguläres Ende",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "regular-completion-with-dosage-reduction",
      "display" : "Reguläres Ende mit Dosisreduktion",
      "target" : [{
        "code" : "R",
        "display" : "reguläres Ende mit Dosisreduktion",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "regular-completion-with-substance-change",
      "display" : "Reguläres Ende mit Substanzwechsel",
      "target" : [{
        "code" : "W",
        "display" : "reguläres Ende mit Substanzwechsel",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "other",
      "display" : "Weitere Gründe",
      "target" : [{
        "code" : "S",
        "display" : "Abbruch aus sonstigen Gründen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "unknown",
      "display" : "Unbekannt",
      "target" : [{
        "code" : "U",
        "display" : "unbekannt",
        "equivalence" : "equivalent"
      }]
    }],
    "unmapped" : {
      "mode" : "fixed",
      "code" : "U",
      "display" : "unbekannt"
    }
  }]
}

```
