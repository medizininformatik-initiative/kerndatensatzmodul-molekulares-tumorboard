# MII PR MTB Diagnose Primärtumor - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Diagnose Primärtumor**

## Ressourcenprofil: MII PR MTB Diagnose Primärtumor 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Diagnose_Primaertumor |

 
Diagnose zum Primärtumor 

-------

### Inhalt

Dieses Profil beschreibt die onkologische Diagnose zum Primärtumor und umfasst die Tumorausbreitung zum **Zeitpunkt der Diagnosestellung** sowie der **Anmeldung zum Molekularen Tumorboard**. Handeln es sich um einen Tumor des zentralen Nervensystems, kann eine [Graduierung nach WHO-Klassifikation](https://publications.iarc.fr/Book-And-Report-Series/Who-Classification-Of-Tumours/Central-Nervous-System-Tumours-2021) vorgenommen werden.

### Verknüpfungen zu anderen Ressourcen

Prinzipiell erbt die Molekulare Tumorboard-Diagnose alle Datenfelder der Onkologie-Diagnose, darunter ICD-O Morphologie, Topographie usw. Pro Patient sollte es nur eine `Condition`-Ressource pro Primärtumor geben.

Die MTB-Diagnose erweitert daher die Onkologie-Felder um weitere Datenpunkte, die für die Auswertung und Therapiefindung im Molekularen Tumorboard von Bedeutung sind, z.B.:

1. Für Zentrales Nervensystem (ZNS)-Tumore kann bei Bedarf der WHO-Grad angegeben werden.
1. Für alle Tumore kann bei Bedarf eine OncoTree-Klassifikation des MSKCC / OnkoKB angegeben werden.
1. Tumorausbreitung ist eigentlich ein abgeleiteter Datenpunkt. Theoretisch kann dieser aus vorliegenden Zeitstempeln und Referenzen berechnet werden (z.B. aus TNM-Klassifikationen/ Verlaufs-Beonachtungen in der Krankheitshistorie). Da aber in der Realität an den Datenintegrationszentren nicht die komplette Krankheitsgeschichte in strukturierter Form vorliegen wird,hält das Modulteam es für die vorliegende Profilierung für vertretbar, die Datenpunkte Tumorausbreitung zum Zeitpunkt der Erstdiagonse und zum Zeitpunkt des Einschlusses ins Molekulare Tumorboard zunächst als explizite Datenpunkte zu hinterlegen.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?code=http://fhir.de/CodeSystem/bfarm/icd-10-gm|A15.0`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "patient" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?patient=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "body-site" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?body-site=http://terminology.hl7.org/CodeSystem/icd-o-3|C44.2`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.body-site" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "morphology-behaviour-icd03" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?morphology-behaviour-icdo3=http://terminology.hl7.org/CodeSystem/icd-o-3|8503/2`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.extension[morphology-behaviour-icdo3]" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "icd10gm-diagnosesicherheit" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?icd10gm-diagnosesicherheit=https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT|G`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code.coding.extension.where(url='http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit').value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "icd10gm-mehrfachcodierung" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?icd10gm-mehrfachcodierung=http://fhir.de/CodeSystem/icd-10-gm-mehrfachcodierungs-kennzeichen|†`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code.coding.extension.where(url='http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen').value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "icd10gm-seitenlokalisation" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?icd10gm-seitenlokalisation=https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION|B`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code.coding.extension.where(url = 'http://fhir.de/StructureDefinition/seitenlokalisation').value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Beispiele**

Beispiel: Beschluss MTB-Fall für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.md))

-------

**Usages:**

* Refer to this Profile: [MII EX MTB Diagnose](StructureDefinition-mii-ex-mtb-diagnose.md), [MII PR MTB Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md), [MII PR MTB Copy Number Variant](StructureDefinition-mii-pr-mtb-copy-number-variant.md), [MII PR MTB Diagnostische Implikation](StructureDefinition-mii-pr-mtb-diagnostische-implikation.md)... Show 8 more, [MII PR MTB DNA Fusion](StructureDefinition-mii-pr-mtb-dna-fusion.md), [MII PR MTB Einfache Variante](StructureDefinition-mii-pr-mtb-einfache-variante.md), [MII PR MTB Molekularer Biomarker](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md), [MII PR MTB Response Befund](StructureDefinition-mii-pr-mtb-response-befund.md), [MII PR MTB RNA Fusion](StructureDefinition-mii-pr-mtb-rna-fusion.md), [MII PR MTB RNA Seq](StructureDefinition-mii-pr-mtb-rna-seq.md), [MII PR MTB Studieneinschluss Anfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md) and [MII PR MTB Therapeutische Implikation](StructureDefinition-mii-pr-mtb-therapeutische-implikation.md)
* Examples for this Profile: [Condition/mii-exa-mtb-kim-diagnose](Condition-mii-exa-mtb-kim-diagnose.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-diagnose-primaertumor.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Diagnose_Primaertumor](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Diagnose_Primaertumor](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor) 

** Summary **

Mandatory: 0 element(12 nested mandatory elements)
 Must-Support: 13 elements

**Structures**

This structure refers to these other structures:

