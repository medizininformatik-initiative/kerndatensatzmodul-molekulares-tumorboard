# Whole Genome Sequencing (generisch) - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Whole Genome Sequencing (generisch)**

## DeviceDefinition: Whole Genome Sequencing (generisch)

-------

**English**

-------

Profile: [MII PR MTB Panel DeviceDefinition](StructureDefinition-mii-pr-mtb-panel-devicedefinition.md)

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Whole Genome Sequencing (generisch) | User Friendly name |

**type**: Genpanel

> **capability****type**: SNV-Detektion

> **capability****type**: Fusions-Detektion

> **capability****type**: Deletions-Detektion

> **capability****type**: Amplifikations-Detektion

**url**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-wgs](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-wgs)

**note**: 

> 

Genomweite Sequenzierung; keine endliche Panelliste (all_assessed).




## Resource Content

```json
{
  "resourceType" : "DeviceDefinition",
  "id" : "mii-dd-mtb-panel-wgs",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition"]
  },
  "deviceName" : [{
    "name" : "Whole Genome Sequencing (generisch)",
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
        "code" : "snv-detection"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability",
        "code" : "fusion-detection"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability",
        "code" : "deletion-detection"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability",
        "code" : "amplification-detection"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-wgs",
  "note" : [{
    "text" : "Genomweite Sequenzierung; keine endliche Panelliste (all_assessed)."
  }]
}

```
