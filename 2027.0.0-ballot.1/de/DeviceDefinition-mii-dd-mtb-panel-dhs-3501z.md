# Qiagen DHS-3501Z - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2027.0.0-ballot.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Qiagen DHS-3501Z**

## DeviceDefinition: Qiagen DHS-3501Z

-------

**German**

-------

Profile: [MII PR MTB Panel DeviceDefinition](StructureDefinition-mii-pr-mtb-panel-devicedefinition.md)

> **MII EX MTB Panel Gene List**
* geneList: [MII VS MTB Panel DHS-3501Z](ValueSet-mii-vs-mtb-panel-dhs-3501z.md)
* scope: SNV-Detektion

**manufacturer**: Qiagen

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Qiagen DHS-3501Z | User Friendly name |

**type**: Genpanel

### Capabilities

| | |
| :--- | :--- |
| - | **Type** |
| * | SNV-Detektion |

**url**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-dhs-3501z](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-dhs-3501z)

**onlineInformation**: [https://geneglobe.qiagen.com/us/product-groups/qiaseq-targeted-dna-panels/DHS-3501Z](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://geneglobe.qiagen.com/us/product-groups/qiaseq-targeted-dna-panels/DHS-3501Z)

**note**: 

> 

275 Gene; nur SNVs (keine Fusionsanalyse).




## Resource Content

```json
{
  "resourceType" : "DeviceDefinition",
  "id" : "mii-dd-mtb-panel-dhs-3501z",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "geneList",
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-dhs-3501z"
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
  }],
  "manufacturerString" : "Qiagen",
  "deviceName" : [{
    "name" : "Qiagen DHS-3501Z",
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
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-dhs-3501z",
  "onlineInformation" : "https://geneglobe.qiagen.com/us/product-groups/qiaseq-targeted-dna-panels/DHS-3501Z",
  "note" : [{
    "text" : "275 Gene; nur SNVs (keine Fusionsanalyse)."
  }]
}

```
