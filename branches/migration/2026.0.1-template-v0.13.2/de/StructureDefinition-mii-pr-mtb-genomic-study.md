# MII PR MTB Genomic Study - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Genomic Study**

## Ressourcenprofil: MII PR MTB Genomic Study 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Genomic_Study |

 
Genomic Study beinhaltet und verweist über GenomicStudyAnalysis auf Details zu den einzelnen Untersuchungen einer NGS-Untersuchung (Sequenzierung, Variant Calling, CNV-Analyse, Fusions-Analysen etc.) 

-------

### Inhalt

Dieses Profil beschreibt die Genomics Study. Da sich der Aufbau, Umfang und Inhakt von genomischen Analysereport von anderen Diagnostischen Reports (Labor, Bildgebung, Pathologie, Mikrobiologie…) deutlich unterscheidet, wurde in FHIR R5 eine GenomicStudyRessource eingeführt, die alle relevanten Datenelemente beinhaltet.

* https://hl7.org/fhir/R5/genomicstudy.html
* https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study.html

Da viele nationale und internationale Organisationen weiter auf FHIR R4 setzen, gab es einen offiziellen Backport, so dass die Inhalte einer R5 GenomicStudy über eine übergeordnete GenomicStudy-Prozedur und untergeordnete GenomicStudyAnalysis-Prozeduren abgebildet werden können.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?status=completed`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search".](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?code=Panel sequencing`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search".](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?subject=Patient/1234`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?encounter=Encounter/1234`Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Beispiele**

-------

**Usages:**

* Refer to this Profile: [MII EX MTB NGS Bericht Metadaten](StructureDefinition-mii-ex-mtb-ngs-bericht-genomic-study.md)
* Examples for this Profile: [Procedure/MII-EXA-MTB-GenomicStudy-1](Procedure-MII-EXA-MTB-GenomicStudy-1.md) and [Procedure/mii-exa-mtb-kim-musterperson-genomic-study](Procedure-mii-exa-mtb-kim-musterperson-genomic-study.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-genomic-study.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [GenomicStudy](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-genomic-study.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [GenomicStudy](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-genomic-study.html) 

** Summary **

Must-Support: 9 elements

**Structures**

This structure refers to these other structures:

* [MII PR MTB Genomic Study Analysis (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis)](StructureDefinition-mii-pr-mtb-genomic-study-analysis.md)
* [MII PR MolGen Genomic Study Analysis (https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-genomic-study-analysis)](https://medizininformatik-initiative.github.io/kerndatensatzmodul-GenetischeTests/2027.0.0-ballot.rc2/StructureDefinition-mii-pr-molgen-genomic-study-analysis.html)
* [Genomic Study Analysis (http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis)](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-genomic-study-analysis.html)
* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [GenomicStudy](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-genomic-study.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [GenomicStudy](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-genomic-study.html) 

** Summary **

Must-Support: 9 elements

**Structures**

This structure refers to these other structures:

* [MII PR MTB Genomic Study Analysis (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis)](StructureDefinition-mii-pr-mtb-genomic-study-analysis.md)
* [MII PR MolGen Genomic Study Analysis (https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-genomic-study-analysis)](https://medizininformatik-initiative.github.io/kerndatensatzmodul-GenetischeTests/2027.0.0-ballot.rc2/StructureDefinition-mii-pr-molgen-genomic-study-analysis.html)
* [Genomic Study Analysis (http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis)](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-genomic-study-analysis.html)
* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-genomic-study.csv), [Excel](../StructureDefinition-mii-pr-mtb-genomic-study.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-genomic-study.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-genomic-study",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Genomic_Study",
  "title" : "MII PR MTB Genomic Study",
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
  "description" : "Genomic Study beinhaltet und verweist über GenomicStudyAnalysis auf Details zu den einzelnen Untersuchungen einer NGS-Untersuchung (Sequenzierung, Variant Calling, CNV-Analyse, Fusions-Analysen etc.)",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.meta",
      "path" : "Procedure.meta",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.meta.profile",
      "path" : "Procedure.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:genomic-study-analysis",
      "path" : "Procedure.extension",
      "sliceName" : "genomic-study-analysis"
    },
    {
      "id" : "Procedure.extension:genomic-study-analysis.value[x]",
      "path" : "Procedure.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-genomic-study-analysis",
        "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis"]
      }]
    },
    {
      "id" : "Procedure.identifier",
      "path" : "Procedure.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    }]
  }
}

```
