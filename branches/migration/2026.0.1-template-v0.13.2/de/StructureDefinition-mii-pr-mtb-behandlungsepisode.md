# MII PR MTB Behandlungsepisode - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Behandlungsepisode**

## Ressourcenprofil: MII PR MTB Behandlungsepisode 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Behandlungsepisode |

 
Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen 

-------

### Inhalt

Dieses Profil beschreibt die aktuelle Behandlungsepisode inkl. dem aktuellen Gesundheitszustand, Vortherapien, Molekular Pathologie Befund und NGS Bericht.

Diese gilt als Klammer, die als Ergänzung zum Fallkonzept dienen soll, da die MTB neben den klassischen In-House-Patienten jeder der folgenden PAtient Journeys abdecken kann:

* Patient*in wird von Anfang bis Ende am gleichen Uniklinikum leiliniengerecht (Onkologie) und am Molekularen Tumorboard (Diagnose, Therapie und Follow-up) betreut
* Patient*in wird extern leitliniengerecht extern behandelt, und bei Ausschöpfung wird für den Rest der Therapie am Unilinikum
* Patient*in wird gar nicht persönlich an der Uniklinik vorstellig, sondern Fall wird nur MTB besprochen
* beliebige Kombinationen aus Vortherapien und Folgetherapien.

### Profilierungsentscheidungen / Ballotierungskommentar

Alternativ wurde die Verwendung der `EpisodeOfCare`-Ressource überlegt. Diese ist jedoch eher als administrativer Behandlungszeitraum anzusehen.

Daher erschien uns die Verwendung der `ClinicalImpression`-Ressource sinnvoller, auch wenn die `ClinicalImpression` hier einen Zeit**raum** und keinen Zeit**punkt** erfasst. Sie enthält damit sowohl Referenzen auf den Zustand des/der Patient*in zum Einschlusszeitpunkt, als auch Referenzen auf die durchgeführte Diagnostik und Behandlungen sowie interdisziplinäre Konferenzen zur weiteren Behandlungsplanung.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "period-end" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?period-end=eq2025-01-01`Anwendungshinweise: Weitere Informationen zur Suche nach "period-end" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "problem" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?problem=Condition/example`Anwendungshinweise: Weitere Informationen zur Suche nach "problem" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "investigation" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?investigation=DiagnosticReport/example`Anwendungshinweise: Weitere Informationen zur Suche nach "investigation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "supporting-info" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?supporting-info=DiagnosticReport/example`Anwendungshinweise: Weitere Informationen zur Suche nach "supporting-info" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

TODO: SP Leitlinienbehandlung Status Extension

**Beispiele**

Beispiel: Beschluss MTB-Fall für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.md))

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Clinical Impresssion](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.md) and [MII PR MTB Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)
* Examples for this Profile: [ClinicalImpression/mii-exa-mtb-behandlungsepisode-1](ClinicalImpression-mii-exa-mtb-behandlungsepisode-1.md) and [ClinicalImpression/mii-exa-mtb-kim-musterperson-behandlungsepisode](ClinicalImpression-mii-exa-mtb-kim-musterperson-behandlungsepisode.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-behandlungsepisode.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html) 

** Summary **

Mandatory: 2 elements(10 nested mandatory elements)
 Must-Support: 16 elements

**Structures**

This structure refers to these other structures:

