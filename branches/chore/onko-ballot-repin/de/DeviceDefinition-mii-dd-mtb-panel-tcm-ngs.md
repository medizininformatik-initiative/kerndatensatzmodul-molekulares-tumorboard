# TCM NGS Panel - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **TCM NGS Panel**

## DeviceDefinition: TCM NGS Panel

-------

**German**

-------

Profile: [MII PR MTB Panel DeviceDefinition](StructureDefinition-mii-pr-mtb-panel-devicedefinition.md)

> **MII EX MTB Panel Gene List**
* geneList: [MII VS MTB Panel TCM NGS](ValueSet-mii-vs-mtb-panel-tcm-ngs.md)
* scope: SNV-Detektion

> **MII EX MTB Panel Gene List**
* geneList: [MII VS MTB Panel TCM NGS](ValueSet-mii-vs-mtb-panel-tcm-ngs.md)
* scope: Fusions-Detektion

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | TCM NGS Panel | User Friendly name |

**type**: Genpanel

> **capability****type**: SNV-Detektion

> **capability****type**: Fusions-Detektion

**url**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-tcm-ngs](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-tcm-ngs)

**onlineInformation**: [https://documents.thermofisher.com/TFS-Assets/LSG/brochures/CO25560_Ion_AmpliSeq_Comprehensive_Cancer_Panel_Gene_List_final9062012.pdf](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://documents.thermofisher.com/TFS-Assets/LSG/brochures/CO25560_Ion_AmpliSeq_Comprehensive_Cancer_Panel_Gene_List_final9062012.pdf)

**note**: 

> 

409 Gene; SNVs + Fusionen.




## Resource Content

```json
{
  "resourceType" : "DeviceDefinition",
  "id" : "mii-dd-mtb-panel-tcm-ngs",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "geneList",
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tcm-ngs"
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
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tcm-ngs"
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
  "deviceName" : [{
    "name" : "TCM NGS Panel",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-tcm-ngs",
  "onlineInformation" : "https://documents.thermofisher.com/TFS-Assets/LSG/brochures/CO25560_Ion_AmpliSeq_Comprehensive_Cancer_Panel_Gene_List_final9062012.pdf",
  "note" : [{
    "text" : "409 Gene; SNVs + Fusionen."
  }]
}

```
