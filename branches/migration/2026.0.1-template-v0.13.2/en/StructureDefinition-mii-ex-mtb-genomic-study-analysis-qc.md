# MII EX MTB Antrag GenomicsStudyAnalysis Metrics - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX MTB Antrag GenomicsStudyAnalysis Metrics**

## Extension: MII EX MTB Antrag GenomicsStudyAnalysis Metrics 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-genomic-study-analysis-qc | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_EX_MTB_GenomicStudyAnalysis_QC |

Sequenzierbezogenen Metriken der Genomic Study Analysis

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR MTB Genomic Study Analysis](StructureDefinition-mii-pr-mtb-genomic-study-analysis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-ex-mtb-genomic-study-analysis-qc.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-mtb-genomic-study-analysis-qc.csv), [Excel](../StructureDefinition-mii-ex-mtb-genomic-study-analysis-qc.xlsx), [Schematron](../StructureDefinition-mii-ex-mtb-genomic-study-analysis-qc.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-mtb-genomic-study-analysis-qc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-genomic-study-analysis-qc",
  "version" : "2026.0.1",
  "name" : "MII_EX_MTB_GenomicStudyAnalysis_QC",
  "title" : "MII EX MTB Antrag GenomicsStudyAnalysis Metrics",
  "status" : "active",
  "date" : "2026-09-11T14:44:50+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Sequenzierbezogenen Metriken der Genomic Study Analysis",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "extension",
    "expression" : "http://hl7.org/fhir/StructureDefinition/Extension"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX MTB Antrag GenomicsStudyAnalysis Metrics",
      "definition" : "Sequenzierbezogenen Metriken der Genomic Study Analysis"
    },
    {
      "id" : "Extension.extension:read-depth",
      "path" : "Extension.extension",
      "sliceName" : "read-depth",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:read-depth.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:read-depth.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "read-depth",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:read-depth.value[x]",
      "path" : "Extension.extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Extension.extension:read-depth.value[x]:valueQuantity",
      "path" : "Extension.extension.value[x]",
      "sliceName" : "valueQuantity",
      "short" : "Read Depth",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Lesetiefe"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Read Depth"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:read-length",
      "path" : "Extension.extension",
      "sliceName" : "read-length",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:read-length.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:read-length.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "read-length",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:read-length.value[x]",
      "path" : "Extension.extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Extension.extension:read-length.value[x]:valueQuantity",
      "path" : "Extension.extension.value[x]",
      "sliceName" : "valueQuantity",
      "short" : "Read Length",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Leselaenge"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Read Length"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:sequencing-coverage",
      "path" : "Extension.extension",
      "sliceName" : "sequencing-coverage",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:sequencing-coverage.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:sequencing-coverage.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "sequencing-coverage",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:sequencing-coverage.value[x]",
      "path" : "Extension.extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Extension.extension:sequencing-coverage.value[x]:valueQuantity",
      "path" : "Extension.extension.value[x]",
      "sliceName" : "valueQuantity",
      "short" : "Sequencing Coverage",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Sequenzierabdeckung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Sequencing Coverage"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:metrics-description",
      "path" : "Extension.extension",
      "sliceName" : "metrics-description",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:metrics-description.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:metrics-description.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "metrics-description",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:metrics-description.value[x]",
      "path" : "Extension.extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Extension.extension:metrics-description.value[x]:valueString",
      "path" : "Extension.extension.value[x]",
      "sliceName" : "valueString",
      "short" : "Metrics Description",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Metrikbeschreibung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Metrics Description"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:sequencing-read-type",
      "path" : "Extension.extension",
      "sliceName" : "sequencing-read-type",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:sequencing-read-type.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:sequencing-read-type.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "sequencing-read-type",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:sequencing-read-type.value[x]",
      "path" : "Extension.extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Extension.extension:sequencing-read-type.value[x]:valueCodeableConcept",
      "path" : "Extension.extension.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Sequencing Read Type",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Sequenzier-Lesetyp"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Sequencing Read Type"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:gap-statistics",
      "path" : "Extension.extension",
      "sliceName" : "gap-statistics",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:gap-statistics.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:gap-statistics.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "gap-statistics",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:gap-statistics.value[x]",
      "path" : "Extension.extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Extension.extension:gap-statistics.value[x]:valueQuantity",
      "path" : "Extension.extension.value[x]",
      "sliceName" : "valueQuantity",
      "short" : "Gap Statistics",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Lueckenstatistik"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Gap Statistics"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-genomic-study-analysis-qc"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
