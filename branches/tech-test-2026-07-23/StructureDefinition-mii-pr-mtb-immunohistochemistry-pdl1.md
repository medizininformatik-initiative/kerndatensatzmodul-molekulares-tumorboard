# MII PR MTB Immunohistochemistry - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB Immunohistochemistry**

## Resource Profile: MII PR MTB Immunohistochemistry 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-pdl1 | *Version*:2026.0.1 |
| Active as of 2026-07-23 | *Computable Name*:MII_PR_MTB_Immunohistochemistry_PDL1 |

 
Immunhistorchemistry report 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-molekulares-tumorboard|current/StructureDefinition/StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.csv), [Excel](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.xlsx), [Schematron](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-immunohistochemistry-pdl1",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry-pdl1",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Immunohistochemistry_PDL1",
  "title" : "MII PR MTB Immunohistochemistry",
  "status" : "active",
  "date" : "2026-07-23T12:42:46+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Immunhistorchemistry report",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "short" : "Probe",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Probe"
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
            "valueString" : "Specimen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Probe",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Probe"
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
            "valueString" : "Specimen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "description" : "Immunohistochemische Ergebnisse",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:tps-score",
      "path" : "Observation.component",
      "sliceName" : "tps-score",
      "short" : "TPS-Score",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TPS-Score"
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
            "valueString" : "TPS Score"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Tumor Proportion Score (TPS) - Score für PD-L1-Expression in Tumorzellen. Der TPS ist der Anteil der PD-L1-positiven Tumorzellen im Verhältnis zu den Gesamtzellen. Der TPS wird in Prozent angegeben. Ein TPS von 1% oder mehr gilt als positiv.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumor Proportion Score - TPS - Score fuer PD-L1-Expression in Tumorzellen. Der TPS ist der Anteil der PD-L1-positiven Tumorzellen im Verhaeltnis zu den Gesamtzellen. Der TPS wird in Prozent angegeben. Ein TPS von 1 Prozent oder mehr gilt als positiv."
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
            "valueString" : "Tumor Proportion Score - TPS - Score for PD-L1 expression in tumor cells. The TPS is the proportion of PD-L1-positive tumor cells relative to total cells. TPS is expressed as a percentage. A TPS of 1 percent or more is considered positive."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tps-score.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
          "code" : "C184941",
          "display" : "PD-L1 Tumor Proportion Score"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tps-score.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:tps-score.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tps-score.interpretation",
      "path" : "Observation.component.interpretation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cps-score",
      "path" : "Observation.component",
      "sliceName" : "cps-score",
      "short" : "CPS-Score",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "CPS-Score"
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
            "valueString" : "CPS Score"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Combined Positive Score (CPS) - Score für PD-L1-Expression in Tumorzellen und Immunzellen. Der CPS ist der Anteil der PD-L1-positiven Tumorzellen und Immunzellen im Verhältnis zu den Gesamtzellen. Der CPS wird in Prozent angegeben. Ein CPS von 1% oder mehr gilt als positiv.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Combined Positive Score - CPS - Score fuer PD-L1-Expression in Tumorzellen und Immunzellen. Der CPS ist der Anteil der PD-L1-positiven Tumorzellen und Immunzellen im Verhaeltnis zu den Gesamtzellen. Der CPS wird in Prozent angegeben. Ein CPS von 1 Prozent oder mehr gilt als positiv."
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
            "valueString" : "Combined Positive Score - CPS - Score for PD-L1 expression in tumor cells and immune cells. The CPS is the proportion of PD-L1-positive tumor cells and immune cells relative to total cells. CPS is expressed as a percentage. A CPS of 1 percent or more is considered positive."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cps-score.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
          "code" : "C176582",
          "display" : "PD-L1 Combined Positive Score"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cps-score.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:cps-score.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cps-score.interpretation",
      "path" : "Observation.component.interpretation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ics-score",
      "path" : "Observation.component",
      "sliceName" : "ics-score",
      "short" : "ICS-Score",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ICS-Score"
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
            "valueString" : "ICS Score"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Immune Cell Score (ICS) - Score für PD-L1-Expression in Immunzellen. Der ICS ist der Anteil der PD-L1-positiven Immunzellen im Verhältnis zu den Gesamtzellen. Der ICS wird in Prozent angegeben. Ein ICS von 1% oder mehr gilt als positiv.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Immune Cell Score - ICS - Score fuer PD-L1-Expression in Immunzellen. Der ICS ist der Anteil der PD-L1-positiven Immunzellen im Verhaeltnis zu den Gesamtzellen. Der ICS wird in Prozent angegeben. Ein ICS von 1 Prozent oder mehr gilt als positiv."
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
            "valueString" : "Immune Cell Score - ICS - Score for PD-L1 expression in immune cells. The ICS is the proportion of PD-L1-positive immune cells relative to total cells. ICS is expressed as a percentage. An ICS of 1 percent or more is considered positive."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ics-score.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
          "code" : "C199175",
          "display" : "Cells.programmed cell death ligand 1/Viable tumor cells in Tissue by Immune stain"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ics-score.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:ics-score.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ics-score.interpretation",
      "path" : "Observation.component.interpretation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tc-score",
      "path" : "Observation.component",
      "sliceName" : "tc-score",
      "short" : "TC-Score / TPS-Score",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TC-Score / TPS-Score"
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
            "valueString" : "TC Score / TPS Score"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Tumor Cell Score (TC-Score) - Score für PD-L1-Expression in Tumorzellen. Der TC-Score ist der Anteil der PD-L1-positiven Tumorzellen im Verhältnis zu den Gesamtzellen. Der TC-Score wird in Prozent angegeben. Ein TC-Score von 1% oder mehr gilt als positiv.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumor Cell Score - TC-Score - Score fuer PD-L1-Expression in Tumorzellen. Der TC-Score ist der Anteil der PD-L1-positiven Tumorzellen im Verhaeltnis zu den Gesamtzellen. Der TC-Score wird in Prozent angegeben. Ein TC-Score von 1 Prozent oder mehr gilt als positiv."
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
            "valueString" : "Tumor Cell Score - TC-Score - Score for PD-L1 expression in tumor cells. The TC-Score is the proportion of PD-L1-positive tumor cells relative to total cells. TC-Score is expressed as a percentage. A TC-Score of 1 percent or more is considered positive."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tc-score.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "83053-9",
          "display" : "Cells.programmed cell death ligand 1/Viable tumor cells in Tissue by Immune stain"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tc-score.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:tc-score.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tc-score.interpretation",
      "path" : "Observation.component.interpretation",
      "mustSupport" : true
    }]
  }
}

```
