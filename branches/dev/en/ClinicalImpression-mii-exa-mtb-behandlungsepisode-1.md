# MII PR MTB Behandlungsepisode Beispiel - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Behandlungsepisode Beispiel**

## Example ClinicalImpression: MII PR MTB Behandlungsepisode Beispiel

-------

**English**

-------

Profile: [MII PR MTB Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md) version: 2026.0.1

**MII EX MTB Leitlinienbehandlung Status**: [MII CS Leitlinienbehandlung Status: exhausted](CodeSystem-mii-cs-mtb-leitlinienbehandlung-status.md#mii-cs-mtb-leitlinienbehandlung-status-exhausted) (Leitlinien ausgeschöpft)

**status**: Completed

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2023-03-01 --> 2023-05-31

**problem**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-mii-exa-mtb-kim-diagnose.md)

> **investigation****code**: Eastern Cooperative Oncology Group scale for physical assessment (assessment scale)**item**: [Observation ECOG performance status](Observation-mii-exa-onko-allgemeiner-leistungszustand-ecog.md)

> **investigation****code**: Molecular testing, diagnostic (procedure)**item**: [Diagnostic Report for 'Genetic analysis report' for '->Kim Musterperson (no stated gender), DoB: 1956-03-14'](DiagnosticReport-mii-exa-mtb-kim-musterperson-ngs-bericht.md)

> **investigation****code**: Anatomic pathology procedure (procedure)**item**: [Diagnostic Report for 'Pathology synoptic report' for '->Kim Musterperson (no stated gender), DoB: 1956-03-14'](DiagnosticReport-PatientKimMusterperson-MolecularPathologyReport-1.md)

> **investigation****code**: Was consent given**item**: [Observation Was consent given](Observation-mii-exa-mtb-kim-musterperson-aufklaerung.md)

**supportingInfo**: 

* [Diagnostic Report for 'Pathology synoptic report' for '->Kim Musterperson (no stated gender), DoB: 1956-03-14'](DiagnosticReport-PatientKimMusterperson-MolecularPathologyReport-1.md)
* [Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie](Procedure-PatientKimMusterperson-SystemicTherapy-1.md)
* [Procedure Computertomographie [CT], nativ](Procedure-PatientKimMusterperson-Procedure-4.md)
* [Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie](Procedure-PatientKimMusterperson-SystemicTherapy-2.md)
* [CarePlan: status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2023-03-28](CarePlan-mii-exa-mtb-kim-musterperson-therapieplan.md)



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
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectivePeriod" : {
    "start" : "2023-03-01",
    "end" : "2023-05-31"
  },
  "problem" : [{
    "reference" : "Condition/mii-exa-mtb-kim-diagnose"
  }],
  "investigation" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "273437007",
        "display" : "Eastern Cooperative Oncology Group scale for physical assessment (assessment scale)"
      }]
    },
    "item" : [{
      "reference" : "Observation/mii-exa-onko-allgemeiner-leistungszustand-ecog"
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
      "reference" : "DiagnosticReport/mii-exa-mtb-kim-musterperson-ngs-bericht"
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
      "reference" : "DiagnosticReport/PatientKimMusterperson-MolecularPathologyReport-1"
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
      "reference" : "Observation/mii-exa-mtb-kim-musterperson-aufklaerung"
    }]
  }],
  "supportingInfo" : [{
    "reference" : "DiagnosticReport/PatientKimMusterperson-MolecularPathologyReport-1"
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
    "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-1"
  },
  {
    "extension" : [{
      "extension" : [{
        "url" : "Therapielinie",
        "valueUnsignedInt" : 2
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation"
    }],
    "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
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
    "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-2"
  },
  {
    "reference" : "CarePlan/mii-exa-mtb-kim-musterperson-therapieplan"
  }]
}

```
