# FusionPlex Archer Lung V2 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FusionPlex Archer Lung V2**

## DeviceDefinition: FusionPlex Archer Lung V2

-------

**English**

-------

Profile: [MII PR MTB Panel DeviceDefinition](StructureDefinition-mii-pr-mtb-panel-devicedefinition.md)

> **MII EX MTB Panel Gene List**
* geneList: [MII VS MTB Panel Archer](ValueSet-mii-vs-mtb-panel-archer-lung-v2.md)
* scope: Fusions-Detektion

**manufacturer**: Integrated DNA Technologies (ArcherDX)

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | FusionPlex Archer Lung V2 | User Friendly name |

**type**: Genpanel

### Capabilities

| | |
| :--- | :--- |
| - | **Type** |
| * | Fusions-Detektion |

**url**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-archer-lung-v2](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-archer-lung-v2)

**onlineInformation**: [https://eu.idtdna.com/pages/products/next-generation-sequencing/archer-ngs-assay-solutions/solid-tumor-research/archer-fusionplex-lung-v2-panel](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://eu.idtdna.com/pages/products/next-generation-sequencing/archer-ngs-assay-solutions/solid-tumor-research/archer-fusionplex-lung-v2-panel)

**note**: 

> 

Fusionsanalyse, 17 Gene.




## Resource Content

```json
{
  "resourceType" : "DeviceDefinition",
  "id" : "mii-dd-mtb-panel-archer-lung-v2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "geneList",
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-archer-lung-v2"
    },
    {
      "url" : "scope",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability",
          "code" : "fusion-detection"
        }]
      }
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-panel-gene-list"
  }],
  "manufacturerString" : "Integrated DNA Technologies (ArcherDX)",
  "deviceName" : [{
    "name" : "FusionPlex Archer Lung V2",
    "type" : "user-friendly-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-genomicanalysis-devicefunction",
      "code" : "gene-panel"
    }]
  },
  "capability" : [{
    "type" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability",
        "code" : "fusion-detection"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-archer-lung-v2",
  "onlineInformation" : "https://eu.idtdna.com/pages/products/next-generation-sequencing/archer-ngs-assay-solutions/solid-tumor-research/archer-fusionplex-lung-v2-panel",
  "note" : [{
    "text" : "Fusionsanalyse, 17 Gene."
  }]
}

```