* [MII PR MTB WHO Grad Tumor ZNS (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-who-grad-tumor-zns)](StructureDefinition-mii-pr-mtb-who-grad-tumor-zns.md)
* [MII PR MTB Oncotree Klassifikation (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-oncotree)](StructureDefinition-mii-pr-mtb-oncotree.md)
* [MII PR MTB Tumorausbreitung (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung)](StructureDefinition-mii-pr-mtb-tumorausbreitung.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Condition.stage

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Onko_Diagnose_Primaertumor](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Diagnose_Primaertumor](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor) 

** Summary **

Mandatory: 0 element(12 nested mandatory elements)
 Must-Support: 13 elements

**Structures**

This structure refers to these other structures:

* [MII PR MTB WHO Grad Tumor ZNS (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-who-grad-tumor-zns)](StructureDefinition-mii-pr-mtb-who-grad-tumor-zns.md)
* [MII PR MTB Oncotree Klassifikation (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-oncotree)](StructureDefinition-mii-pr-mtb-oncotree.md)
* [MII PR MTB Tumorausbreitung (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung)](StructureDefinition-mii-pr-mtb-tumorausbreitung.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Condition.stage

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-diagnose-primaertumor.csv), [Excel](../StructureDefinition-mii-pr-mtb-diagnose-primaertumor.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-diagnose-primaertumor.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-diagnose-primaertumor",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Diagnose_Primaertumor",
  "title" : "MII PR MTB Diagnose Primärtumor",
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
  "description" : "Diagnose zum Primärtumor",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "MII-FHIR-to-MVGenomSeq",
    "name" : "Onkologie LogicalModel MII Onkologie Mapping"
  },
  {
    "identity" : "oBDS",
    "name" : "Mapping FHIR zu oBDS"
  },
  {
    "identity" : "LogicalModel",
    "name" : "FHIR-Profil zu LogicalModel Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.stage",
      "path" : "Condition.stage",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding"
        }],
        "description" : "Slice für Stage/Grad",
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:WHOGradZNS",
      "path" : "Condition.stage",
      "sliceName" : "WHOGradZNS",
      "short" : "WHO Grad Tumor ZNS",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "WHO Grad Tumor ZNS"
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
            "valueString" : "WHO Grade CNS Tumor"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Grad eines Tumors nach WHO-Klassifikation der Tumoren des zentralen Nervensystems",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grad eines Tumors nach WHO-Klassifikation der Tumoren des zentralen Nervensystems"
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
            "valueString" : "Grade of a tumor according to the WHO classification of central nervous system tumors"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:WHOGradZNS.assessment",
      "path" : "Condition.stage.assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-who-grad-tumor-zns"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:WHOGradZNS.type",
      "path" : "Condition.stage.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:WHOGradZNS.type.coding",
      "path" : "Condition.stage.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "396920006",
        "display" : "WHO grade for central nervous system tumor"
      }
    },
    {
      "id" : "Condition.stage:OncoTree",
      "path" : "Condition.stage",
      "sliceName" : "OncoTree",
      "short" : "OncoTree Classification",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "OncoTree Klassifikation"
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
            "valueString" : "OncoTree Classification"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Klassifizierung eines Tumors nach OncoTree",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Klassifizierung eines Tumors nach OncoTree"
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
            "valueString" : "Classification of a tumor according to OncoTree"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:OncoTree.assessment",
      "path" : "Condition.stage.assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-oncotree"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:OncoTree.type",
      "path" : "Condition.stage.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:OncoTree.type.coding",
      "path" : "Condition.stage.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "371441004",
        "display" : "Histologic type of proliferative mass"
      }
    },
    {
      "id" : "Condition.stage:ErstdiagnoseZeitpunkt",
      "path" : "Condition.stage",
      "sliceName" : "ErstdiagnoseZeitpunkt",
      "short" : "Tumorausbreitung Erstdiagnose",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumorausbreitung Erstdiagnose"
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
            "valueString" : "Tumor Spread at Initial Diagnosis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Tumorausbreitung zum Zeitpunkt der Erstdiagnose",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumorausbreitung zum Zeitpunkt der Erstdiagnose"
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
            "valueString" : "Tumor spread at the time of initial diagnosis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:ErstdiagnoseZeitpunkt.assessment",
      "path" : "Condition.stage.assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:ErstdiagnoseZeitpunkt.type",
      "path" : "Condition.stage.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:ErstdiagnoseZeitpunkt.type.coding",
      "path" : "Condition.stage.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
        "code" : "C19251",
        "display" : "Stage at Diagnosis"
      }
    },
    {
      "id" : "Condition.stage:MolekularesTumorboardZeitpunkt",
      "path" : "Condition.stage",
      "sliceName" : "MolekularesTumorboardZeitpunkt",
      "short" : "Tumorausbreitung Molekulares Tumorboard",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumorausbreitung Molekulares Tumorboard"
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
            "valueString" : "Tumor Spread at Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Tumorausbreitung zum Zeitpunkt des Molekularen Tumorboard",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumorausbreitung zum Zeitpunkt des Molekularen Tumorboard"
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
            "valueString" : "Tumor spread at the time of the Molecular Tumor Board"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:MolekularesTumorboardZeitpunkt.assessment",
      "path" : "Condition.stage.assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:MolekularesTumorboardZeitpunkt.type",
      "path" : "Condition.stage.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage:MolekularesTumorboardZeitpunkt.type.coding",
      "path" : "Condition.stage.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "93771000119109",
        "display" : "Diagnosis deferred"
      }
    }]
  }
}

```
