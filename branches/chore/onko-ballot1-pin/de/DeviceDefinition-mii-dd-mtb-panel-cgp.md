# SureSelect Cancer CGP Assay - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **SureSelect Cancer CGP Assay**

## DeviceDefinition: SureSelect Cancer CGP Assay

-------

**German**

-------

Profile: [MII PR MTB Panel DeviceDefinition](StructureDefinition-mii-pr-mtb-panel-devicedefinition.md)

> **MII EX MTB Panel Gene List**
* geneList: [MII VS MTB Panel CGP](ValueSet-mii-vs-mtb-panel-cgp.md)
* scope: SNV-Detektion

**manufacturer**: Agilent Technologies

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | SureSelect Cancer CGP Assay | User Friendly name |

**type**: Genpanel

### Capabilities

| | |
| :--- | :--- |
| - | **Type** |
| * | SNV-Detektion |

**url**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-cgp](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-cgp)

**onlineInformation**: [https://pathologie-ccm.charite.de/fileadmin/user_upload/microsites/m_cc05/pathologie-ccm/00_formulare_documente/00_molekularpathologie/Anlage_Genlisten_NGS-Panel.pdf](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://pathologie-ccm.charite.de/fileadmin/user_upload/microsites/m_cc05/pathologie-ccm/00_formulare_documente/00_molekularpathologie/Anlage_Genlisten_NGS-Panel.pdf)

**note**: 

> 

602 Gene; nur SNVs.




## Resource Content

```json
{
  "resourceType" : "DeviceDefinition",
  "id" : "mii-dd-mtb-panel-cgp",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "geneList",
      "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-cgp"
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
  "manufacturerString" : "Agilent Technologies",
  "deviceName" : [{
    "name" : "SureSelect Cancer CGP Assay",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-cgp",
  "onlineInformation" : "https://pathologie-ccm.charite.de/fileadmin/user_upload/microsites/m_cc05/pathologie-ccm/00_formulare_documente/00_molekularpathologie/Anlage_Genlisten_NGS-Panel.pdf",
  "note" : [{
    "text" : "602 Gene; nur SNVs."
  }]
}

```
