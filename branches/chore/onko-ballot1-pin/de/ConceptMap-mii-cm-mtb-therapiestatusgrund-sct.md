# MII CM MTB Therapiestatusgrund SNOMED CT Mapping - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CM MTB Therapiestatusgrund SNOMED CT Mapping**

## ConceptMap: MII CM MTB Therapiestatusgrund SNOMED CT Mapping 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ConceptMap/mii-cm-mtb-therapiestatusgrund-sct | *Version*:2026.0.1 |
| Active Stand: 2025-05-01 | *Maschinenlesbarer Name*:MII CM MTB Therapiestatusgrund SNOMED CT Mapping |

 
Mapping der Codes zur Begründung des Therapiestatus nach SNOMED CT 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-mtb-therapiestatusgrund-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ConceptMap/mii-cm-mtb-therapiestatusgrund-sct",
  "version" : "2026.0.1",
  "name" : "MII CM MTB Therapiestatusgrund SNOMED CT Mapping",
  "title" : "MII CM MTB Therapiestatusgrund SNOMED CT Mapping",
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
  "description" : "Mapping der Codes zur Begründung des Therapiestatus nach SNOMED CT",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Technische Mappings zur Transformation der Therapiestatusgründe nach SNOMED CT",
  "sourceUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-therapiestatusgrund",
  "targetUri" : "http://snomed.info/sct/900000000000207008/version/20250501",
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund",
    "target" : "http://snomed.info/sct",
    "element" : [{
      "code" : "payment-refused",
      "display" : "Kostenübernahme abgelehnt",
      "target" : [{
        "code" : "302179005",
        "display" : "Benefit application rejected (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "payment-pending",
      "display" : "Kostenübernahme noch ausstehend",
      "target" : [{
        "code" : "302178002",
        "display" : "Outcome of benefit application awaited (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "payment-ended",
      "display" : "Ende der Kostenübernahme",
      "target" : [{
        "code" : "224196001",
        "display" : "Benefits received (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "no-indication",
      "display" : "Klinisch keine Indikation",
      "target" : [{
        "code" : "71653005",
        "display" : "No indication of (contextual qualifier) (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "medical-reasons",
      "display" : "Medizinische Gründe",
      "target" : [{
        "code" : "373788008",
        "display" : "Treatment delay - clinical reason (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "patient-refusal",
      "display" : "Therapie durch Patient abgelehnt",
      "target" : [{
        "code" : "413311005",
        "display" : "Patient non-compliant - declined intervention / support (situation)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "patient-wish",
      "display" : "Auf Wunsch des Patienten",
      "target" : [{
        "code" : "1186606009",
        "display" : "Patient request observable (observable entity)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "patient-death",
      "display" : "Tod",
      "target" : [{
        "code" : "419099009",
        "display" : "Dead (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "lost-to-fu",
      "display" : "Lost to follow-up",
      "target" : [{
        "code" : "399307001",
        "display" : "Lost to follow-up (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "chronic-remission",
      "display" : "Anhaltende Remission",
      "target" : [{
        "code" : "277022003",
        "display" : "Remission phase (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "progression",
      "display" : "Progression",
      "target" : [{
        "code" : "419835002",
        "display" : "Tumor progression (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "toxicity",
      "display" : "Toxizität",
      "target" : [{
        "code" : "75478009",
        "display" : "Toxicity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "other-therapy-chosen",
      "display" : "Wahl einer anderen Therapie durch Behandler",
      "target" : [{
        "code" : "182868002",
        "display" : "Treatment stopped - alternative therapy undertaken (situation)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "best-supportive-care",
      "display" : "Best Supportive Care",
      "target" : [{
        "code" : "243114000",
        "display" : "Supportive care",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "deterioration",
      "display" : "Zustandsverschlechterung",
      "target" : [{
        "code" : "285384003",
        "display" : "General health deterioration (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "regular-completion",
      "display" : "Reguläres Ende",
      "target" : [{
        "code" : "385656004",
        "display" : "Ended (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "regular-completion-with-dosage-reduction",
      "display" : "Reguläres Ende mit Dosisreduktion",
      "target" : [{
        "code" : "182822000",
        "display" : "Reducing dose prescribed (situation)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "regular-completion-with-substance-change",
      "display" : "Reguläres Ende mit Substanzwechsel",
      "target" : [{
        "code" : "417886001",
        "display" : "Treatment adjusted per protocol (situation)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "other",
      "display" : "Weitere Gründe",
      "target" : [{
        "code" : "74964007",
        "display" : "Other (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "unknown",
      "display" : "Unbekannt",
      "target" : [{
        "code" : "261665006",
        "display" : "Unknown (qualifier value)",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
