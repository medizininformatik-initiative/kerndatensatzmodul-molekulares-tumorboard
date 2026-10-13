# Oncomine Focus Assay Plus - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Oncomine Focus Assay Plus**

## DeviceDefinition: Oncomine Focus Assay Plus

-------

**English**

-------

Profile: [MII PR MTB Panel DeviceDefinition](StructureDefinition-mii-pr-mtb-panel-devicedefinition.md)

> **MII EX MTB Panel Gene List**
* geneList: [MII VS MTB Panel OFA plus](ValueSet-mii-vs-mtb-panel-ofa-plus.md)
* scope: SNV-Detektion

> **MII EX MTB Panel Gene List**
* geneList: [MII VS MTB Panel OFA plus](ValueSet-mii-vs-mtb-panel-ofa-plus.md)
* scope: Fusions-Detektion

**manufacturer**: Thermo Fisher Scientific

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Oncomine Focus Assay Plus | User Friendly name |

**type**: Genpanel

> **capability****type**: SNV-Detektion

> **capability****type**: Fusions-Detektion

**url**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-ofa-plus](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-ofa-plus)

**onlineInformation**: [https://documents.thermofisher.com/TFS-Assets/GSD/Product-Information/oca-plus-gene-list.pdf](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://documents.thermofisher.com/TFS-Assets/GSD/Product-Information/oca-plus-gene-list.pdf)

**note**: 

> 

517 Gene; SNVs + Fusionen.




## Resource Content

```json
{
  "resourceType" : "DeviceDefinition",
  "id" : "mii-dd-mtb-panel-ofa-plus",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "geneList",
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-ofa-plus"
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
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-ofa-plus"
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
  "manufacturerString" : "Thermo Fisher Scientific",
  "deviceName" : [{
    "name" : "Oncomine Focus Assay Plus",
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
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-ofa-plus",
  "onlineInformation" : "https://documents.thermofisher.com/TFS-Assets/GSD/Product-Information/oca-plus-gene-list.pdf",
  "note" : [{
    "text" : "517 Gene; SNVs + Fusionen."
  }]
}

```
