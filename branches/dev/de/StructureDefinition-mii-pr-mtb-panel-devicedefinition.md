# MII PR MTB Panel DeviceDefinition - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB Panel DeviceDefinition**

## Ressourcenprofil: MII PR MTB Panel DeviceDefinition 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition | *Version*:2026.0.1 |
| Active Stand: 2026-09-15 | *Maschinenlesbarer Name*:MII_PR_MTB_Panel_DeviceDefinition |

 
Katalog-Template eines Sequenzier-Panel-Produkts (Genpanel): Hersteller, Produktname/Version, analytische Faehigkeiten und Genliste(n). Konkrete Geraete/Kits einer Einrichtung verweisen via Device.definition auf ihr Template. 

> **Written during migration - review before release.** Neuer Modellierungsvorschlag (2026-09-14): der Panel-Produktkatalog als DeviceDefinition-Templates, generiert aus dem Panel-Metadaten-Inventar des Modulteams. Vor Release prüfen.

### Inhalt

Dieses Profil trägt den **Sequenzier-Panel-Produktkatalog** auf **Definitionsebene**: je Panel-Produkt ein DeviceDefinition-Template (Hersteller, Produktname/Version, analytische Fähigkeiten und die Genliste(n) des Panels als kanonische Referenzen auf HGNC-ValueSets — nach SNV- und Fusions-Scope getrennt, wo das Produkt sie unterscheidet).

Die konkrete Geräte-/Kit-Instanz einer Einrichtung verweist via `Device.definition` auf ihr Template und hängt wie bisher über die Genomics-Reporting-Extension `genomic-study-analysis-device` am Sequenzier-Workflow.

Der mitgelieferte Katalog umfasst elf Produkte (Oncomine Focus/Focus Plus, Qiagen DHS-3501Z, Agilent MH IVD 600+ und SureSelect Cancer CGP, DKTK/MASTER WGS, generisches WGS, FusionPlex Archer Lung V2, TCM NGS, Basic-NGS, TruSight Oncology 500) mit neun Genlisten-ValueSets (17–602 Gene, kodiert mit stabilen HGNC-IDs; Displays sind die aktuellen Approved-Symbole, veraltete Quellsymbole wurden gemappt und annotiert).

**Usages:**

* Examples for this Profile: [DeviceDefinition/mii-dd-mtb-panel-archer-lung-v2](DeviceDefinition-mii-dd-mtb-panel-archer-lung-v2.md), [DeviceDefinition/mii-dd-mtb-panel-basic-ngs](DeviceDefinition-mii-dd-mtb-panel-basic-ngs.md), [DeviceDefinition/mii-dd-mtb-panel-cgp](DeviceDefinition-mii-dd-mtb-panel-cgp.md), [DeviceDefinition/mii-dd-mtb-panel-dhs-3501z](DeviceDefinition-mii-dd-mtb-panel-dhs-3501z.md)... Show 7 more, [DeviceDefinition/mii-dd-mtb-panel-master](DeviceDefinition-mii-dd-mtb-panel-master.md), [DeviceDefinition/mii-dd-mtb-panel-mh600plus](DeviceDefinition-mii-dd-mtb-panel-mh600plus.md), [DeviceDefinition/mii-dd-mtb-panel-ofa-plus](DeviceDefinition-mii-dd-mtb-panel-ofa-plus.md), [DeviceDefinition/mii-dd-mtb-panel-ofa](DeviceDefinition-mii-dd-mtb-panel-ofa.md), [DeviceDefinition/mii-dd-mtb-panel-tcm-ngs](DeviceDefinition-mii-dd-mtb-panel-tcm-ngs.md), [DeviceDefinition/mii-dd-mtb-panel-tso-500](DeviceDefinition-mii-dd-mtb-panel-tso-500.md) and [DeviceDefinition/mii-dd-mtb-panel-wgs](DeviceDefinition-mii-dd-mtb-panel-wgs.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-panel-devicedefinition.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DeviceDefinition](http://hl7.org/fhir/R4/devicedefinition.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DeviceDefinition](http://hl7.org/fhir/R4/devicedefinition.html) 

** Summary **

Mandatory: 2 elements
 Must-Support: 13 elements

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-panel-gene-list](StructureDefinition-mii-ex-mtb-panel-gene-list.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [DeviceDefinition](http://hl7.org/fhir/R4/devicedefinition.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DeviceDefinition](http://hl7.org/fhir/R4/devicedefinition.html) 

** Summary **

Mandatory: 2 elements
 Must-Support: 13 elements

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-panel-gene-list](StructureDefinition-mii-ex-mtb-panel-gene-list.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-panel-devicedefinition.csv), [Excel](../StructureDefinition-mii-pr-mtb-panel-devicedefinition.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-panel-devicedefinition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-panel-devicedefinition",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Panel_DeviceDefinition",
  "title" : "MII PR MTB Panel DeviceDefinition",
  "status" : "active",
  "date" : "2026-09-15T04:08:55+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Katalog-Template eines Sequenzier-Panel-Produkts (Genpanel): Hersteller, Produktname/Version, analytische Faehigkeiten und Genliste(n). Konkrete Geraete/Kits einer Einrichtung verweisen via Device.definition auf ihr Template.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DeviceDefinition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DeviceDefinition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DeviceDefinition",
      "path" : "DeviceDefinition"
    },
    {
      "id" : "DeviceDefinition.meta",
      "path" : "DeviceDefinition.meta",
      "mustSupport" : true
    },
    {
      "id" : "DeviceDefinition.meta.profile",
      "path" : "DeviceDefinition.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "DeviceDefinition.extension",
      "path" : "DeviceDefinition.extension",
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
      "id" : "DeviceDefinition.extension:geneList",
      "path" : "DeviceDefinition.extension",
      "sliceName" : "geneList",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-panel-gene-list"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DeviceDefinition.manufacturer[x]",
      "path" : "DeviceDefinition.manufacturer[x]",
      "mustSupport" : true
    },
    {
      "id" : "DeviceDefinition.deviceName",
      "path" : "DeviceDefinition.deviceName",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DeviceDefinition.deviceName.name",
      "path" : "DeviceDefinition.deviceName.name",
      "mustSupport" : true
    },
    {
      "id" : "DeviceDefinition.deviceName.type",
      "path" : "DeviceDefinition.deviceName.type",
      "mustSupport" : true
    },
    {
      "id" : "DeviceDefinition.type",
      "path" : "DeviceDefinition.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-genomicanalysis-devicefunction",
          "code" : "gene-panel"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DeviceDefinition.version",
      "path" : "DeviceDefinition.version",
      "mustSupport" : true
    },
    {
      "id" : "DeviceDefinition.capability",
      "path" : "DeviceDefinition.capability",
      "mustSupport" : true
    },
    {
      "id" : "DeviceDefinition.capability.type",
      "path" : "DeviceDefinition.capability.type",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-capability"
      }
    },
    {
      "id" : "DeviceDefinition.onlineInformation",
      "path" : "DeviceDefinition.onlineInformation",
      "short" : "Herstellerseite / Produktdokumentation",
      "mustSupport" : true
    },
    {
      "id" : "DeviceDefinition.note",
      "path" : "DeviceDefinition.note",
      "mustSupport" : true
    }]
  }
}

```
