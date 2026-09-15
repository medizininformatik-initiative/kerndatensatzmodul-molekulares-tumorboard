# Basic-NGS Panel - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Basic-NGS Panel**

## DeviceDefinition: Basic-NGS Panel

-------

**German**

-------

Profile: [MII PR MTB Panel DeviceDefinition](StructureDefinition-mii-pr-mtb-panel-devicedefinition.md)

> **MII EX MTB Panel Gene List**
* geneList: [MII VS MTB Panel Basic-NGS](ValueSet-mii-vs-mtb-panel-basic-ngs.md)
* scope: SNV-Detektion

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Basic-NGS Panel | User Friendly name |

**type**: Genpanel

### Capabilities

| | |
| :--- | :--- |
| - | **Type** |
| * | SNV-Detektion |

**url**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-basic-ngs](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-basic-ngs)

**onlineInformation**: [https://pathologie-ccm.charite.de/fileadmin/user_upload/microsites/m_cc05/pathologie-ccm/00_formulare_documente/00_molekularpathologie/Anlage_Genlisten_NGS-Panel.pdf](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://pathologie-ccm.charite.de/fileadmin/user_upload/microsites/m_cc05/pathologie-ccm/00_formulare_documente/00_molekularpathologie/Anlage_Genlisten_NGS-Panel.pdf)

**note**: 

> 

36 Gene; nur SNVs.




## Resource Content

```json
{
  "resourceType" : "DeviceDefinition",
  "id" : "mii-dd-mtb-panel-basic-ngs",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "geneList",
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-basic-ngs"
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
  "deviceName" : [{
    "name" : "Basic-NGS Panel",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-basic-ngs",
  "onlineInformation" : "https://pathologie-ccm.charite.de/fileadmin/user_upload/microsites/m_cc05/pathologie-ccm/00_formulare_documente/00_molekularpathologie/Anlage_Genlisten_NGS-Panel.pdf",
  "note" : [{
    "text" : "36 Gene; nur SNVs."
  }]
}

```
