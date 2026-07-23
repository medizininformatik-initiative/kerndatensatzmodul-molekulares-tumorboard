# MII PR MTB Anwort Kostenuebernahme - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Anwort Kostenuebernahme**

## Resource Profile: MII PR MTB Anwort Kostenuebernahme 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_PR_MTB_Antwort_Kostenuebernahme |

 
Antwort auf Antrag Kostenübernahme 

**Usages:**

* Examples for this Profile: [ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-1](ClaimResponse-MII-EXA-MTB-Antwort-Kostenuebernahme-1.md) and [ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1](ClaimResponse-MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-molekulares-tumorboard|current/StructureDefinition/StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.csv), [Excel](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.xlsx), [Schematron](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-antwort-kostenuebernahme",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Antwort_Kostenuebernahme",
  "title" : "MII PR MTB Anwort Kostenuebernahme",
  "status" : "active",
  "date" : "2026-07-23T12:42:46+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Antwort auf Antrag Kostenübernahme",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClaimResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClaimResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClaimResponse",
      "path" : "ClaimResponse"
    },
    {
      "id" : "ClaimResponse.meta",
      "path" : "ClaimResponse.meta",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.meta.profile",
      "path" : "ClaimResponse.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.extension",
      "path" : "ClaimResponse.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.extension:Entscheidung",
      "path" : "ClaimResponse.extension",
      "sliceName" : "Entscheidung",
      "short" : "Entscheidung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Entscheidung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Decision"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Stadium der Antwort auf den Antrag zur Kostenuebernahme",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Stadium der Antwort auf den Antrag zur Kostenuebernahme"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Stage of the response to the cost coverage application"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-entscheidung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.extension:Ablehnungsgrund",
      "path" : "ClaimResponse.extension",
      "sliceName" : "Ablehnungsgrund",
      "short" : "Ablehnungsgrund",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ablehnungsgrund"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reason for Rejection"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Stadium der Antwort auf den Antrag zur Kostenuebernahme",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Stadium der Antwort auf den Antrag zur Kostenuebernahme"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Stage of the response to the cost coverage application"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund"]
      }]
    },
    {
      "id" : "ClaimResponse.status",
      "path" : "ClaimResponse.status",
      "short" : "Status der FHIR-Ressource",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status der FHIR-Ressource"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "FHIR Resource Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status der FHIR-Ressource, statisch auf #active gesetzt, da retrospektive Datenerschließung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status der FHIR-Ressource - statisch auf #active gesetzt da retrospektive Datenerschliessung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status of the FHIR resource - statically set to #active due to retrospective data acquisition"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "patternCode" : "active",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.type",
      "path" : "ClaimResponse.type",
      "short" : "Kategorie des Antragstellers",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kategorie des Antragstellers"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Applicant Category"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Kategorie des Antragstellers - z.B. stationär, ambulant, Apotheke",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kategorie des Antragstellers - z.B. stationaer - ambulant - Apotheke"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Category of the applicant - e.g. inpatient - outpatient - pharmacy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antrag-kostenuebernahme"
      }
    },
    {
      "id" : "ClaimResponse.use",
      "path" : "ClaimResponse.use",
      "short" : "Art des Kostenerstattungsantrags (claim, predetermination, preauthorization)",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Art des Kostenerstattungsantrags - claim oder predetermination oder preauthorization"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Type of cost reimbursement application - claim or predetermination or preauthorization"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "folgt den Definitionen wie im amerikanischen Gesundsheitswesen gebräuchlich. claim: Erstattungsantrag nach erfolgter Therapie; predetermination: unverbindliche Anfrage, insb. zu Anteilen der Kostenübernahme;  preauthorization: Anfrage nach möglicher Erstattung für zukünftige Therapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "folgt den Definitionen wie im amerikanischen Gesundsheitswesen gebraeuchlich. claim: Erstattungsantrag nach erfolgter Therapie; predetermination: unverbindliche Anfrage insb. zu Anteilen der Kostenuebernahme; preauthorization: Anfrage nach moeglicher Erstattung fuer zukuenftige Therapie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Follows definitions common in the American healthcare system. claim: reimbursement request after therapy; predetermination: non-binding inquiry esp. regarding coverage portions; preauthorization: inquiry about possible reimbursement for future therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.patient",
      "path" : "ClaimResponse.patient",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.created",
      "path" : "ClaimResponse.created",
      "short" : "Datum der Zusage / des Widerspruchs",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Zusage / des Widerspruchs"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Date of approval / objection"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.insurer",
      "path" : "ClaimResponse.insurer",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.request",
      "path" : "ClaimResponse.request",
      "short" : "Antrag",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Antrag"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Application"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Dazugehöriger Antrag zur Kostenübernahme",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Dazugehoeriger Antrag zur Kostenuebernahme"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Associated cost coverage application"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.outcome",
      "path" : "ClaimResponse.outcome",
      "short" : "Ergebnis der Kostenübernahme",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ergebnis der Kostenuebernahme"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Cost Coverage Outcome"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ergebnis der Kostenübernahme. Für den Fall der Sekundärdatenenutzung ist davon auszugehen, dass die Kostenerstattung bereits erfolgt ist. Daher ist der Status auf #complete gesetzt.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ergebnis der Kostenuebernahme. Fuer den Fall der Sekundaerdatennutzung ist davon auszugehen dass die Kostenerstattung bereits erfolgt ist. Daher ist der Status auf #complete gesetzt."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Cost coverage outcome. For secondary data use it is assumed that cost reimbursement has already occurred. Therefore the status is set to #complete."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "patternCode" : "complete",
      "mustSupport" : true
    }]
  }
}

```
