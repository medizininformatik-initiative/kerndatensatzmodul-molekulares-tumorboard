# MII PR MTB Behandlungsepisode Beispiel - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Behandlungsepisode Beispiel**

## Beispiel ClinicalImpression: MII PR MTB Behandlungsepisode Beispiel

-------

**German**

-------

Profile: [MII PR MTB Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md) version: 2026.0.1

**MII EX MTB Leitlinienbehandlung Status**: [MII CS Leitlinienbehandlung Status: exhausted](CodeSystem-mii-cs-mtb-leitlinienbehandlung-status.md#mii-cs-mtb-leitlinienbehandlung-status-exhausted) (Leitlinien ausgeschöpft)

**status**: Completed

**subject**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

**effective**: 2023-03-01 --> 2023-05-31

**problem**: [Condition/PrimaertumorDiagnose-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Condition/PrimaertumorDiagnose-1)

> **investigation****code**: Family history taking (procedure)**item**: [FamilyMemberHistory/KrankengeschichteFamilie-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/FamilyMemberHistory/KrankengeschichteFamilie-1)

> **investigation****code**: Eastern Cooperative Oncology Group scale for physical assessment (assessment scale)**item**: [Observation/ECOG-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/ECOG-1)

> **investigation****code**: Molecular testing, diagnostic (procedure)**item**: [DiagnosticReport/NgsBericht-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/DiagnosticReport/NgsBericht-1)

> **investigation****code**: Molecular testing, diagnostic (procedure)**item**: [DiagnosticReport/NgsBericht-2](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/DiagnosticReport/NgsBericht-2)

> **investigation****code**: Anatomic pathology procedure (procedure)**item**: [DiagnosticReport/MolekularPathologieBefund-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/DiagnosticReport/MolekularPathologieBefund-1)

> **investigation****code**: Was consent given**item**: [Observation/ConsentGiven-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/ConsentGiven-1)

**supportingInfo**: 

* [DiagnosticReport/Bildbefund-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/DiagnosticReport/Bildbefund-1)
* [Procedure/SystemischeVortherapie-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/SystemischeVortherapie-1)
* [Procedure/OperativeVortherapie-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/OperativeVortherapie-1)
* [Procedure/SystemischeVortherapie-2](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/SystemischeVortherapie-2)
* [CarePlan/Therapieplan-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/CarePlan/Therapieplan-1)



## Resource Content

```json
{
  "resourceType" : "ClinicalImpression",
  "id" : "mii-exa-mtb-behandlungsepisode-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode|2026.0.1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinienbehandlung-status",
    "valueCoding" : {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-leitlinienbehandlung-status",
      "code" : "exhausted"
    }
  }],
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/mii-exa-mtb-patient"
  },
  "effectivePeriod" : {
    "start" : "2023-03-01",
    "end" : "2023-05-31"
  },
  "problem" : [{
    "reference" : "Condition/PrimaertumorDiagnose-1"
  }],
  "investigation" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "410551005",
        "display" : "Family history taking (procedure)"
      }]
    },
    "item" : [{
      "reference" : "FamilyMemberHistory/KrankengeschichteFamilie-1"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "273437007",
        "display" : "Eastern Cooperative Oncology Group scale for physical assessment (assessment scale)"
      }]
    },
    "item" : [{
      "reference" : "Observation/ECOG-1"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "396927009",
        "display" : "Molecular testing, diagnostic (procedure)"
      }]
    },
    "item" : [{
      "reference" : "DiagnosticReport/NgsBericht-1"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "396927009",
        "display" : "Molecular testing, diagnostic (procedure)"
      }]
    },
    "item" : [{
      "reference" : "DiagnosticReport/NgsBericht-2"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "108257001",
        "display" : "Anatomic pathology procedure (procedure)"
      }]
    },
    "item" : [{
      "reference" : "DiagnosticReport/MolekularPathologieBefund-1"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "105511-0",
        "display" : "Was consent given"
      }]
    },
    "item" : [{
      "reference" : "Observation/ConsentGiven-1"
    }]
  }],
  "supportingInfo" : [{
    "reference" : "DiagnosticReport/Bildbefund-1"
  },
  {
    "extension" : [{
      "extension" : [{
        "url" : "Therapielinie",
        "valueUnsignedInt" : 1
      },
      {
        "url" : "Zulassungsstatus",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-zulassungsstatus",
            "code" : "leitlinie"
          }]
        }
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation"
    }],
    "reference" : "Procedure/SystemischeVortherapie-1"
  },
  {
    "extension" : [{
      "extension" : [{
        "url" : "Therapielinie",
        "valueUnsignedInt" : 2
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation"
    }],
    "reference" : "Procedure/OperativeVortherapie-1"
  },
  {
    "extension" : [{
      "extension" : [{
        "url" : "Therapielinie",
        "valueUnsignedInt" : 3
      },
      {
        "url" : "Zulassungsstatus",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-zulassungsstatus",
            "code" : "in-label"
          }]
        }
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation"
    }],
    "reference" : "Procedure/SystemischeVortherapie-2"
  },
  {
    "reference" : "CarePlan/Therapieplan-1"
  }]
}

```
