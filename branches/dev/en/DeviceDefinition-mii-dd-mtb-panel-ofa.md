# Oncomine Focus Assay - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Oncomine Focus Assay**

## DeviceDefinition: Oncomine Focus Assay

-------

**English**

-------

Profile: [MII PR MTB Panel DeviceDefinition](StructureDefinition-mii-pr-mtb-panel-devicedefinition.md)

> **MII EX MTB Panel Gene List**
* geneList: [MII VS MTB Panel OFA](ValueSet-mii-vs-mtb-panel-ofa.md)
* scope: SNV-Detektion

> **MII EX MTB Panel Gene List**
* geneList: [MII VS MTB Panel OFA](ValueSet-mii-vs-mtb-panel-ofa.md)
* scope: Fusions-Detektion

**manufacturer**: Thermo Fisher Scientific

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Oncomine Focus Assay | User Friendly name |

**type**: Genpanel

> **capability****type**: SNV-Detektion

> **capability****type**: Fusions-Detektion

**url**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-ofa](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-ofa)

**onlineInformation**: [https://www.thermofisher.com/de/de/home/clinical/preclinical-companion-diagnostic-development/oncomine-oncology/oncomine-focus-assay.html](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.thermofisher.com/de/de/home/clinical/preclinical-companion-diagnostic-development/oncomine-oncology/oncomine-focus-assay.html)

**note**: 

> 

DNA + RNA, 52 Gene; SNVs + Fusionen.




## Resource Content

```json
{
  "resourceType" : "DeviceDefinition",
  "id" : "mii-dd-mtb-panel-ofa",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "geneList",
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-ofa"
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
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-ofa"
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
    "name" : "Oncomine Focus Assay",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-ofa",
  "onlineInformation" : "https://www.thermofisher.com/de/de/home/clinical/preclinical-companion-diagnostic-development/oncomine-oncology/oncomine-focus-assay.html",
  "note" : [{
    "text" : "DNA + RNA, 52 Gene; SNVs + Fusionen."
  }]
}

```
