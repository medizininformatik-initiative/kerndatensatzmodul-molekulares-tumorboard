# TruSight Oncology 500 - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TruSight Oncology 500**

## DeviceDefinition: TruSight Oncology 500

-------

**English**

-------

Profile: [MII PR MTB Panel DeviceDefinition](StructureDefinition-mii-pr-mtb-panel-devicedefinition.md)

> **MII EX MTB Panel Gene List**
* geneList: [MII VS MTB Panel TSO 500 SNVs](ValueSet-mii-vs-mtb-panel-tso-500-snv.md)
* scope: SNV-Detektion

> **MII EX MTB Panel Gene List**
* geneList: [MII VS MTB Panel TSO 500 Fusions](ValueSet-mii-vs-mtb-panel-tso-500-fusion.md)
* scope: Fusions-Detektion

**manufacturer**: Illumina

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | TruSight Oncology 500 | User Friendly name |

**type**: Genpanel

> **capability****type**: SNV-Detektion

> **capability****type**: Fusions-Detektion

> **capability****type**: Signatur-Detektion

**url**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-tso-500](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-tso-500)

**onlineInformation**: [https://www.illumina.com/products/by-type/clinical-research-products/trusight-oncology-500.html](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.illumina.com/products/by-type/clinical-research-products/trusight-oncology-500.html)

**note**: 

> 

523 SNV-Gene, 55 Fusions-Gene; misst u. a. auch TMB/MSI.




## Resource Content

```json
{
  "resourceType" : "DeviceDefinition",
  "id" : "mii-dd-mtb-panel-tso-500",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "geneList",
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tso-500-snv"
    },
    {
      "url" : "scope",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability",
          "code" : "snv-detection"
        }]
      }
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-panel-gene-list"
  },
  {
    "extension" : [{
      "url" : "geneList",
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tso-500-fusion"
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
  "manufacturerString" : "Illumina",
  "deviceName" : [{
    "name" : "TruSight Oncology 500",
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
        "code" : "signature-detection"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-tso-500",
  "onlineInformation" : "https://www.illumina.com/products/by-type/clinical-research-products/trusight-oncology-500.html",
  "note" : [{
    "text" : "523 SNV-Gene, 55 Fusions-Gene; misst u. a. auch TMB/MSI."
  }]
}

```