* [MII PR Person Patient (https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient)](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-person-patient.html)
* [MII PR Person Patient (Pseudonymisiert) (https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert)](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-person-patient-pseudonymisiert.html)
* [MII PR MTB Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor)](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md)
* [MII PR MolGen Familienanamnese (https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese)](https://medizininformatik-initiative.github.io/kerndatensatzmodul-GenetischeTests/2027.0.0-ballot.rc2/StructureDefinition-mii-pr-molgen-familienanamnese.html)
* [MII PR Onkologie Allgemeiner Leistungszustand ECOG (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog)
* [MII PR MTB NGS-Bericht (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht)](StructureDefinition-mii-pr-mtb-ngs-bericht.md)
* [MII PR MTB Molecular Pathology Report (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molecular-pathology-report)](StructureDefinition-mii-pr-mtb-molecular-pathology-report.md)
* [MII PR MTB Consent (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-consent-given)](StructureDefinition-mii-pr-mtb-consent-given.md)
* [MII PR MTB Systemische Vortherapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie)](StructureDefinition-mii-pr-mtb-systemische-vortherapie.md)
* [MII PR Onkologie Strahlentherapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie)
* [MII PR Onkologie Operation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)
* [MII PR Prozedur Procedure (https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure)](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-prozedur-procedure.html)
* [MII PR MTB Therapieplan (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan)](StructureDefinition-mii-pr-mtb-therapieplan.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinienbehandlung-status](StructureDefinition-mii-ex-mtb-leitlinienbehandlung-status.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation](StructureDefinition-mii-ex-mtb-leitlinie-dokumentation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ClinicalImpression.effective[x]
* The element 1 is sliced based on the value of ClinicalImpression.problem
* The element 1 is sliced based on the value of ClinicalImpression.investigation
* The element 1 is sliced based on the value of ClinicalImpression.supportingInfo

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html) 

** Summary **

Mandatory: 2 elements(10 nested mandatory elements)
 Must-Support: 16 elements

**Structures**

This structure refers to these other structures:

* [MII PR Person Patient (https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient)](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-person-patient.html)
* [MII PR Person Patient (Pseudonymisiert) (https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert)](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-person-patient-pseudonymisiert.html)
* [MII PR MTB Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor)](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md)
* [MII PR MolGen Familienanamnese (https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese)](https://medizininformatik-initiative.github.io/kerndatensatzmodul-GenetischeTests/2027.0.0-ballot.rc2/StructureDefinition-mii-pr-molgen-familienanamnese.html)
* [MII PR Onkologie Allgemeiner Leistungszustand ECOG (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog)
* [MII PR MTB NGS-Bericht (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht)](StructureDefinition-mii-pr-mtb-ngs-bericht.md)
* [MII PR MTB Molecular Pathology Report (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molecular-pathology-report)](StructureDefinition-mii-pr-mtb-molecular-pathology-report.md)
* [MII PR MTB Consent (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-consent-given)](StructureDefinition-mii-pr-mtb-consent-given.md)
* [MII PR MTB Systemische Vortherapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie)](StructureDefinition-mii-pr-mtb-systemische-vortherapie.md)
* [MII PR Onkologie Strahlentherapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie)
* [MII PR Onkologie Operation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)
* [MII PR Prozedur Procedure (https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure)](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-prozedur-procedure.html)
* [MII PR MTB Therapieplan (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan)](StructureDefinition-mii-pr-mtb-therapieplan.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinienbehandlung-status](StructureDefinition-mii-ex-mtb-leitlinienbehandlung-status.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation](StructureDefinition-mii-ex-mtb-leitlinie-dokumentation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ClinicalImpression.effective[x]
* The element 1 is sliced based on the value of ClinicalImpression.problem
* The element 1 is sliced based on the value of ClinicalImpression.investigation
* The element 1 is sliced based on the value of ClinicalImpression.supportingInfo

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-behandlungsepisode.csv), [Excel](../StructureDefinition-mii-pr-mtb-behandlungsepisode.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-behandlungsepisode.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-behandlungsepisode",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Behandlungsepisode",
  "title" : "MII PR MTB Behandlungsepisode",
  "status" : "active",
  "date" : "2026-09-11T14:44:50+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClinicalImpression",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClinicalImpression",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClinicalImpression",
      "path" : "ClinicalImpression"
    },
    {
      "id" : "ClinicalImpression.meta",
      "path" : "ClinicalImpression.meta",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.meta.profile",
      "path" : "ClinicalImpression.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.extension",
      "path" : "ClinicalImpression.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ClinicalImpression.extension:LeitlinienbehandlungStatus",
      "path" : "ClinicalImpression.extension",
      "sliceName" : "LeitlinienbehandlungStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinienbehandlung-status"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.subject",
      "path" : "ClinicalImpression.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient",
        "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert"]
      }]
    },
    {
      "id" : "ClinicalImpression.effective[x]",
      "path" : "ClinicalImpression.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "ClinicalImpression.effective[x]:effectivePeriod",
      "path" : "ClinicalImpression.effective[x]",
      "sliceName" : "effectivePeriod",
      "short" : "Zeitraum der Behandlungsepisode",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitraum der Behandlungsepisode"
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
            "valueString" : "Treatment Episode Period"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zeitraum von Einschluss bis Abschluss im Molekularen Tumorboard",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitraum von Einschluss bis Abschluss im Molekularen Tumorboard"
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
            "valueString" : "Period from inclusion to completion in the Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.effective[x]:effectivePeriod.start",
      "path" : "ClinicalImpression.effective[x].start",
      "short" : "Einschlussdatum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einschlussdatum"
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
            "valueString" : "Inclusion Date"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Einschlussdatum Molekulares Tumorboard",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einschlussdatum Molekulares Tumorboard"
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
            "valueString" : "Inclusion date for Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "ClinicalImpression.effective[x]:effectivePeriod.end",
      "path" : "ClinicalImpression.effective[x].end",
      "short" : "Abschlussdatum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Abschlussdatum"
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
            "valueString" : "Completion Date"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Abschlussdatum Molekulares Tumorboard",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Abschlussdatum Molekulares Tumorboard"
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
            "valueString" : "Completion date for Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.problem",
      "path" : "ClinicalImpression.problem",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "description" : "Slice für Diagnose",
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.problem:PrimaertumorDiagnose",
      "path" : "ClinicalImpression.problem",
      "sliceName" : "PrimaertumorDiagnose",
      "short" : "Primärtumor Diagnose",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Primärtumor Diagnose"
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
            "valueString" : "Primary Tumor Diagnosis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweise auf Diagnose des Primärtumors",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweise auf Diagnose des Primärtumors"
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
            "valueString" : "Reference to primary tumor diagnosis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor",
        "http://hl7.org/fhir/StructureDefinition/Condition"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation",
      "path" : "ClinicalImpression.investigation",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code.coding"
        }],
        "description" : "Slice für relevante Ermittlungen",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ClinicalImpression.investigation:KrankengeschichteFamilie",
      "path" : "ClinicalImpression.investigation",
      "sliceName" : "KrankengeschichteFamilie",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation:KrankengeschichteFamilie.code.coding",
      "path" : "ClinicalImpression.investigation.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "416471007",
        "display" : "Family medical history"
      }
    },
    {
      "id" : "ClinicalImpression.investigation:KrankengeschichteFamilie.item",
      "path" : "ClinicalImpression.investigation.item",
      "short" : "Krankengeschichte Familie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Krankengeschichte Familie"
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
            "valueString" : "Family Medical History"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf familiäre Krankengeschichte",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf familiäre Krankengeschichte"
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
            "valueString" : "Reference to family medical history"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese",
        "http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory"]
      }]
    },
    {
      "id" : "ClinicalImpression.investigation:ECOG",
      "path" : "ClinicalImpression.investigation",
      "sliceName" : "ECOG",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation:ECOG.code.coding",
      "path" : "ClinicalImpression.investigation.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "424122007",
        "display" : "ECOG performance status finding"
      }
    },
    {
      "id" : "ClinicalImpression.investigation:ECOG.item",
      "path" : "ClinicalImpression.investigation.item",
      "short" : "ECOG",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ECOG"
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
            "valueString" : "ECOG"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "ECOG Performance Status",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ECOG Performance Status"
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
            "valueString" : "ECOG Performance Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    },
    {
      "id" : "ClinicalImpression.investigation:NgsBericht",
      "path" : "ClinicalImpression.investigation",
      "sliceName" : "NgsBericht",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation:NgsBericht.code.coding",
      "path" : "ClinicalImpression.investigation.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "106221001",
        "display" : "Genetic finding"
      }
    },
    {
      "id" : "ClinicalImpression.investigation:NgsBericht.item",
      "path" : "ClinicalImpression.investigation.item",
      "short" : "NGS Report",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "NGS Report"
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
            "valueString" : "NGS Report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Für Molekulares Tumorboard bereitgestellter Next Generation Sequencing Bericht",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Für Molekulares Tumorboard bereitgestellter Next Generation Sequencing Bericht"
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
            "valueString" : "Next Generation Sequencing report provided for the Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }]
    },
    {
      "id" : "ClinicalImpression.investigation:MolekularPathologieBefund",
      "path" : "ClinicalImpression.investigation",
      "sliceName" : "MolekularPathologieBefund",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation:MolekularPathologieBefund.code.coding",
      "path" : "ClinicalImpression.investigation.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "60568-3",
        "display" : "Pathology synoptic report"
      }
    },
    {
      "id" : "ClinicalImpression.investigation:MolekularPathologieBefund.item",
      "path" : "ClinicalImpression.investigation.item",
      "short" : "Molekular Pathologie Befund",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Molekular Pathologie Befund"
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
            "valueString" : "Molecular Pathology Report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Für Molekulares Tumorboard bereitgestellter Molekular Pathologie Befund",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Für Molekulares Tumorboard bereitgestellter Molekular Pathologie Befund"
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
            "valueString" : "Molecular pathology report provided for the Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molecular-pathology-report",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }]
    },
    {
      "id" : "ClinicalImpression.investigation:Einwilligung",
      "path" : "ClinicalImpression.investigation",
      "sliceName" : "Einwilligung",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation:Einwilligung.code.coding",
      "path" : "ClinicalImpression.investigation.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "105511-0",
        "display" : "Was consent given"
      }
    },
    {
      "id" : "ClinicalImpression.investigation:Einwilligung.item",
      "path" : "ClinicalImpression.investigation.item",
      "short" : "Einwilligung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einwilligung"
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
            "valueString" : "Consent"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Einwilligung zum Molekularen Tumorboard",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einwilligung zum Molekularen Tumorboard"
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
            "valueString" : "Consent for the Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-consent-given"]
      }]
    },
    {
      "id" : "ClinicalImpression.supportingInfo",
      "path" : "ClinicalImpression.supportingInfo",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this.resolve()"
        }],
        "description" : "Slice für weitere Informationen",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ClinicalImpression.supportingInfo:Vorbefund",
      "path" : "ClinicalImpression.supportingInfo",
      "sliceName" : "Vorbefund",
      "short" : "Vorbefund",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Vorbefund"
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
            "valueString" : "Previous Finding"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Relevanter Vorbefund",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Relevanter Vorbefund"
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
            "valueString" : "Relevant previous finding"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.supportingInfo:Vortherapie",
      "path" : "ClinicalImpression.supportingInfo",
      "sliceName" : "Vortherapie",
      "short" : "Vortherapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Vortherapie"
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
            "valueString" : "Prior Therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Relevante Leitlinien-basierte Vortherapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Relevante Leitlinien-basierte Vortherapie"
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
            "valueString" : "Relevant guideline-based prior therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation",
        "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.supportingInfo:Vortherapie.extension:LeitlinieDokumentation",
      "path" : "ClinicalImpression.supportingInfo.extension",
      "sliceName" : "LeitlinieDokumentation",
      "short" : "Leitlinie Dokumentation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Leitlinie Dokumentation"
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
            "valueString" : "Guideline Documentation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Dokumentation zur Leitlinien-konformen Umsetzung der Prozedur",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Dokumentation zur Leitlinien-konformen Umsetzung der Prozedur"
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
            "valueString" : "Documentation for guideline-compliant implementation of the procedure"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.supportingInfo:Therapieplan",
      "path" : "ClinicalImpression.supportingInfo",
      "sliceName" : "Therapieplan",
      "short" : "Therapieplan",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapieplan"
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
            "valueString" : "Therapy Plan"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Therapieplan gemäß Beschluss des Molekularen Tumorboards",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapieplan gemäß Beschluss des Molekularen Tumorboards"
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
            "valueString" : "Therapy plan according to the Molecular Tumor Board decision"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan",
        "http://hl7.org/fhir/StructureDefinition/CarePlan"]
      }],
      "mustSupport" : true
    }]
  }
}

```
