# MII CS GenomicAnalysis DeviceType - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS GenomicAnalysis DeviceType**

## CodeSystem: MII CS GenomicAnalysis DeviceType 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-genomicanalysis-devicefunction | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_CS_MTB_GenomicStudyAnalysis_DeviceFunction |

 
Codesystem, welches verschiedene Molekulare Biomarker enthäldie verschiedenen Arten von Geräten und Produkten enthält, die im Rahmen einer NGS-Analyse genutzt werden 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-genomicanalysis-devicefunction",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-genomicanalysis-devicefunction",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_GenomicStudyAnalysis_DeviceFunction",
  "title" : "MII CS GenomicAnalysis DeviceType",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T15:11:15+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Codesystem, welches verschiedene Molekulare Biomarker enthäldie verschiedenen Arten von Geräten und Produkten enthält, die im Rahmen einer NGS-Analyse genutzt werden",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "sequencing-device",
    "display" : "Sequenziergerät"
  },
  {
    "code" : "sequencing-kit",
    "display" : "Sequenzier-Kit"
  },
  {
    "code" : "library-preparation-kit",
    "display" : "Library-Preparation Kit"
  }]
}

```
