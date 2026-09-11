# MII EX MTB Leitlinienbehandlung Status - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX MTB Leitlinienbehandlung Status**

## Extension: MII EX MTB Leitlinienbehandlung Status 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinienbehandlung-status | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_EX_MTB_Leitlinienbehandlung_Status |

Status der Behandlung nach Leitlinie

**Context of Use**

### Inhalt

Dieses Erweiterung beschreibt den Status der Leitlinienbehandlung. Es handelt sich dabei um eine von den MTB-Ärzt*innen vorgenommene Einordnung der Ausschöpfung der zutreffenden Leitlinien, die teils fast oder vollständig ausgeschöpft sind, teils nicht angewendet werden können und teils.

Die Ausschöpfung der Therapien ist bspw. ein Kriterium zum Einschluss ins Modellvorhaben Genomsequenzierung nach SGB V §64e.

### Inhalt

[mii-cs-mtb-leitlinienbehandlung-status](CodeSystem-mii-cs-mtb-leitlinienbehandlung-status.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR MTB Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md)
* Examples for this Extension: [ClinicalImpression/mii-exa-mtb-behandlungsepisode-1](ClinicalImpression-mii-exa-mtb-behandlungsepisode-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-ex-mtb-leitlinienbehandlung-status.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type Coding: Status der Behandlung nach Leitlinie

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type Coding: Status der Behandlung nach Leitlinie

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-mtb-leitlinienbehandlung-status.csv), [Excel](../StructureDefinition-mii-ex-mtb-leitlinienbehandlung-status.xlsx), [Schematron](../StructureDefinition-mii-ex-mtb-leitlinienbehandlung-status.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-mtb-leitlinienbehandlung-status",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinienbehandlung-status",
  "version" : "2026.0.1",
  "name" : "MII_EX_MTB_Leitlinienbehandlung_Status",
  "title" : "MII EX MTB Leitlinienbehandlung Status",
  "status" : "active",
  "date" : "2026-09-11T15:11:15+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Status der Behandlung nach Leitlinie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "ClinicalImpression"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX MTB Leitlinienbehandlung Status",
      "definition" : "Status der Behandlung nach Leitlinie"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinienbehandlung-status"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Leitlinienbehandlungsstatus",
      "definition" : "Status der Behandlung nach Leitline zum Zeitpunkt des Einschlusses ins MTB",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].system",
      "path" : "Extension.value[x].system",
      "min" : 1,
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-leitlinienbehandlung-status",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].code",
      "path" : "Extension.value[x].code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-leitlinienbehandlung-status"
      }
    }]
  }
}

```
