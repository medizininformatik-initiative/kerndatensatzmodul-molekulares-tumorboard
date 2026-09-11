# MII PR MTB Tumorzellgehalt - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Tumorzellgehalt**

## Ressourcenprofil: MII PR MTB Tumorzellgehalt 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_Tumorzellgehalt |

 
Bestimmter Tumorzellgehalt 

-------

### Inhalt

Dieses Profil beschreibt den **bioinformatisch** oder **histologisch** bestimmten Tumorzellgehalt.

Je nach Methodik kann dieser entweder als Teil einer bioinformatischen NGS-Analyse erfolgen, oder klassisch durch lichtmikroskopische Untersuchung in der Pathologie. Die Art des Nachweises wird unter `method` kodiert.

Ein hoher Tumorzellgehalt ist ausschlaggebend für die Qualität des Sequenzierprozesses und einen ausreichend präzisen Nachweis von Allelfrequenzen und Varianten.

### Verknüpfungen zu anderen Ressourcen

Der Tumorzellgehalt kann sowohl von einem NGS- als auch molekularpathologischen Bericht über `DiagnosticReport.result` verlinkt sein. Zusätzlich kanne eine Rebiopsie über `ServiceRequest.supportingInfo` auf eine Tumorzellgehalt-Observation verlinken, wenn der Grund der Rebiopsie in einem zu niedrigen Tumorzellgehalt der ursprünglichen Probe liegt.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für diese Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "identifier" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?identifier=123456`Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "based-on" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?based-on=ServiceRequest/example`Anwendungshinweise: Weitere Informationen zur Suche nach "based-on" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?status=final`Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "category" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory`Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?code=http://loinc.org|93356-4`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "date" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?date=eq2021-06-10`Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "component-value-quantity" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?component-value-quantity=le20|http://unitsofmeasure.org|%`Anwendungshinweise: Weitere Informationen zur Suche nach "component-value-quantity" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Quantity Search"](https://hl7.org/fhir/R4/search.html#quantity).
1. Der Suchparameter "body-site" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?body-site=http://snomed.info/sct|430304001`Anwendungshinweise: Weitere Informationen zur Suche nach "body-site" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "method" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?method=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-bestimmungsmethode-tumorzellgehalt|histologic`Anwendungshinweise: Weitere Informationen zur Suche nach "method" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "specimen" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?specimen=Specimen/example`Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "has-member" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?has-member=Observation/example`Anwendungshinweise: Weitere Informationen zur Suche nach "has-member" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "derived-from" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?derived-from=ImagingStudy/example`Anwendungshinweise: Weitere Informationen zur Suche nach "derived-from" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

**Beispiele**

Beispiel: Beschluss MTB-Fall für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.md))

[mii-cs-mtb-bestimmungsmethode-tumorzellgehalt](CodeSystem-mii-cs-mtb-bestimmungsmethode-tumorzellgehalt.md)

**Usages:**

* Refer to this Profile: [MII PR MTB Biopsie Auftrag](StructureDefinition-mii-pr-mtb-biopsie-auftrag.md) and [MII PR MTB Histologie-Evaluation Auftrag](StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.md)
* Examples for this Profile: [Observation/mii-exa-mtb-kim-tumorzellgehalt-aszites](Observation-mii-exa-mtb-kim-tumorzellgehalt-aszites.md)
* CapabilityStatements using this Profile: [MII CPS MTB CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-tumorzellgehalt.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 3 elements
 Must-Support: 5 elements

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 3 elements
 Must-Support: 5 elements

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-tumorzellgehalt.csv), [Excel](../StructureDefinition-mii-pr-mtb-tumorzellgehalt.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-tumorzellgehalt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-tumorzellgehalt",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Tumorzellgehalt",
  "title" : "MII PR MTB Tumorzellgehalt",
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
  "description" : "Bestimmter Tumorzellgehalt",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.meta",
      "path" : "Observation.meta",
      "mustSupport" : true
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category.coding",
      "path" : "Observation.category.coding",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
        "code" : "laboratory",
        "display" : "Laboratory"
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "93356-4",
          "display" : "Cells with cytogenetic abnormality [#] in Blood or Tissue by Molecular genetics method"
        }]
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].value",
      "path" : "Observation.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "patternString" : "percent"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "patternCode" : "%"
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-bestimmungsmethode-tumorzellgehalt"
      }
    }]
  }
}

```
