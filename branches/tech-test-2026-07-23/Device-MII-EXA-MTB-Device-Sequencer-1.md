# Beispiel fuer einen Sequencer - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel fuer einen Sequencer**

## Example Device: Beispiel fuer einen Sequencer

Profiles: [Genomic Study Device](StructureDefinition-genomic-study-device.md), [https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-device|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-device|2026.0.1)

**manufacturer**: Illumina

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Illumina NovaSeq X Plus | User Friendly name |



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "MII-EXA-MTB-Device-Sequencer-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/genomic-study-device",
    "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-device|2026.0.1"]
  },
  "manufacturer" : "Illumina",
  "deviceName" : [{
    "name" : "Illumina NovaSeq X Plus",
    "type" : "user-friendly-name"
  }]
}

```
