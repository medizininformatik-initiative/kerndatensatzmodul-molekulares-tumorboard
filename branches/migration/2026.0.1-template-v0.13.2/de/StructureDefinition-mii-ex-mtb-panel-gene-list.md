# MII EX MTB Panel Gene List - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX MTB Panel Gene List**

## Extension: MII EX MTB Panel Gene List 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-panel-gene-list | *Version*:2026.0.1 |
| Active Stand: 2026-09-14 | *Maschinenlesbarer Name*:MII_EX_MTB_Panel_Gene_List |

Genliste eines Sequenzier-Panels als Kanonische Referenz auf ein ValueSet mit HGNC-Genen, optional nach analytischem Scope (SNV/Fusion) unterschieden.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR MTB Panel DeviceDefinition](StructureDefinition-mii-pr-mtb-panel-devicedefinition.md)
* Examples for this Extension: [DeviceDefinition/mii-dd-mtb-panel-archer-lung-v2](DeviceDefinition-mii-dd-mtb-panel-archer-lung-v2.md), [DeviceDefinition/mii-dd-mtb-panel-basic-ngs](DeviceDefinition-mii-dd-mtb-panel-basic-ngs.md), [DeviceDefinition/mii-dd-mtb-panel-cgp](DeviceDefinition-mii-dd-mtb-panel-cgp.md), [DeviceDefinition/mii-dd-mtb-panel-dhs-3501z](DeviceDefinition-mii-dd-mtb-panel-dhs-3501z.md)... Show 5 more, [DeviceDefinition/mii-dd-mtb-panel-mh600plus](DeviceDefinition-mii-dd-mtb-panel-mh600plus.md), [DeviceDefinition/mii-dd-mtb-panel-ofa-plus](DeviceDefinition-mii-dd-mtb-panel-ofa-plus.md), [DeviceDefinition/mii-dd-mtb-panel-ofa](DeviceDefinition-mii-dd-mtb-panel-ofa.md), [DeviceDefinition/mii-dd-mtb-panel-tcm-ngs](DeviceDefinition-mii-dd-mtb-panel-tcm-ngs.md) and [DeviceDefinition/mii-dd-mtb-panel-tso-500](DeviceDefinition-mii-dd-mtb-panel-tso-500.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-ex-mtb-panel-gene-list.json)

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

Complex Extension: Genliste eines Sequenzier-Panels als Kanonische Referenz auf ein ValueSet mit HGNC-Genen, optional nach analytischem Scope (SNV/Fusion) unterschieden.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: Genliste eines Sequenzier-Panels als Kanonische Referenz auf ein ValueSet mit HGNC-Genen, optional nach analytischem Scope (SNV/Fusion) unterschieden.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-mtb-panel-gene-list.csv), [Excel](../StructureDefinition-mii-ex-mtb-panel-gene-list.xlsx), [Schematron](../StructureDefinition-mii-ex-mtb-panel-gene-list.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-mtb-panel-gene-list",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-panel-gene-list",
  "version" : "2026.0.1",
  "name" : "MII_EX_MTB_Panel_Gene_List",
  "title" : "MII EX MTB Panel Gene List",
  "status" : "active",
  "date" : "2026-09-14T12:20:33+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Genliste eines Sequenzier-Panels als Kanonische Referenz auf ein ValueSet mit HGNC-Genen, optional nach analytischem Scope (SNV/Fusion) unterschieden.",
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
    "expression" : "DeviceDefinition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX MTB Panel Gene List",
      "definition" : "Genliste eines Sequenzier-Panels als Kanonische Referenz auf ein ValueSet mit HGNC-Genen, optional nach analytischem Scope (SNV/Fusion) unterschieden."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:geneList",
      "path" : "Extension.extension",
      "sliceName" : "geneList",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:geneList.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:geneList.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "geneList"
    },
    {
      "id" : "Extension.extension:geneList.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "canonical"
      }]
    },
    {
      "id" : "Extension.extension:scope",
      "path" : "Extension.extension",
      "sliceName" : "scope",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:scope.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:scope.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "scope"
    },
    {
      "id" : "Extension.extension:scope.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-capability"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-panel-gene-list"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
