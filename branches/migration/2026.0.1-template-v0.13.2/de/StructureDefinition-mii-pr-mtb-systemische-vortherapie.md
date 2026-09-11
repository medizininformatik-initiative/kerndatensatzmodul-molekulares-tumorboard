# MII PR MTB Systemische Vortherapie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Systemische Vortherapie**

## Ressourcenprofil: MII PR MTB Systemische Vortherapie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Systemische_Vortherapie |

 
Systemische Vortherapie zum Molekularen Tumorboard 

-------

### Inhalt

Dieses Profil beschreibt eine systemische (medikamentöse) Vortherapie aus Sicht des Molekularen Tumorboards.

Grundlage ist das Profil zur Systemischen Therapie aus dem Onkologie-Modul, wobei ergänzende Angaben zur Leitlinientherapie, d.h. die **Therapielinie** und der **Zulassungsstatus**, gemacht werden können. Darüber hinaus

### Verknüpfungen zu anderen Ressourcen

Es sollte nach Möglichkeit eine Datenduplikation zu bereits existierenden Prozeduren (z.B. Systemischen Therapie-Procedures) und Medikamentengaben (z.B. MedicationStatements) aus dem Onkologie-Modul vermieden werden. Stattdessen können bereits vorhandene Ressourcen mit zusätzlichen Informationen wie Therapielinie und Zulassungsstatus getestet werden.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_id=103270`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "based-on" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?based-on=CarePlan/example`Anwendungshinweise: Weitere Informationen zur Suche nach "based-on" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "part-of" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?part-of=Observation/example`Anwendungshinweise: Weitere Informationen zur Suche nach "part-of" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?status=completed`Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "status-reason" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?status-reason=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund|patient-wish`Anwendungshinweise: Weitere Informationen zur Suche nach "status-reason" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "category" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?category=http://snomed.info/sct|103693007`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?encounter=Encounter/example`Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "date" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?date=eq2025-01-01`Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "reason-reference" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?reason-reference=Condition/example`Anwendungshinweise: Weitere Informationen zur Suche nach "reason-reference" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "bodySite" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?bodySite=http://snomed.info/sct|430304001`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.bodySite" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "outcome" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?outcome=http://snomed.info/sct|80891009`Anwendungshinweise: Weitere Informationen zur Suche nach "outcome" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "note" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?note=contains:Carbo`Anwendungshinweise: Weitere Informationen zur Suche nach "note" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).
1. Der Suchparameter "dokumentationsdatum" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?dokumentationsdatum=2022-01-01`Anwendungshinweise: Weitere Informationen zur Suche nach "dokumentationsdatum" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "durchfuehrungsabsicht" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?durchfuehrungsabsicht=http://snomed.info/sct|262202000`Anwendungshinweise: Weitere Informationen zur Suche nach "durchfuehrungsabsicht" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "extension-intention" MUSS unterstützt werden:

```
Beispiele:

```GET [base]/Procedure?extension-intention=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention|K```

Anwendungshinweise: Weitere Informationen zur Suche nach "extension-intention" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

```

1. Der Suchparameter "extension-intention" MUSS unterstützt werden:

```
Beispiele:

```GET [base]/Procedure?extension-stellung=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-stellung-zur-op|N```

Anwendungshinweise: Weitere Informationen zur Suche nach "extension-intention" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

```

**Beispiele**

Beispiel: Beschluss MTB-Fall für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.md))

[mii-cs-mtb-therapiestatusgrund](CodeSystem-mii-cs-mtb-therapiestatusgrund.md)

**Usages:**

* Refer to this Profile: [MII PR MTB Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md)
* Examples for this Profile: [Procedure/MTBChemo1Procedure](Procedure-MTBChemo1Procedure.md) and [Procedure/MTBChemo2Procedure](Procedure-MTBChemo2Procedure.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-systemische-vortherapie.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Systemische_Therapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Systemische_Therapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie) 

** Summary **

Mandatory: 0 element(3 nested mandatory elements)
 Must-Support: 7 elements
 Fixed: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR MTB Therapieplan (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan)](StructureDefinition-mii-pr-mtb-therapieplan.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation](StructureDefinition-mii-ex-mtb-leitlinie-dokumentation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.basedOn
* The element 1 is sliced based on the value of Procedure.statusReason.coding

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Onko_Systemische_Therapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Systemische_Therapie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie) 

** Summary **

Mandatory: 0 element(3 nested mandatory elements)
 Must-Support: 7 elements
 Fixed: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR MTB Therapieplan (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan)](StructureDefinition-mii-pr-mtb-therapieplan.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation](StructureDefinition-mii-ex-mtb-leitlinie-dokumentation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.basedOn
* The element 1 is sliced based on the value of Procedure.statusReason.coding

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-systemische-vortherapie.csv), [Excel](../StructureDefinition-mii-pr-mtb-systemische-vortherapie.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-systemische-vortherapie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-systemische-vortherapie",
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Systemische_Vortherapie",
  "title" : "MII PR MTB Systemische Vortherapie",
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
  "description" : "Systemische Vortherapie zum Molekularen Tumorboard",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "oBDS",
    "name" : "Mapping FHIR zu oBDS"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.extension:Leitlinie",
      "path" : "Procedure.extension",
      "sliceName" : "Leitlinie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this"
        }],
        "description" : "Slice für referenzierten Therapieplan",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Procedure.basedOn:Therapieplan",
      "path" : "Procedure.basedOn",
      "sliceName" : "Therapieplan",
      "short" : "Therpieplan",
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
      "definition" : "Verweis auf den im Molekularen Tumorboard beschlossenen Therpieplan",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf den im Molekularen Tumorboard beschlossenen Therapieplan"
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
            "valueString" : "Reference to the therapy plan decided by the Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "short" : "Abbruchsgrund Systemische Therapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Abbruchsgrund Systemische Therapie"
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
            "valueString" : "Discontinuation Reason for Systemic Therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Falls abgebrochen: Angabe zum Abbruchsgrund der Systemischen Therapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Falls abgebrochen: Angabe zum Abbruchsgrund der Systemischen Therapie"
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
            "valueString" : "If discontinued: specification of the reason for discontinuation of systemic therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason.coding",
      "path" : "Procedure.statusReason.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice für den Grund des Therapiestatus",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason.coding.system",
      "path" : "Procedure.statusReason.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason.coding.code",
      "path" : "Procedure.statusReason.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason.coding:Therapiestatusgrund",
      "path" : "Procedure.statusReason.coding",
      "sliceName" : "Therapiestatusgrund",
      "short" : "Therapiestatusgrund",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapiestatusgrund"
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
            "valueString" : "Therapy Status Reason"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Grund für den Status der Systemischen Therapie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund für den Status der Systemischen Therapie"
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
            "valueString" : "Reason for the status of the systemic therapy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-therapiestatusgrund"
      }
    },
    {
      "id" : "Procedure.statusReason.coding:Therapiestatusgrund.system",
      "path" : "Procedure.statusReason.coding.system",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund"
    }]
  }
}

```
