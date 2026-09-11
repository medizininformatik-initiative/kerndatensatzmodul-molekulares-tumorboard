# MII PR MTB Studie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Studie**

## Ressourcenprofil: MII PR MTB Studie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Studie |

 
Onkologische Studie 

-------

### Inhalt

Dieses Profil beschreibt als Teil der Studieneinschlussempfehlung die Studie, in die der Einschluss empfohlen wird.

Das vorliegende Profil definiert hauptsächlich drei Identifiersysteme, die im Rahmen von Studien am Molekularen Tumorboard häufig genutzt werden:

* [NCT - NIH Clinical Trial Database](https://clinicaltrials.gov)
* [EudraCT - European Union Drug Regulating Authorities Clinical Trials Database](https://eudract.ema.europa.eu)
* [DRKS - Deutsches Register für klinische Studien](https://www.bfarm.de/DE/Das-BfArM/Aufgaben/Deutsches-Register-Klinischer-Studien/_node.html)

Die Verwendung des Studienprofils ist **optional** - dieses Modul endet formal mit der Studieneinschlussempfehlung.

In zukünftigen Ausbaustufen kann die lokale Studienpopulation einer Studie über bspw. über `Group` zusammenaggregiert und die tatsächliche Studienteilnahme als Auswertungsparameter genutzt werden. Weiterhin kann in Zukunft definiert werden, inwieweit eine Studienteilnahme im Follow-up getrennt erfasst werden kann.

### Inhalt

Mapping Datensatz zu FHIR

TODO: FHIR LM Mappings korrigieren

**Suchparameter**

Folgende Suchparameter sind für diese Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/ResearchStudy?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/ResearchStudy?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "identifier" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?identifier=DRKS00031294`Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "title" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?title=Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue`Anwendungshinweise: Weitere Informationen zur Suche nach "title" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?status=active`Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "partOf" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?partOf=ResearchStudy/researchstudy-test`Anwendungshinweise: Weitere Informationen zur Suche nach "partOf" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "category" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?category=interventional`Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "armName" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?armName=frontale anodale tDCS (verum condition)`Anwendungshinweise: Weitere Informationen zur Suche nach "arm.name" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).
1. Der Suchparameter "category" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?category=Long-COVID bedingter Fatigue`Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Studienfokus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).
1. Der Suchparameter "keyword" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?keyword=COVID`Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Schlagwort" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).
1. Der Suchparameter "label" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?label=Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue`Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Label" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).
1. Der Suchparameter "studienregister" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?studienregister=Library/example`Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Studienregister" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "rekrutierungsstand-datum" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?rekrutierungsstand-datum=2023-02-17`Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Rekrutierung.extension:rekrutierungsstand-datum" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "rekrutierungsstand-genauigkeit" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?rekrutierungsstand-genauigkeit=good`Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Rekrutierung.extension:rekrutierungsstand-genauigkeit" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"].(http://hl7.org/fhir/R4/search.html#string).
1. Der Suchparameter "rekrutierungsstand-rekrutierungsstand" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?rekrutierungsstand=35`Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Rekrutierung.extension:rekrutierungsstand" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Number Search"](http://hl7.org/fhir/R4/search.html#number).
1. Der Suchparameter "rekrutierungsstand-rekrutierungsziel" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?rekrutierungsziel=40`Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Rekrutierung.extension:rekrutierungsziel" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Number Search"](http://hl7.org/fhir/R4/search.html#number).
1. Der Suchparameter "rekrutierungsstand-rekrutierungsstart" MUSS unterstützt werden:Beispiele`GET [base]/ResearchStudy?rekrutierungsstart=2023-01-12`Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Rekrutierung.extension:rekrutierungsstart" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

**Beispiele**

Beispiel: Empfohlene Studie für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.md))

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Studieneinschluss Anfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md)
* Examples for this Profile: [ResearchStudy/mii-exa-mtb-study-ccne1](ResearchStudy-mii-exa-mtb-study-ccne1.md), [ResearchStudy/mii-exa-mtb-study-cldn6](ResearchStudy-mii-exa-mtb-study-cldn6.md) and [ResearchStudy/mii-exa-mtb-study-tedova](ResearchStudy-mii-exa-mtb-study-tedova.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-studie.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Studie_Studie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.studie@2027.0.0-ballot.rc1&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Studie_Studie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.studie@2027.0.0-ballot.rc1&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie) 

** Summary **

Mandatory: 0 element(6 nested mandatory elements)
 Must-Support: 2 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ResearchStudy.identifier

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Studie_Studie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.studie@2027.0.0-ballot.rc1&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Studie_Studie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.studie@2027.0.0-ballot.rc1&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie) 

** Summary **

Mandatory: 0 element(6 nested mandatory elements)
 Must-Support: 2 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ResearchStudy.identifier

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-studie.csv), [Excel](../StructureDefinition-mii-pr-mtb-studie.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-studie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-studie",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Studie",
  "title" : "MII PR MTB Studie",
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
  "description" : "Onkologische Studie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "ResearchStudy",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ResearchStudy",
      "path" : "ResearchStudy"
    },
    {
      "id" : "ResearchStudy.meta",
      "path" : "ResearchStudy.meta",
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.meta.profile",
      "path" : "ResearchStudy.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "ResearchStudy.identifier",
      "path" : "ResearchStudy.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice für Identifikator eines Studienregisters bzw. studiendurchführenden Organisation anhand von `system`",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ResearchStudy.identifier:NCT",
      "path" : "ResearchStudy.identifier",
      "sliceName" : "NCT",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ResearchStudy.identifier:NCT.system",
      "path" : "ResearchStudy.identifier.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/modul-mtb/sid/nct"
    },
    {
      "id" : "ResearchStudy.identifier:NCT.value",
      "path" : "ResearchStudy.identifier.value",
      "min" : 1
    },
    {
      "id" : "ResearchStudy.identifier:DRKS",
      "path" : "ResearchStudy.identifier",
      "sliceName" : "DRKS",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ResearchStudy.identifier:DRKS.system",
      "path" : "ResearchStudy.identifier.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/drks"
    },
    {
      "id" : "ResearchStudy.identifier:DRKS.value",
      "path" : "ResearchStudy.identifier.value",
      "min" : 1
    },
    {
      "id" : "ResearchStudy.identifier:EudraCT",
      "path" : "ResearchStudy.identifier",
      "sliceName" : "EudraCT",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ResearchStudy.identifier:EudraCT.system",
      "path" : "ResearchStudy.identifier.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/sid/eudract"
    },
    {
      "id" : "ResearchStudy.identifier:EudraCT.value",
      "path" : "ResearchStudy.identifier.value",
      "min" : 1
    }]
  }
}

```
