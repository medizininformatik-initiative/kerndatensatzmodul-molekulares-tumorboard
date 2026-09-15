# DKTK/MASTER Whole-Genome/-Exome Sequencing - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2027.0.0-ballot.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **DKTK/MASTER Whole-Genome/-Exome Sequencing**

## DeviceDefinition: DKTK/MASTER Whole-Genome/-Exome Sequencing

-------

**German**

-------

Profile: [MII PR MTB Panel DeviceDefinition](StructureDefinition-mii-pr-mtb-panel-devicedefinition.md)

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | DKTK/MASTER Whole-Genome/-Exome Sequencing | User Friendly name |

**type**: Genpanel

**version**: Stand 02-2026

> **capability****type**: SNV-Detektion

> **capability****type**: Fusions-Detektion

> **capability****type**: Deletions-Detektion

> **capability****type**: Amplifikations-Detektion

> **capability****type**: Ueberexpressions-Detektion

> **capability****type**: Signatur-Detektion

**url**: [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-master](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-master)

**onlineInformation**: [https://pathologie-ccm.charite.de/fileadmin/user_upload/microsites/m_cc05/pathologie-ccm/00_formulare_documente/00_molekularpathologie/Anlage_Genlisten_NGS-Panel.pdf](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://pathologie-ccm.charite.de/fileadmin/user_upload/microsites/m_cc05/pathologie-ccm/00_formulare_documente/00_molekularpathologie/Anlage_Genlisten_NGS-Panel.pdf)

**note**: 

> 

Analyse im DKTK/MASTER-Programm; genomweit, keine endliche Panelliste (all_assessed).




## Resource Content

```json
{
  "resourceType" : "DeviceDefinition",
  "id" : "mii-dd-mtb-panel-master",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-panel-devicedefinition"]
  },
  "deviceName" : [{
    "name" : "DKTK/MASTER Whole-Genome/-Exome Sequencing",
    "type" : "user-friendly-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-genomicanalysis-devicefunction",
      "code" : "gene-panel"
    }]
  },
  "version" : ["Stand 02-2026"],
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
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-panel-capability",
        "code" : "overexpression-detection"
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/DeviceDefinition/mii-dd-mtb-panel-master",
  "onlineInformation" : "https://pathologie-ccm.charite.de/fileadmin/user_upload/microsites/m_cc05/pathologie-ccm/00_formulare_documente/00_molekularpathologie/Anlage_Genlisten_NGS-Panel.pdf",
  "note" : [{
    "text" : "Analyse im DKTK/MASTER-Programm; genomweit, keine endliche Panelliste (all_assessed)."
  }]
}

```
